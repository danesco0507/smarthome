from django.conf.urls import patterns, url
from main import views


urlpatterns = patterns(
    '',
    url(r'^(?P<building_id>\d+)/sensors/$', views.sensors_list, name = 'sensors'),
    url(r'^/home_user/$', views.building_list, name = 'building_list'),
)
