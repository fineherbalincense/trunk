require 'cgi'
require 'time'

class SimpleRSS
  VERSION = "1.1"
  
	attr_reader :items, :source
	alias :entries :items

	@@feed_tags = [
		:id,
		:title, :subtitle, :link,
		:description, 
		:author, :webMaster, :managingEditor, :contributor,
		:pubDate, :lastBuildDate, :updated, :'dc:date',
		:generator, :language, :docs, :cloud,
		:ttl, :skipHours, :skipDays,
		:image, :logo, :icon, :rating,
		:rights, :copyright,
		:textInput, :'feedburner:browserFriendly',
		:'itunes:author', :'itunes:category'
	]

	@@item_tags = [
		:id,
		:title, :link,
		:author, :contributor,
		:description, :summary, :content, :'content:encoded', :comments,
		:'wfw:commentRSS',
		:the_tags,
		:seo_title,
		:pubDate, :published, :updated, :expirationDate, :modified, :'dc:date',
		:category, :guid,
		:'trackback:ping', :'trackback:about',
		:'dc:creator', :'dc:title', :'dc:subject', :'dc:rights', :'dc:publisher'
	]

	def initialize(source)
		@source = source.respond_to?(:read) ? source.read : source.to_s
		@items = Array.new

		parse
	end

	def channel() self end
	alias :feed :channel

	class << self
		def feed_tags
			@@feed_tags
		end
		def feed_tags=(ft)
			@@feed_tags = ft
		end

		def item_tags
			@@item_tags
		end
		def item_tags=(it)
			@@item_tags = it
		end

		# The strict attribute is for compatibility with Ruby's standard RSS parser
		def parse(source, do_validate=true, ignore_unknown_element=true, parser_class=false)
			new source
		end
	end

	private

	def parse
	  raise SimpleRSSError, "Poorly formatted feed" unless @source =~ %r{<(channel|feed).*?>.*?</(channel|feed)>}mi
	  
		# Feed's title and link
		feed_content = $1 if @source =~ %r{(.*?)<(rss:|atom:)?(item|entry).*?>.*?</(rss:|atom:)?(item|entry)>}mi
		
		@@feed_tags.each do |tag|
			if feed_content && feed_content =~ %r{<(rss:|atom:)?#{tag}(.*?)>(.*?)</(rss:|atom:)?#{tag}>}mi
				nil
			elsif feed_content && feed_content =~ %r{<(rss:|atom:)?#{tag}(.*?)\/\s*>}mi
				nil
			elsif @source =~ %r{<(rss:|atom:)?#{tag}(.*?)>(.*?)</(rss:|atom:)?#{tag}>}mi
				nil
			elsif @source =~ %r{<(rss:|atom:)?#{tag}(.*?)\/\s*>}mi
				nil
			end
			
			if $2 || $3
        tag_cleaned = clean_tag(tag)
        eval %{ @#{ tag_cleaned } = clean_content(tag, $2, $3) }
        self.class.class_eval %{ attr_reader :#{ tag_cleaned } }
			end
		end

		# RSS items' title, link, and description
		@source.scan( %r{<(rss:|atom:)?(item|entry)([\s][^>]*)?>(.*?)</(rss:|atom:)?(item|entry)>}mi ) do |match|
			item = Hash.new
			@@item_tags.each do |tag|
				if match[3] =~ %r{<(rss:|atom:)?#{tag}(.*?)>(.*?)</(rss:|atom:)?#{tag}>}mi
					nil
				elsif match[3] =~ %r{<(rss:|atom:)?#{tag}(.*?)/\s*>}mi
					nil
				end
				item[clean_tag(tag)] = clean_content(tag, $2, $3) if $2 || $3
			end
			def item.method_missing(name, *args) self[name] end
			@items << item
		end

	end

	def clean_content(tag, attrs, content)
		content = content.to_s
		case tag
			when :pubDate, :lastBuildDate, :published, :updated, :expirationDate, :modified, :'dc:date'
				Time.parse(content) rescue unescape(content)
			when :author, :contributor, :skipHours, :skipDays
				unescape(content.gsub(/<.*?>/,''))
			else
				content.empty? && "#{attrs} " =~ /href=['"]?([^'"]*)['" ]/mi ? $1.strip : unescape(content)
		end
	end

	def clean_tag(tag)
		tag.to_s.gsub(':','_').intern
	end
	
	def unescape(content)
		CGI.unescape(content).gsub(/(<!\[CDATA\[|\]\]>)/,'').strip
	end
end

class SimpleRSSError < StandardError
end
