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
    url(r'^formatos/(?P<nss>\w+)/(?P<cama>\w+)/$', 'captura.views.Formatos'),

    #url(r'^apache/', 'captura.views.Apache'),

    #Inician url's de historia clinica
    url(r'^HCantecedentes/(?P<nss>\w+)/$', 'captura.views.CapAntHC'),
    url(r'^HCpatologia/(?P<nss>\w+)/$', 'captura.views.CapPatologiaHC'),
    url(r'^HCexploracion/(?P<nss>\w+)/$', 'captura.views.CapExploracionHC'),
    url(r'^HClabgab/(?P<nss>\w+)/$', 'captura.views.CapLabGAbHC'),
    url(r'^CHdiagnostico/(?P<nss>\w+)/$', 'captura.views.CapDiagHC'),
    #Terminan url's de historia clinica

    #Inician url's de ingreso
    url(r'^identificacion/(?P<cama>\w+)/$', 'captura.views.CapIdentificacion'),
    url(r'^antecedentes/(?P<nss>\w+)/$', 'captura.views.CapAnt'),
    url(r'^patologia/(?P<nss>\w+)/$', 'captura.views.CapPatologia'),
    url(r'^exploracion/(?P<nss>\w+)/$', 'captura.views.CapExploracion'),
    url(r'^labgab/(?P<nss>\w+)/$', 'captura.views.CapLabGAb'),
    url(r'^diagnostico/(?P<nss>\w+)/$', 'captura.views.CapDiag'),
    #Terminan url's de ingreso

    url(r'^evolucion/(?P<nss>\w+)/$', 'captura.views.CapEvolucion'),
    url(r'^revision/(?P<nss>\w+)/$', 'captura.views.CapRevision'),
    url(r'^egreso/(?P<nss>\w+)/$', 'captura.views.CapEgreso'),
    #url(r'^inter/(?P<nss>\w+)/$', 'captura.views.CapInter'),
    url(r'^indicaciones/(?P<nss>\w+)/$', 'captura.views.CapIndi'),


    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
