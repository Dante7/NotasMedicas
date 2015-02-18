#encoding:utf-8

from django.forms import ModelForm
from django.forms.widgets import HiddenInput, RadioSelect
from django.contrib.admin.widgets import AdminDateWidget
from django import forms
from captura.models import *

notas = (
			('',''),
			('Ingreso','Ingreso'),
			('Alta','Alta'),
			('Gravedad','Gravedad'),
			('Defuncion','Defuncion'),
)

class FrmNota(ModelForm):
	"""Formulario de llenado de notas"""
	tipo_nota = forms.ChoiceField(label="",choices=notas, widget=forms.RadioSelect(attrs={'class':'form-control'}))
	descripcion = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'3'}))
	hospital = forms.CharField()
	medico = forms.CharField()
	nss = forms.CharField()
	cama = forms.CharField()
	fecha_hora = forms.DateField()
	class Meta:
		model = Tbl1Nota