from django.conf.urls import patterns, url
from main import views
from django.views.generic import  RedirectView

urlpatterns = patterns('',
    url(r'^$', RedirectView.as_view(url='/home_user/')),
)