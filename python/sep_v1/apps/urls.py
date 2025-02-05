from django.conf.urls.defaults import *

urlpatterns = patterns('',
    # Example:
    # (r'^sap_expert_pool/', include('sap_expert_pool.foo.urls')),
    
    (r'^$', 'apps.expert.views.index'),
    (r'^create/$', 'apps.expert.views.create'),
    (r'^search/$', 'apps.expert.views.search'), 
    (r'^show/(?P<expert_key>[^\.^/]+)/$', 'apps.expert.views.show'),
    (r'^edit/(?P<expert_key>[^\.^/]+)/$', 'apps.expert.views.edit'),
    #(r'^search/$', 'apps.expert.views.search_result'), 
    
    

    # Uncomment this for admin:
    # (r'^admin/', include('django.contrib.admin.urls')),
)