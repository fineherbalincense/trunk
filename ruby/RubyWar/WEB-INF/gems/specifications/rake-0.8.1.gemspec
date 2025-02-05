Gem::Specification.new do |s|
  s.name = %q{rake}
  s.version = "0.8.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Weirich"]
  s.date = %q{2007-12-26}
  s.default_executable = %q{rake}
  s.description = %q{Rake is a Make-like program implemented in Ruby. Tasks and dependencies are specified in standard Ruby syntax.}
  s.email = %q{jim@weirichhouse.org}
  s.executables = ["rake"]
  s.extra_rdoc_files = ["README", "MIT-LICENSE", "TODO", "CHANGES", "doc/glossary.rdoc", "doc/proto_rake.rdoc", "doc/rakefile.rdoc", "doc/rational.rdoc", "doc/release_notes/rake-0.4.14.rdoc", "doc/release_notes/rake-0.4.15.rdoc", "doc/release_notes/rake-0.5.0.rdoc", "doc/release_notes/rake-0.5.3.rdoc", "doc/release_notes/rake-0.5.4.rdoc", "doc/release_notes/rake-0.6.0.rdoc", "doc/release_notes/rake-0.7.0.rdoc", "doc/release_notes/rake-0.7.1.rdoc", "doc/release_notes/rake-0.7.2.rdoc", "doc/release_notes/rake-0.7.3.rdoc"]
  s.files = ["install.rb", "CHANGES", "CVSROOT", "MIT-LICENSE", "Rakefile", "README", "TODO", "bin/rake", "lib/rake.rb", "lib/rake/classic_namespace.rb", "lib/rake/clean.rb", "lib/rake/gempackagetask.rb", "lib/rake/packagetask.rb", "lib/rake/rake_test_loader.rb", "lib/rake/rdoctask.rb", "lib/rake/ruby182_test_unit_fix.rb", "lib/rake/runtest.rb", "lib/rake/tasklib.rb", "lib/rake/testtask.rb", "lib/rake/contrib/compositepublisher.rb", "lib/rake/contrib/ftptools.rb", "lib/rake/contrib/publisher.rb", "lib/rake/contrib/rubyforgepublisher.rb", "lib/rake/contrib/sshpublisher.rb", "lib/rake/contrib/sys.rb", "lib/rake/loaders/makefile.rb", "test/capture_stdout.rb", "test/filecreation.rb", "test/functional.rb", "test/rake_test_setup.rb", "test/reqfile.rb", "test/reqfile2.rb", "test/session_functional.rb", "test/shellcommand.rb", "test/test_application.rb", "test/test_clean.rb", "test/test_definitions.rb", "test/test_earlytime.rb", "test/test_extension.rb", "test/test_file_creation_task.rb", "test/test_file_task.rb", "test/test_filelist.rb", "test/test_fileutils.rb", "test/test_ftp.rb", "test/test_invocation_chain.rb", "test/test_makefile_loader.rb", "test/test_multitask.rb", "test/test_namespace.rb", "test/test_package_task.rb", "test/test_pathmap.rb", "test/test_rake.rb", "test/test_require.rb", "test/test_rules.rb", "test/test_task_arguments.rb", "test/test_task_manager.rb", "test/test_tasks.rb", "test/test_test_task.rb", "test/test_top_level_functions.rb", "test/contrib/testsys.rb", "test/data/rakelib/test1.rb", "test/data/rbext/rakefile.rb", "test/data/sample.mf", "test/data/imports/deps.mf", "test/data/chains/Rakefile", "test/data/default/Rakefile", "test/data/dryrun/Rakefile", "test/data/file_creation_task/Rakefile", "test/data/imports/Rakefile", "test/data/multidesc/Rakefile", "test/data/namespace/Rakefile", "test/data/statusreturn/Rakefile", "test/data/unittest/Rakefile", "doc/example", "doc/glossary.rdoc", "doc/jamis.rb", "doc/proto_rake.rdoc", "doc/rake.1.gz", "doc/rakefile.rdoc", "doc/rational.rdoc", "doc/release_notes", "doc/example/a.c", "doc/example/b.c", "doc/example/main.c", "doc/example/Rakefile1", "doc/example/Rakefile2", "doc/release_notes/rake-0.4.14.rdoc", "doc/release_notes/rake-0.4.15.rdoc", "doc/release_notes/rake-0.5.0.rdoc", "doc/release_notes/rake-0.5.3.rdoc", "doc/release_notes/rake-0.5.4.rdoc", "doc/release_notes/rake-0.6.0.rdoc", "doc/release_notes/rake-0.7.0.rdoc", "doc/release_notes/rake-0.7.1.rdoc", "doc/release_notes/rake-0.7.2.rdoc", "doc/release_notes/rake-0.7.3.rdoc"]
  s.has_rdoc = true
  s.homepage = %q{http://rake.rubyforge.org}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README", "--title", "Rake -- Ruby Make"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rake}
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{Ruby based make-like utility.}
end
