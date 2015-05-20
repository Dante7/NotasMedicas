from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'NotasMedicas.views.home', name='home'),
    # url(r'^NotasMedicas/', include('NotasMedicas.foo.urls')),

    url(r'^$', 'captura.views.Login'),
    url(r'^menu/', 'captura.views.Menu'),

    url(r'^ingreso/', 'captura.views.CapIngreso'),
    url(r'^evolucion/', 'captura.views.CapNota'),
    url(r'^gravedad/', 'captura.views.CapNota'),
    url(r'^alta/', 'captura.views.CapAlta'),
    url(r'^defuncion/', 'captura.views.CapDefuncion'),


    url(r'^busqueda/', 'captura.views.Busqueda'),
    url(r'^nota/', 'captura.views.CapNota'),
    url(r'^paciente/', 'captura.views.CapPaciente'),
    url(r'^ingreso/', 'captura.views.CapIngreso'),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
