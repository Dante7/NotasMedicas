from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'NotasMedicas.views.home', name='home'),
    # url(r'^NotasMedicas/', include('NotasMedicas.foo.urls')),

    url(r'^$', 'captura.views.Login'),
    url(r'^nota/', 'captura.views.CapNota'),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
