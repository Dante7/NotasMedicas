from django.db import models

# Create your models here.

class Cie10(models.Model):
    clave = models.CharField(max_length=765, db_column='Clave', blank=True) # Field name made lowercase.
    nombre = models.CharField(max_length=765, db_column='Nombre', blank=True) # Field name made lowercase.
    class Meta:
        db_table = u'cie_10'

class Tbl1Paciente(models.Model):
    #id = models.IntegerField(unique=True, primary_key=True)
    nss = models.CharField(max_length=135)
    nombre = models.CharField(max_length=135)
    edad = models.IntegerField()
    fecha_nacimiento = models.CharField(max_length=135)
    sexo = models.CharField(max_length=40)
    estado = models.CharField(max_length=135)
    escolaridad = models.CharField(max_length=135)
    religion = models.CharField(max_length=135)
    ocupacion = models.CharField(max_length=135)
    estado_civil = models.CharField(max_length=135)
    tipo_interrogatorio = models.CharField(max_length=135)
    status = models.CharField(max_length=135, null=True, blank=True, default="Alta")
    cama = models.CharField(max_length=135)
    class Meta:
        db_table = u'tbl1_paciente'

class Tbl2Nota(models.Model):
    #id = models.IntegerField(unique=True, primary_key=True)
    #id_tbl1 = models.ForeignKey(Tbl1Paciente, db_column='id_tbl1')
    fecha = models.DateTimeField()
    hora = models.DateTimeField()
    patologias = models.CharField(max_length=135)

    class Meta:
        db_table = u'tbl2_nota'

class Tbl3Ingreso(models.Model):
    """docstring for Tbl3ingreso"""
    #id = models.IntegerField(unique=True, primary_key=True)
    #id_tbl1 = models.ForeignKey(Tbl1Paciente, db_column='id_tbl1')
    antecedentes_heredofamiliares = models.CharField(max_length=135)
    antecedentes_personales_no_patologicos = models.CharField(max_length=135)
    antecedentes_personales_patologicos = models.CharField(max_length=135)
    padecimiento_actual = models.CharField(max_length=135)
    ta = models.CharField(max_length=135)
    fc = models.CharField(max_length=135)
    fr = models.CharField(max_length=135)
    temp = models.CharField(max_length=135)
    sat = models.CharField(max_length=135)
    peso = models.CharField(max_length=135)
    talla = models.CharField(max_length=135)
    imc = models.CharField(max_length=135)
    laboratorio = models.CharField(max_length=135)
    gabinete = models.CharField(max_length=135)
    diagnostico_sindromaticos = models.CharField(max_length=135)
    diagnostico_nosologico = models.CharField(max_length=135)
    diagnostico_diferencial = models.CharField(max_length=135)
    apache = models.CharField(max_length=135)
    plan_comentario = models.CharField(max_length=135)

    class Meta:
        db_table = u'tbl3_ingreso'
