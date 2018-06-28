from django.conf.urls import include, url
from django.contrib import admin
from assets import views

urlpatterns = [
	url(r'^idc/$', views.idc_list, name='idc_list'),
	url(r'^host/$', views.host_list, name='host_list'),
	url(r'^projectlist/$', views.ProjectList, name='ProjectList'),
	url(r'^projectupdata/$', views.ProjectUpdata, name='ProjectUpdata'),
	url(r'^projectlog/$', views.ProjectLog, name='ProjectLog'),
]
