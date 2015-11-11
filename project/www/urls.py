from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'www.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^$', 'www.views.index'),
    url(r'^blog$', include('blogging.urls')),
    url(r'^about$', 'www.views.about'),
    url(r'^admin/', include(admin.site.urls)),
)
