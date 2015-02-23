#encoding:utf-8

from django.forms import ModelForm
from django.forms.widgets import HiddenInput, RadioSelect, DateInput
from django.contrib.admin.widgets import AdminDateWidget
from django import forms
from captura.models import *

notas = (
			('Ingreso','Ingreso'),
			('Alta','Alta'),
			('Gravedad','Gravedad'),
			('Defuncion','Defuncion'),
)

sexo = (
			('Femenino','Femenino'),
			('Masculino','Masculino'),
)

class FrmNota(ModelForm):
	"""Formulario de llenado de notas"""
	id_tbl1 = forms.CharField(widget=forms.HiddenInput())
	tipo_nota = forms.ChoiceField(choices=notas)
	tipo_nota.widget.attrs['class']='form-control'

	descripcion = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'2'}))

	hospital = forms.CharField()
	hospital.widget.attrs['class']='form-control'

	medico = forms.CharField()
	medico.widget.attrs['class']='form-control'

	cama = forms.CharField()
	cama.widget.attrs['class']='form-control'

	fecha_hora = forms.DateField(widget=forms.DateInput(format=('%d-%m-%Y'),attrs={'class':'form-control','rows':'3'}))

	class Meta:
		model = Tbl2Nota


class FrmPaciente(ModelForm):
	"""Formulario de llenado de datos de paciente"""	
	sexo = forms.ChoiceField(choices=sexo)
	sexo.widget.attrs['class']='form-control'

	edad = forms.CharField()
	edad.widget.attrs['class']='form-control'

	nombre = forms.CharField()
	nombre.widget.attrs['class']='form-control'

	nss = forms.CharField()
	nss.widget.attrs['class']='form-control'

	estado = forms.CharField()
	estado.widget.attrs['class']='form-control'

	escolaridad = forms.CharField()
	escolaridad.widget.attrs['class']='form-control'

	religion = forms.CharField()
	religion.widget.attrs['class']='form-control'

	ocupacion = forms.CharField()
	ocupacion.widget.attrs['class']='form-control'

	estado_civil = forms.CharField()
	estado_civil.widget.attrs['class']='form-control'

	tipo_interrogatorio = forms.CharField()
	tipo_interrogatorio.widget.attrs['class']='form-control'

	class Meta:
		model = Tbl1Paciente