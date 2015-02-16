from django.db import models

# Create your models here.

class Tbl1Nota(models.Model):
    #id = models.IntegerField(unique=True)
    tipo_nota = models.CharField(max_length=135)
    descripcion = models.CharField(max_length=135)
    hospital = models.CharField(max_length=135)
    medico = models.CharField(max_length=135)
    nss = models.CharField(max_length=135)
    cama = models.IntegerField()
    fecha_hora = models.DateTimeField()
    class Meta:
        db_table = u'tbl1_nota'

class Tbl2Paciente(models.Model):
    #id = models.IntegerField(unique=True)
    id_tbl1 = models.ForeignKey(Tbl1Nota, db_column='id_tbl1')
    sexo = models.CharField(max_length=6)
    edad = models.IntegerField()
    estado = models.CharField(max_length=135)
    escolaridad = models.CharField(max_length=135)
    religion = models.CharField(max_length=135)
    ocupacion = models.CharField(max_length=135)
    estado_civil = models.CharField(max_length=135)
    tipo_interrogatorio = models.CharField(max_length=135)
    class Meta:
        db_table = u'tbl2_paciente'

