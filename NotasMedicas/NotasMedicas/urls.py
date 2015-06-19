from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'NotasMedicas.views.home', name='home'),
    # url(r'^NotasMedicas/', include('NotasMedicas.foo.urls')),

    url(r'^$', 'captura.views.Login'),
    url(r'^camas/', 'captura.views.Camas'),
    url(r'^formatos/(?P<nss>\w+)/$', 'captura.views.Formatos'),

    #url(r'^apache/', 'captura.views.Apache'),

    #Inician url's de ingreso
    url(r'^identificacion/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^antecedentes/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^patologia/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^exploracion/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^labgab/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^diagnostico/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    #Terminan url's de ingreso

    url(r'^evolucion/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^revision/(?P<nss>\w+)/$', 'captura.views.CapRevision'),
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
