
$( document ).ready(function() {
    $('#id_antecedentes_personales_patologicos').focus(function () {
    	// body...
    	$('#app_modal').modal('show');
    });
    $('#id_laboratorio').focus(function () {
    	// body...
    	$('#lab_modal').modal('show');
    });
    $('#id_gabinete').focus(function () {
    	// body...
    });
    $('#id_diagnostico_sindromaticos').focus(function () {
    	// body...
    });
    $('#id_diagnostico_nosologico').focus(function () {
    	// body...
    });
    $('#id_diagnostico_diferencial').focus(function () {
    	// body...
    });
});