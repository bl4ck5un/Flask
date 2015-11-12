from django.conf.urls import url

import views

urlpatterns = [
    url(r'^$', views.list, name='blogs'),
    url(r'^(?P<slug>[\w-]+)/$', views.detail, name='blog body'),
]
