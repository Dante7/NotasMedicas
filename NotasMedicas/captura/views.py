# Create your views here.
from captura.models import *
#from captura.forms import *
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
			a = RegEnt()
			a.usuario = username
			a.fecha_registro = fecha
			a.hora_registro = hora
			a.ip = ip
			a.tipo_registro = 'entrada'
			a.save()
			request.session['usuario'] = username
			request.session['staff'] = user.is_staff

			return HttpResponseRedirect('/menu')
		else:
		# Show an error page
			resultado = {'estado':'incorrecto','mensaje':'Sus datos no coinciden favor de verificarlos'}
			return render_to_response(template, resultado, context_instance=RequestContext(request))

	return render_to_response(template, context_instance=RequestContext(request))

@login_required(login_url='/')
def CapNota(request,folio=''):
	template = 'tbl1.html'
	if request.method=='POST':
		formulario = FrmNota(request.POST)
		if formulario.is_valid():
			formulario.save()
			resultado = {'form':formulario, 'msg':msg, 'folio': request.session['folio'], 'espe': request.session['espe']}
		else:
			resultado = {'form':formulario, 'msg':msg}
		return render_to_response(template, resultado, context_instance=RequestContext(request))
	else:
		formulario = FrmNota()
		pass
		resultado = {'form':formulario, 'msg':msg,'usuario': request.session['usuario']}
	
	return render_to_response(template, resultado, context_instance=RequestContext(request))