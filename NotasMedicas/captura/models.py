from django.db import models
from datetime import datetime
from django.utils import timezone

# Create your models here.

class Ca_camas(models.Model):
    seccion = models.CharField(max_length=765, db_column='seccion', blank=True) # Field name made lowercase.
    cama = models.CharField(max_length=765, db_column='cama', blank=True) # Field name made lowercase.
    class Meta:
        db_table = u'ca_camas'

class Cie10(models.Model):
    clave = models.CharField(max_length=765, db_column='Clave', blank=True) # Field name made lowercase.
    nombre = models.CharField(max_length=765, db_column='Nombre', blank=True) # Field name made lowercase.
    class Meta:
        db_table = u'cie_10'

class EstructuraEch(models.Model):
    #id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=750)
    url = models.CharField(max_length=750)
    class Meta:
        db_table = u'estructura_ech'

class HcAnt(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_heredofamiliares = models.CharField(max_length=405)
    antecedentes_personales_no_patologicos = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_antecedentes'

class HcPatologia(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_antecedentes_patologicos'

class HcDiag(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    diagnostico_sindromaticos = models.CharField(max_length=405)
    diagnostico_nosologico = models.CharField(max_length=405)
    diagnostico_diferencial = models.CharField(max_length=405)
    apache = models.CharField(max_length=405)
    plan_comentario = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_diagnostico'

class HcExploracion(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    padecimiento_actual = models.CharField(max_length=405)
    ta = models.CharField(max_length=405)
    fc = models.CharField(max_length=405)
    fr = models.CharField(max_length=405)
    temp = models.CharField(max_length=405)
    sat = models.CharField(max_length=405)
    peso = models.CharField(max_length=405)
    talla = models.CharField(max_length=405)
    imc = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_exploracion'

class HcIdentificacion(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    nombre = models.CharField(max_length=405)
    edad = models.IntegerField()
    fecha_nacimiento = models.CharField(max_length=405)
    sexo = models.CharField(max_length=120)
    estado = models.CharField(max_length=405)
    escolaridad = models.CharField(max_length=405)
    religion = models.CharField(max_length=405)
    ocupacion = models.CharField(max_length=405)
    estado_civil = models.CharField(max_length=405)
    tipo_interrogatorio = models.CharField(max_length=405)
    status = models.CharField(max_length=405, blank=True)
    cama = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_identificacion'

class HcLabGab(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    laboratorio = models.CharField(max_length=405)
    gabinete = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_laboratorio_gabinete'

class IngresoIdentificacion(models.Model):
    nss = models.CharField(max_length=135)
    nombre = models.CharField(max_length=135)
    fecha_nacimiento = models.CharField(max_length=135)
    edad = models.IntegerField()
    sexo = models.CharField(max_length=40)
    estado = models.CharField(max_length=135)
    escolaridad = models.CharField(max_length=135)
    religion = models.CharField(max_length=135)
    ocupacion = models.CharField(max_length=135)
    estado_civil = models.CharField(max_length=135)
    tipo_interrogatorio = models.CharField(max_length=135)
    status = models.CharField(max_length=135, null=True, blank=True, default="Ingreso")
    cama = models.CharField(max_length=135)
    class Meta:
        db_table = u'Ingreso_Identificacion'

class IngresoAnt(models.Model):
    """docstring for Tbl3ingreso"""
    nss = models.CharField(max_length=135)
    antecedentes_heredofamiliares = models.CharField(max_length=135)
    antecedentes_personales_no_patologicos = models.CharField(max_length=135)
    antecedentes_personales_patologicos = models.CharField(max_length=135)

    class Meta:
        db_table = u'Ingreso_Antecedentes'

class IngresoPatologia(models.Model):
    """docstring for Tbl3ingreso"""
    nss = models.CharField(max_length=135)
    antecedentes_personales_patologicos = models.CharField(max_length=135)

    class Meta:
        db_table = u'Ingreso_Antecedentes_patologicos'

class IngresoExploracion(models.Model):
    """docstring for Tbl3ingreso"""
    nss = models.CharField(max_length=135)
    padecimiento_actual = models.CharField(max_length=135)
    ta = models.CharField(max_length=135)
    fc = models.CharField(max_length=135)
    fr = models.CharField(max_length=135)
    temp = models.CharField(max_length=135)
    sat = models.CharField(max_length=135)
    peso = models.CharField(max_length=135)
    talla = models.CharField(max_length=135)
    imc = models.CharField(max_length=135)

    class Meta:
        db_table = u'Ingreso_Exploracion'

class IngresoLabGab(models.Model):
    """docstring for Tbl3ingreso"""
    nss = models.CharField(max_length=135)
    laboratorio = models.CharField(max_length=135)
    gabinete = models.CharField(max_length=135)

    class Meta:
        db_table = u'Ingreso_Laboratorio_Gabinete'

class IngresoDiag(models.Model):
    """docstring for Tbl3ingreso"""
    nss = models.CharField(max_length=135)
    diagnostico_sindromaticos = models.CharField(max_length=135)
    diagnostico_nosologico = models.CharField(max_length=135)
    diagnostico_diferencial = models.CharField(max_length=135)
    apache = models.CharField(max_length=135)
    plan_comentario = models.CharField(max_length=135)

    class Meta:
        db_table = u'Ingreso_Diagnostico'

class TblEvolucion(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=135)
    fecha = models.DateField(auto_now_add=True)
    hora = models.DateTimeField(auto_now_add=True)
    fc = models.CharField(max_length=750)
    fr = models.CharField(max_length=750)
    ta = models.CharField(max_length=750)
    temperatura = models.CharField(max_length=750)
    dextrostix = models.CharField(max_length=750, blank=True)
    balance_hidrico = models.CharField(max_length=750, blank=True)
    urecis = models.CharField(max_length=750, blank=True)
    pcb = models.CharField(max_length=750, blank=True)
    modo_ventilatorio = models.CharField(max_length=750, blank=True)
    nc = models.CharField(max_length=750, blank=True)
    fr_mv = models.CharField(max_length=750, blank=True)
    peep = models.CharField(max_length=750, blank=True)
    fo2 = models.CharField(max_length=750, blank=True)
    ps = models.CharField(max_length=750, blank=True)
    sencibilidad = models.CharField(max_length=750, blank=True)
    reultados_relvantes = models.CharField(max_length=750, blank=True)
    diagnostico = models.CharField(max_length=750, blank=True)
    pronostico = models.CharField(max_length=750, blank=True)
    tratamiento = models.CharField(max_length=750, blank=True)
    class Meta:
        db_table = u'tbl_evolucion'

class TblRevision(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=135)
    fecha = models.DateField(auto_now_add=True)
    hora = models.DateTimeField(auto_now_add=True)
    fc = models.CharField(max_length=750)
    fr = models.CharField(max_length=750)
    ta = models.CharField(max_length=750)
    temperatura = models.CharField(max_length=750)
    dextrostix = models.CharField(max_length=750, blank=True)
    balance_hidrico = models.CharField(max_length=750, blank=True)
    urecis = models.CharField(max_length=750, blank=True)
    pcb = models.CharField(max_length=750, blank=True)
    modo_ventilatorio = models.CharField(max_length=750, blank=True)
    nc = models.CharField(max_length=750, blank=True)
    fr_mv = models.CharField(max_length=750, blank=True)
    peep = models.CharField(max_length=750, blank=True)
    fo2 = models.CharField(max_length=750, blank=True)
    ps = models.CharField(max_length=750, blank=True)
    sencibilidad = models.CharField(max_length=750, blank=True)
    reultados_relvantes = models.CharField(max_length=750, blank=True)
    diagnostico = models.CharField(max_length=750, blank=True)
    pronostico = models.CharField(max_length=750, blank=True)
    tratamiento = models.CharField(max_length=750, blank=True)
    class Meta:
        db_table = u'tbl_revision'

class TblInter(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=750)
    prioridad = models.CharField(max_length=750)
    calidad = models.CharField(max_length=750)
    atendido_por = models.CharField(max_length=750)
    enviado_por = models.CharField(max_length=750)
    fecha = models.DateField()
    class Meta:
        db_table = u'tbl4_inter'

class TblPreop(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=750)
    class Meta:
        db_table = u'tbl_preop'

class TblEgreso(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=765)
    fecha_ingreso = models.DateField()
    fecha_egreso = models.DateField()
    motivo_egreso = models.CharField(max_length=750)
    diag_final = models.TextField()
    resumen_evolucion = models.TextField()
    estado_actual = models.TextField()
    manejo_estancia = models.TextField()
    problemas_pendientes = models.TextField()
    plan_manejo = models.TextField()
    tratamiento = models.TextField()
    recomendaciones = models.TextField()
    atencion_factores_riesgo = models.TextField()
    pronostico = models.TextField()
    causa_defuncion = models.TextField()
    class Meta:
        db_table = u'tbl_egreso'

class TblIndicaciones(models.Model):
    #id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=765)
    fecha = models.DateField(auto_now_add=True)
    hora = models.DateTimeField(auto_now_add=True)
    dieta = models.TextField(blank=True)
    medidas_generales = models.TextField(blank=True)
    soluciones = models.TextField(blank=True)
    infusiones = models.TextField(blank=True)
    medicamentos = models.TextField(blank=True)
    pendientes = models.TextField(blank=True)
    class Meta:
        db_table = u'tbl_indicaciones'


#Vista generada desde mysql
class CamaPaciente(models.Model):
    seccion = models.CharField(max_length=2295)
    cama = models.CharField(max_length=2295)
    nss = models.CharField(max_length=405, blank=True)
    nombre = models.CharField(max_length=405, blank=True)
    status = models.CharField(max_length=405, blank=True)
    pronostico = models.CharField(max_length=405, blank=True)
    class Meta:
        db_table = u'cama_paciente'