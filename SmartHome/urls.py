from django.conf.urls import patterns, include, url
from django.contrib import admin
from main import views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'SmartHome.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^main/', include('main.urls')),
    url(r'^/login/', 'django.contrib.auth.views.login', {'template_name':'login.html'}),
    url(r'^', views.in)
    #url(r'^', 'django.contrib.auth.views.login', {'template_name':'login.html'}),
)
