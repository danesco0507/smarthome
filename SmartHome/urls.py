from django.conf.urls import patterns, include, url
from django.contrib import admin
from main import views
from home_user import views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'SmartHome.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('main.urls')),
    url(r'^home_user/', include('home_user.urls')),
    url(r'^login/', 'django.contrib.auth.views.login', {'template_name':'login.html'}),

    #url(r'^', 'django.contrib.auth.views.login', {'template_name':'login.html'}),
)

urlpatterns += patterns('',
    (r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT}),
)