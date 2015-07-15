"use strict";

var JsonApp = [];

function CreaRow (table) {
    // body..
    $(table).find('tbody')
        // Crea fila de tabla
        .append(
            $('<tr>').attr({class:'temporal'})
            //Crea columna de tabla
            .append(
                $('<td>')
                //Crea select
                .append(
                    $('<input>').attr({type:'text', class:'form-control'})
                )
            )
            .append(
                $('<td>')
                //Crea input
                .append(
                    $('<input>').attr({type:'text', class:'form-control'})
                )
            )
        )

}

function EliminaRow () {
	// body...
	$("#tblModal > tbody > tr").each(function () {
		// body...
		$(this).remove();
	});
}

function spanAppend (valor,name) {
	// body...
	$("#slot_"+name)
		.append('<a href="#" class="btn btn-success btn-sm resumen">'+valor+'</a>');
}

function GuardaJson (name) {
	// body...
	$("#tblModal > tbody > tr").each(function () {
        // body...
    	var nuevo = {
    				"elemento":$(this).children().children()[0].value,
    				"descripcion":$(this).children().children()[1].value
    			};
    	spanAppend($(this).children().children()[0].value,name);
    	JsonApp.push(nuevo);
    	//for (var member in nuevo) delete nuevo[member];
    });

    console.log(JsonApp);
    console.log(name);

	$("#id_"+name).val(JSON.stringify(JsonApp));
	EliminaRow('temporal');
}

function DateFormat (StrDate) {
    // Le code...
    var strD = StrDate;
    var gDay = strD.substring(8,10);
    var gMth = strD.substring(5,7);
    var gYr = strD.substring(0,4);
    return new Date(gYr,gMth,gDay);
};


$( document ).ready(function() {

    // Calculo de edad en base a la fecha de nacimiento
    $('#id_fecha_nacimiento').focusout(function () {
        // Le code
        var hoy = new Date();
        var fnd  = DateFormat($(this).val());
        var seg = ((hoy - fnd)/1000);
        var yrs = parseInt((seg/31536000),10);
        $('#id_edad').val(yrs);
    });

    //busqueda de camas con boton
    $("#BedSearch").click(function () {
        var valor = $('#nombre').val();
        //console.log(valor);
        var seccion = $(".panel-collapse");
        seccion.each(function() {
            $(this).collapse('show');
        });
        var botones = $(".camas");
        botones.each(function () {
            
            // body...
            if ($(this).attr('name').trim() == valor) 
            {
                $(this).show();
            }else{
                $(this).hide();
            };
        });
    });
/*
    //busqueda de camas sin boton
    $("#nombre").keyup(function () {
        var valor = $('#nombre').val();
        var seccion = $(".panel-collapse");
        seccion.each(function() {
            $(this).collapse('show');
        });
        console.log(valor);
        var botones = $(".camas");
        botones.each(function () {
            var nombre = $(this).attr('name').trim();
            var n = nombre.indexOf(valor);
            if ( n != -1) 
            {
                $(this).show();
            }else{
                $(this).hide();
            };
        });
    });

    $("#nombre").keyup(function () {
        var valor = $('#nombre').val();
        var seccion = $(".panel-collapse");
        seccion.each(function() {
            $(this).collapse('show');
        });
        console.log(valor);
        var botones = $(".camas");
        botones.each(function () {
            var nombre = $(this).attr('name').trim();
            var n = nombre.indexOf(valor);
            if ( n != -1) 
            {
                $(this).show();
            }else{
                $(this).hide();
            };
        });
    });

*/

    $("#btnModalCap").click(function () {
        var tabla = $("#tblModal");
        CreaRow(tabla);
    });

    $("#addRow").click(function () {
        var tabla = $("#tblModal");
        CreaRow(tabla);
    });


    $("#save").click(function () {
        var modal = $('#MyModal');
		var campo = modal.find('.modal-title').text();
		campo = campo.replace(/\s/g, "_");
		campo = campo.toLowerCase();
		//console.log(campo);
        GuardaJson(campo);
        $('#MyModal').modal('hide');
    });

    $("#cancel").click(function () {
    	EliminaRow();
    });

    $('#MyModal').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var recipient = button.data('whatever') // Extract info from data-* attributes
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		var modal = $(this)
		modal.find('.modal-title').text(recipient)
		$("#EncabezadoTipo").text(recipient);
	});
});