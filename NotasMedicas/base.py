# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=240, unique=True)
    class Meta:
        db_table = u'auth_group'

class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey(AuthPermission)
    class Meta:
        db_table = u'auth_group_permissions'

class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=150)
    content_type = models.ForeignKey(DjangoContentType)
    codename = models.CharField(max_length=300, unique=True)
    class Meta:
        db_table = u'auth_permission'

class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=90, unique=True)
    first_name = models.CharField(max_length=90)
    last_name = models.CharField(max_length=90)
    email = models.CharField(max_length=225)
    password = models.CharField(max_length=384)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    is_superuser = models.IntegerField()
    last_login = models.DateTimeField()
    date_joined = models.DateTimeField()
    class Meta:
        db_table = u'auth_user'

class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)
    class Meta:
        db_table = u'auth_user_groups'

class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)
    class Meta:
        db_table = u'auth_user_user_permissions'

class CaCamas(models.Model):
    id = models.IntegerField(primary_key=True)
    seccion = models.CharField(max_length=2295)
    cama = models.CharField(max_length=2295)
    class Meta:
        db_table = u'ca_camas'

class CamaPaciente(models.Model):
    id = models.IntegerField()
    seccion = models.CharField(max_length=2295)
    cama = models.CharField(max_length=2295)
    nss = models.CharField(max_length=405, blank=True)
    nombre = models.CharField(max_length=405, blank=True)
    status = models.CharField(max_length=405, blank=True)
    pronostico = models.CharField(max_length=750, blank=True)
    class Meta:
        db_table = u'cama_paciente'

class Cie10(models.Model):
    id = models.IntegerField(primary_key=True)
    clave = models.CharField(max_length=2295, db_column='Clave') # Field name made lowercase.
    nombre = models.CharField(max_length=2295, db_column='Nombre') # Field name made lowercase.
    class Meta:
        db_table = u'cie_10'

class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)
    action_time = models.DateTimeField()
    user = models.ForeignKey(AuthUser)
    content_type = models.ForeignKey(DjangoContentType, null=True, blank=True)
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=600)
    action_flag = models.IntegerField()
    change_message = models.TextField()
    class Meta:
        db_table = u'django_admin_log'

class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=300)
    app_label = models.CharField(max_length=300, unique=True)
    model = models.CharField(max_length=300, unique=True)
    class Meta:
        db_table = u'django_content_type'

class DjangoSession(models.Model):
    session_key = models.CharField(max_length=120, primary_key=True)
    session_data = models.TextField()
    expire_date = models.DateTimeField()
    class Meta:
        db_table = u'django_session'

class DjangoSite(models.Model):
    id = models.IntegerField(primary_key=True)
    domain = models.CharField(max_length=300)
    name = models.CharField(max_length=150)
    class Meta:
        db_table = u'django_site'

class EstructuraEch(models.Model):
    id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=750)
    url = models.CharField(max_length=750)
    class Meta:
        db_table = u'estructura_ech'

class HcAntecedentes(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_heredofamiliares = models.CharField(max_length=405)
    antecedentes_personales_no_patologicos = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_antecedentes'

class HcAntecedentesPatologicos(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_antecedentes_patologicos'

class HcDiagnostico(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    diagnostico_sindromaticos = models.CharField(max_length=405)
    diagnostico_nosologico = models.CharField(max_length=405)
    diagnostico_diferencial = models.CharField(max_length=405)
    apache = models.CharField(max_length=405)
    plan_comentario = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_diagnostico'

class HcExploracion(models.Model):
    id = models.IntegerField(primary_key=True)
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

class HcLaboratorioGabinete(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    laboratorio = models.CharField(max_length=405)
    gabinete = models.CharField(max_length=405)
    class Meta:
        db_table = u'hc_laboratorio_gabinete'

class IngresoAntecedentes(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_heredofamiliares = models.CharField(max_length=405)
    antecedentes_personales_no_patologicos = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'ingreso_antecedentes'

class IngresoAntecedentesPatologicos(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    antecedentes_personales_patologicos = models.CharField(max_length=405)
    class Meta:
        db_table = u'ingreso_antecedentes_patologicos'

class IngresoDiagnostico(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    diagnostico_sindromaticos = models.CharField(max_length=405)
    diagnostico_nosologico = models.CharField(max_length=405)
    diagnostico_diferencial = models.CharField(max_length=405)
    apache = models.CharField(max_length=405)
    plan_comentario = models.CharField(max_length=405)
    class Meta:
        db_table = u'ingreso_diagnostico'

class IngresoExploracion(models.Model):
    id = models.IntegerField(primary_key=True)
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
        db_table = u'ingreso_exploracion'

class IngresoIdentificacion(models.Model):
    id = models.IntegerField(primary_key=True)
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
        db_table = u'ingreso_identificacion'

class IngresoLaboratorioGabinete(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=405)
    laboratorio = models.CharField(max_length=405)
    gabinete = models.CharField(max_length=405)
    class Meta:
        db_table = u'ingreso_laboratorio_gabinete'

class TblEgreso(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=2295)
    fecha_ingreso = models.DateField()
    fecha_egreso = models.DateField()
    motivo_egreso = models.CharField(max_length=2250)
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

class TblEvolucion(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=777, blank=True)
    fecha = models.DateTimeField()
    hora = models.DateTimeField()
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

class TblIndicaciones(models.Model):
    id = models.IntegerField(primary_key=True)
    fecha = models.DateField()
    hora = models.DateTimeField()
    dieta = models.TextField(blank=True)
    medidas_generales = models.TextField(blank=True)
    soluciones = models.TextField(blank=True)
    infusiones = models.TextField(blank=True)
    medicamentos = models.TextField(blank=True)
    pendientes = models.TextField(blank=True)
    class Meta:
        db_table = u'tbl_indicaciones'

class TblInter(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=2250)
    prioridad = models.CharField(max_length=2250)
    calidad = models.CharField(max_length=2250)
    atendido_por = models.CharField(max_length=2250)
    enviado_por = models.CharField(max_length=2250)
    fecha = models.DateField()
    class Meta:
        db_table = u'tbl_inter'

class TblPreop(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=2250)
    class Meta:
        db_table = u'tbl_preop'

class TblRevision(models.Model):
    id = models.IntegerField(primary_key=True)
    nss = models.CharField(max_length=777, blank=True)
    fecha = models.DateTimeField()
    hora = models.DateTimeField()
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

