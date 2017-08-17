from django.conf.urls import url

from . import views

urlpatterns = [
    # /
    url(r'^$', views.index, name='index'),
    # /dict/
    url(r'^dict/$', views.dictionary_list, name='dictionary_list'),
    # /dict/5/
    url(r'^dict/(?P<field_id>[0-9]+)/$', views.dictionary_detail, name='dictionary_detail'),
    # /emdis/
    url(r'^emdis/$', views.emdis_list, name='emdis_list'),
    # /emdis/5/
    url(r'^emdis/(?P<field_id>[0-9]+)/$', views.emdis_detail, name='emdis_detail'),
]
