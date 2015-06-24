#encoding:utf-8

from django.forms import ModelForm
from django.forms.widgets import HiddenInput, RadioSelect, DateInput
from django.contrib.admin.widgets import AdminDateWidget
from django import forms
from captura.models import *

input_formats = ['%Y-%m-%d',
				'%y-%m-%d',
				'%m/%d/%Y',
				'%m/%d/%y',
				'%d/%m/%Y',
				'%d/%m/%y']

sexo = (
			('',''),
			('Femenino','Femenino'),
			('Masculino','Masculino'),
)

motivos = (
			('',''),
			('',''),
			('',''),
)

estados = (
			('',''),
			('Aguascalientes','Aguascalientes'),
			('Baja California','Baja California'),
			('Baja California Sur','Baja California Sur'),
			('Campeche','Campeche'),
			('Chiapas','Chiapas'),
			('Chihuahua','Chihuahua'),
			('Coahuila','Coahuila'),
			('Colima','Colima'),
			('Distrito Federal','Distrito Federal'),
			('Durango','Durango'),
			('Estado de México','Estado de México'),
			('Guanajuato','Guanajuato'),
			('Guerrero','Guerrero'),
			('Hidalgo','Hidalgo'),
			('Jalisco','Jalisco'),
			('Michoacán','Michoacán'),
			('Morelos','Morelos'),
			('Nayarit','Nayarit'),
			('Nuevo León','Nuevo León'),
			('Oaxaca','Oaxaca'),
			('Puebla','Puebla'),
			('Querétaro','Querétaro'),
			('Quintana Roo','Quintana Roo'),
			('San Luis Potosí','San Luis Potosí'),
			('Sinaloa','Sinaloa'),
			('Sonora','Sonora'),
			('Tabasco','Tabasco'),
			('Tamaulipas','Tamaulipas'),
			('Tlaxcala','Tlaxcala'),
			('Veracruz','Veracruz'),
			('Yucatán','Yucatán'),
			('Zacatecas','Zacatecas')
)

#Inician los formularios de la historia clinica

class FrmHcIdentificacion(ModelForm):
	"""Formulario de llenado de notas"""
	def __init__(self, *args, **kwargs):
		super(FrmHcIdentificacion, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['placeholder'] = 'Ingrese el nss'
				pass		
	class Meta:
		model = HcIdentificacion
	fecha_nacimiento = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	sexo = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control'}),choices=sexo)
	estado = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control'}),choices=estados)

class FrmHcAnt(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmHcAnt, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = HcAnt

	antecedentes_heredofamiliares = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))
	antecedentes_personales_no_patologicos = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))
	antecedentes_personales_patologicos = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))

class FrmHcPatologia(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmHcPatologia, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			self.fields[myField].widget.attrs['readonly'] = True
	class Meta:
		model = HcPatologia

class FrmHcExploracion(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmHcExploracion, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = HcExploracion

class FrmHcLabGab(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmHcLabGab, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = HcLabGab

class FrmHcDiag(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmHcDiag, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = HcDiag

#Terminan los formularios de la historia clinica

#Inician los formularios de la nota de ingreso

class FrmIngresoIdentificacion(ModelForm):
	"""Formulario de llenado de notas"""
	def __init__(self, *args, **kwargs):
		super(FrmIngresoIdentificacion, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['placeholder'] = 'Ingrese el nss'
				pass		
	class Meta:
		model = IngresoIdentificacion
	fecha_nacimiento = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	sexo = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control'}),choices=sexo)
	estado = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control'}),choices=estados)

class FrmIngresoAnt(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	
	class Meta:
		model = IngresoAnt

	def __init__(self, *args, **kwargs):
		super(FrmIngresoAnt, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass


	antecedentes_heredofamiliares = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))
	antecedentes_personales_no_patologicos = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))
	antecedentes_personales_patologicos = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'5'}))

class FrmIngresoPatologia(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmIngresoPatologia, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			self.fields[myField].widget.attrs['readonly'] = True
	class Meta:
		model = IngresoPatologia

class FrmIngresoExploracion(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmIngresoExploracion, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = IngresoExploracion

class FrmIngresoLabGab(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmIngresoLabGab, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = IngresoLabGab

class FrmIngresoDiag(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmIngresoDiag, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = IngresoDiag

#Terminan los formularios de la nota de ingreso

class FrmEvolucion(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmEvolucion, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	class Meta:
		model = TblEvolucion

class FrmRevision(ModelForm):
	"""Formulario de llenado de notas"""
	#fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmRevision, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass

	class Meta:
		model = TblRevision

class FrmInter(ModelForm):
	"""Formulario de llenado de notas"""
	fecha = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmInter, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass

	class Meta:
		model = TblInter


class FrmEgreso(ModelForm):
	"""Formulario de llenado de notas"""
	fecha_ingreso = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	fecha_egreso = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)
	def __init__(self, *args, **kwargs):
		super(FrmEgreso, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass

	motivo_egreso = forms.ChoiceField(widget=forms.Select(attrs={'class':'form-control'}),choices=motivos)

	class Meta:
		model = TblEgreso


class FrmIndicaciones(ModelForm):
	"""Formulario de llenado de notas"""
	def __init__(self, *args, **kwargs):
		super(FrmIndicaciones, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass
	

	class Meta:
		model = TblIndicaciones