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

class FrmNota(ModelForm):
	"""Formulario de llenado de notas"""
	tipo_nota = forms.ChoiceField(choices=notas)
	tipo_nota.widget.attrs['class']='form-control'

	descripcion = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'3'}))

	hospital = forms.CharField()
	hospital.widget.attrs['class']='form-control'

	medico = forms.CharField()
	medico.widget.attrs['class']='form-control'

	nss = forms.CharField()
	nss.widget.attrs['class']='form-control'

	cama = forms.CharField()
	cama.widget.attrs['class']='form-control'

	fecha_hora = forms.DateField(widget=forms.DateInput(format=('%d-%m-%Y'),attrs={'class':'form-control','rows':'3'}))

	class Meta:
		model = Tbl1Nota