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
	request.session['nss'] = nss
	template = 'formatos.html'
	datos = EstructuraEch.objects.all()
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	rev = TblRevision.objects.filter(nss=nss)
	evo = TblEvolucion.objects.filter(nss=nss)
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
		if request.session['nss']:
			instancia = HcIdentificacion.objects.filter(nss=request.session['nss'])
			formulario = FrmIngresoIdentificacion(instance=instancia)
		else:
			formulario = FrmIngresoIdentificacion()
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapAnt(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/patologia/'+nss
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	try:
		instancia = IngresoAnt.objects.get(nss=nss)
	except:
		instancia = False
		
	if request.method=='POST':
		if instancia:
			formulario = FrmIngresoAnt(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmIngresoAnt(request.POST)
			formulario.fields["nss"].initial = nss
			pass
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmIngresoAnt(instance=instancia)
			next = True
		else:
			formulario = FrmIngresoAnt()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapPatologia(request,nss):
	template = 'ingreso_dajax.html'
	next = False
	url = '/exploracion/'+nss
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	try:
		instancia = IngresoPatologia.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmIngresoPatologia(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmIngresoPatologia(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:		
		if instancia:
			formulario = FrmIngresoPatologia(instance=instancia)
			next = True
		else:
			formulario = FrmIngresoPatologia()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapExploracion(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/labgab/'+nss
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	try:
		instancia = IngresoExploracion.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmIngresoExploracion(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmIngresoExploracion(request.POST)
			formulario.fields["nss"].initial = nss
			pass
		
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmIngresoExploracion(instance=instancia)
			next = True
		else:
			formulario = FrmIngresoExploracion()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapLabGAb(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/diagnostico/'+nss
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	try:
		instancia = IngresoLabGab.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmIngresoLabGab(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmIngresoLabGab(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmIngresoLabGab(instance=instancia)
			next = True
		else:
			formulario = FrmIngresoExploracion()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapDiag(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/formatos/'+nss+'/'+request.session['cama']
	ingreso = IngresoIdentificacion.objects.filter(nss=nss)
	try:
		instancia = IngresoDiag.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmIngresoDiag(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmIngresoDiag(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmIngresoDiag(instance=instancia)
			next = True
		else:
			formulario = FrmIngresoDiag()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

# Historia clinica

@login_required(login_url='/')
def CapAntHC(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/patologia/'+nss
	ingreso = HcIdentificacion.objects.filter(nss=nss)
	try:
		instancia = HcAnt.objects.get(nss=nss)
	except:
		instancia = False
		
	if request.method=='POST':
		if instancia:
			formulario = FrmHcAnt(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmHcAnt(request.POST)
			formulario.fields["nss"].initial = nss
			pass
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmHcAnt(instance=instancia)
			next = True
		else:
			formulario = FrmHcAnt()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapPatologiaHC(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/exploracion/'+nss
	ingreso = HcIdentificacion.objects.filter(nss=nss)
	try:
		instancia = HcPatologia.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmHcPatologia(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmHcPatologia(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:		
		if instancia:
			formulario = FrmHcPatologia(instance=instancia)
			next = True
		else:
			formulario = FrmHcPatologia()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapExploracionHC(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/labgab/'+nss
	ingreso = HcIdentificacion.objects.filter(nss=nss)
	try:
		instancia = HcExploracion.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmHcExploracion(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmHcExploracion(request.POST)
			formulario.fields["nss"].initial = nss
			pass
		
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmHcExploracion(instance=instancia)
			next = True
		else:
			formulario = FrmHcExploracion()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapLabGAbHC(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/diagnostico/'+nss
	ingreso = HcIdentificacion.objects.filter(nss=nss)
	try:
		instancia = HcLabGab.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmHcLabGab(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmHcLabGab(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmHcLabGab(instance=instancia)
			next = True
		else:
			formulario = FrmHcExploracion()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapDiagHC(request,nss):
	template = 'ingreso.html'
	next = False
	url = '/formatos/'+nss+'/'+request.session['cama']
	ingreso = HcIdentificacion.objects.filter(nss=nss)
	try:
		instancia = HcDiag.objects.get(nss=nss)
	except:
		instancia = False
	if request.method=='POST':
		if instancia:
			formulario = FrmHcDiag(request.POST,instance=instancia)
			next = True
		else:
			formulario = FrmHcDiag(request.POST)
			formulario.fields["nss"].initial = nss
			pass

		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
			return HttpResponseRedirect(url)
		else:
			resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		if instancia:
			formulario = FrmHcDiag(instance=instancia)
			next = True
		else:
			formulario = FrmHcDiag()
			formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario,'next':next,'url':url,'ingreso':ingreso}
	
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

@login_required(login_url='/')
def CapInter(request,nss):
	template = 'rev.html'
	if request.method=='POST':
		formulario = FrmInter(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmInter()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapEgreso(request,nss):
	template = 'rev.html'
	if request.method=='POST':
		formulario = FrmEgreso(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmEgreso()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))


@login_required(login_url='/')
def CapIndi(request,nss):
	template = 'rev.html'
	if request.method=='POST':
		formulario = FrmIndicaciones(request.POST)
		formulario.fields["nss"].initial = nss
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario}
			return HttpResponseRedirect('/formatos/'+nss)
		else:
			resultado = {'form':formulario}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmIndicaciones()
		formulario.fields["nss"].initial = nss
		pass
		resultado = {'form':formulario}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))

