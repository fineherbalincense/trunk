from django.conf.urls.defaults import *

urlpatterns = patterns('',
    # Example:
    # (r'^sap_expert_pool/', include('sap_expert_pool.foo.urls')),
    
    (r'^$', 'apps.expert.views.index'),
    (r'^create/$', 'apps.expert.views.create'),
    (r'^expert/(?P<expert_key>[^\.^/]+)/$', 'apps.expert.views.expert_detail'),
    
    

    # Uncomment this for admin:
    # (r'^admin/', include('django.contrib.admin.urls')),
)