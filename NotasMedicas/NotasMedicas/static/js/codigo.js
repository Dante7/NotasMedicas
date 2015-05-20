"use strict";

function CreaRow (table,n) {
    // body..
    $(table).find('tbody')
        // Crea fila de tabla
        .append(
            $('<tr>').attr({id:'temporal_'+n, class:'temporal'})
            //Crea columna de tabla
            .append(
                $('<td>')
                //Crea select
                .append(
                    $('<select>').attr({id:'app_pat_'+n, class:'form-control'})
                )
            )
            .append(
                $('<td>')
                //Crea input
                .append(
                    $('<input>').attr({id:'app_coment_'+n, type:'text', class:'form-control'})
                )
            )
        )

}

function AsignaOption (n) {
    // body...
}

$( document ).ready(function() {
    $("#btnModal").click(function () {
        var tabla = $("#tblModal");
        var filas = $("#tblModal tr").length;
        CreaRow(tabla,filas);
        AsignaOption();
    });
});