# Create your views here.
from captura.models import *
from captura.forms import *
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext

from django.views.decorators.csrf import csrf_protect
from django.contrib import auth
from django.contrib.auth.decorators import login_required
import time

import json

def Login(request):
	template = 'login.html'
	reultado = {}

	if request.method=='POST':
		username = request.POST['usuario']
		password = request.POST['password']
		ip = request.META.get('REMOTE_ADDR')
		user = auth.authenticate(username=username, password=password)

		if user is not None and user.is_active:
		# Correct password, and the user is marked "active"
			auth.login(request, user)
			# Redirect to a success page.
			#resultado = {'estado':'correcto','mensaje':'Su registro fue correcto'}
			#Guarda entrada
			fecha = time.strftime("%d/%m/%Y")
			hora = time.strftime("%H:%M:%S")

			resultado = {'estado':'correcto','mensaje':'Entrada registrada'} 
			request.session['usuario'] = username
			request.session['staff'] = user.is_staff

			return HttpResponseRedirect('/camas')
		else:
		# Show an error page
			resultado = {'estado':'incorrecto','mensaje':'Sus datos no coinciden favor de verificarlos'}
			return render_to_response(template, resultado, context_instance=RequestContext(request))

	return render_to_response(template, context_instance=RequestContext(request))

@login_required(login_url='/')
def Camas(request):
	template = 'camas.html'
	nombres = []
	seccion = CamaPaciente.objects.order_by().values('seccion').distinct()
	camas = CamaPaciente.objects.all()
	nom = CamaPaciente.objects.filter(nss__isnull=False).order_by('nombre')
	for row in nom:
		nombre = row.nombre
		nombres.append(nombre)
		pass
	#print nombres
	n = CamaPaciente.objects.filter(nss__isnull=False).count()
	resultado = {'seccion':seccion, 'camas':camas, 'nombres':nombres, 'n':n}
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def Formatos(request, nss, cama):
	request.session['cama'] = cama
	print cama
	template = 'formatos.html'
	datos = EstructuraEch.objects.all()
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	rev = Tbl2Revision.objects.filter(nss=nss)
	evo = Tbl2Evolucion.objects.filter(nss=nss)
	resultado = {'datos':datos, 'ingreso':ingreso,'cama':request.session['cama']}
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapIdentificacion(request,cama):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoIdentificacion(request.POST)
		if formulario.is_valid():
			nss = request.POST['nss']
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoIdentificacion()
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapAnt(request,nss):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoAnt(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/patologia/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoAnt()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapPatologia(request,nss):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoPatologia(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/exploracion/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoPatologia()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapExploracion(request,nss):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoExploracion(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/labgab/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoExploracion()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapLabGAb(request,nss):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoLabGAb(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/diagnostico/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoLabGAb()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapDiag(request,nss):
	template = 'ingreso.html'
	if request.method=='POST':
		formulario = FrmIngresoDiag(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIngresoDiag()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapEvolucion(request,nss):
	template = 'evo.html'
	if request.method=='POST':
		formulario = FrmEvolucion(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmEvolucion()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapRevision(request,nss):
	template = 'rev.html'
	if request.method=='POST':
		formulario = FrmRevision(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmRevision()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))
