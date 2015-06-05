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

estados = (
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

class FrmPaciente(ModelForm):

	"""Formulario de llenado de datos de paciente"""	
	#id = forms.CharField(widget=forms.HiddenInput(), required=False)

	nss = forms.CharField(label="Numero de seguridad social")
	nss.widget.attrs['class']='form-control'

	sexo = forms.ChoiceField(choices=sexo)
	sexo.widget.attrs['class']='form-control'

	edad = forms.CharField()
	edad.widget.attrs['class']='form-control'

	fecha_nacimiento = forms.DateField(widget=forms.DateInput(attrs={'class':'form-control'}), input_formats=input_formats)

	nombre = forms.CharField()
	nombre.widget.attrs['class']='form-control'

	estado = forms.ChoiceField(choices=estados)
	estado.widget.attrs['class']='form-control'

	escolaridad = forms.CharField(required=False)
	escolaridad.widget.attrs['class']='form-control'

	religion = forms.CharField(required=False)
	religion.widget.attrs['class']='form-control'

	ocupacion = forms.CharField(required=False)
	ocupacion.widget.attrs['class']='form-control'

	estado_civil = forms.CharField(required=False)
	estado_civil.widget.attrs['class']='form-control'

	tipo_interrogatorio = forms.CharField(required=False)
	tipo_interrogatorio.widget.attrs['class']='form-control'

	cama = forms.CharField()
	cama.widget.attrs['class']='form-control'

	status = forms.CharField(widget=forms.HiddenInput(), required=False)

	class Meta:
		model = Tbl1Paciente

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
		model = Tbl2Evolucion

class FrmRevision(ModelForm):
	"""Formulario de llenado de notas"""
	def __init__(self, *args, **kwargs):
		super(FrmRevision, self).__init__(*args, **kwargs)
		for myField in self.fields:
			self.fields[myField].widget.attrs['class'] = 'form-control'
			if myField == 'nss':
				self.fields[myField].widget.attrs['readonly'] = True
				pass

	class Meta:
		model = Tbl2Revision

class FrmIngreso(ModelForm):
	"""Formulario de llenado de notas"""
#	id_tbl1 = forms.CharField(widget=forms.HiddenInput())
	antecedentes_heredofamiliares = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'4'}))

	antecedentes_personales_no_patologicos = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'4'}))

	# Input compuesto
	antecedentes_personales_patologicos = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	padecimiento_actual = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'4'}))

	ta = forms.CharField()
	ta.widget.attrs['class']='form-control'

	fc = forms.CharField()
	fc.widget.attrs['class']='form-control'

	fr = forms.CharField()
	fr.widget.attrs['class']='form-control'

	temp = forms.CharField()
	temp.widget.attrs['class']='form-control'

	sat = forms.CharField()
	sat.widget.attrs['class']='form-control'

	peso = forms.CharField()
	peso.widget.attrs['class']='form-control'

	talla = forms.CharField()
	talla.widget.attrs['class']='form-control'

	imc = forms.CharField()
	imc.widget.attrs['class']='form-control'

	# Input compuesto
	laboratorio = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	# Input compuesto
	gabinete = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	# Input compuesto
	diagnostico_sindromaticos = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	# Input compuesto
	diagnostico_nosologico = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	# Input compuesto
	diagnostico_diferencial = forms.CharField(widget=forms.HiddenInput(attrs={'class':'form-control','readonly':True}))

	apache = forms.CharField()
	apache.widget.attrs['class']='form-control'

	plan_comentario = forms.CharField(widget=forms.Textarea(attrs={'class':'form-control','rows':'4'}))


	class Meta:
		model = Tbl3Ingreso


