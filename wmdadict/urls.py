from django.conf.urls import url

from . import views

urlpatterns = [
    # # /
    # url(r'^$', views.index, name='index'),
    # /dict/
    url(r'^dict/$', views.dictionary_list, name='dictionary_list'),
    # /dict/5/
    url(r'^dict/(?P<field_id>[0-9]+)/$', views.dictionary_detail, name='dictionary_detail'),
    # /emdis/fields/
    url(r'^emdis/fields/$', views.emdis_list, name='emdis_list'),
    # /emdis/field/5/
    url(r'^emdis/field/(?P<field_id>[0-9]+)/$', views.emdis_detail, name='emdis_detail'),
    # /emdis/messages/
    url(r'^emdis/messages/$', views.emdis_msg_list, name='emdis_msg_list'),
    # /emdis/message/5/
    url(r'^emdis/message/(?P<msg_id>[0-9]+)/$', views.emdis_msg_detail, name='emdis_msg_detail'),
]
