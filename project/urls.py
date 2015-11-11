from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'project.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^$', 'project.views.index'),
    url(r'^blog$', include('blogging.urls')),
    url(r'^about$', 'project.views.about'),
    url(r'^admin/', include(admin.site.urls)),
)
