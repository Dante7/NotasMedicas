from django.db import models

# Create your models here.

class Tbl1Paciente(models.Model):
    #id = models.IntegerField(unique=True, primary_key=True)
    sexo = models.CharField(max_length=40)
    edad = models.IntegerField()
    nombre = models.CharField(max_length=135)
    nss = models.CharField(max_length=135)
    estado = models.CharField(max_length=135)
    escolaridad = models.CharField(max_length=135)
    religion = models.CharField(max_length=135)
    ocupacion = models.CharField(max_length=135)
    estado_civil = models.CharField(max_length=135)
    tipo_interrogatorio = models.CharField(max_length=135)
    status = models.CharField(max_length=135, null=True, blank=True, default="Alta")
    class Meta:
        db_table = u'tbl1_paciente'

class Tbl2Nota(models.Model):
    #id = models.IntegerField(unique=True, primary_key=True)
    id_tbl1 = models.ForeignKey(Tbl1Paciente, db_column='id_tbl1')
    tipo_nota = models.CharField(max_length=135)
    descripcion = models.CharField(max_length=135)
    hospital = models.CharField(max_length=135)
    medico = models.CharField(max_length=135)
    cama = models.IntegerField()
    fecha_hora = models.DateTimeField()
    class Meta:
        db_table = u'tbl2_nota'

class Tbl3Ingreso(models.Model):
    """docstring for Tbl3ingreso"""
    #id = models.IntegerField(unique=True, primary_key=True)
    id_tbl1 = models.ForeignKey(Tbl1Paciente, db_column='id_tbl1')
    antecedentes_heredofamiliares = models.CharField(max_length=135)
    antecedentes_personales_patologicos = models.CharField(max_length=135)
    antecedentes_personales_no_patologicos = models.CharField(max_length=135)
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
    exame_general_orina = models.CharField(max_length=135)
    gasometria = models.CharField(max_length=135)
    arterial = models.CharField(max_length=135)
    acidosis_metabolica_compensada = models.CharField(max_length=135)
    electrocardiograma = models.CharField(max_length=135)
    diagnostico_sindromaticos = models.CharField(max_length=135)
    diagnostico_nosologico = models.CharField(max_length=135)
    diagnostico_diferencial = models.CharField(max_length=135)
    descripcion_2 = models.CharField(max_length=135)

    class Meta:
        db_table = u'tbl3_ingreso'
