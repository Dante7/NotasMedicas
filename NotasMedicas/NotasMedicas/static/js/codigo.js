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


$( document ).ready(function() {

    //busqueda de camas
    $("#BedSearch").click(function () {
        var valor = $('#nombre').val();
        console.log(valor);
        var seccion = $(".panel-collapse");
        seccion.each(function() {
            // You can access `collection.length` here.
            $(this).collapse('show');
        });
        var botones = $(".camas");
        botones.each(function () {
            // body...
            if ($(this).text().trim() == valor) 
            {
                $(this).removeClass('disabled');
            }else{
                $(this).addClass('disabled');
            };
        });
    });


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

    //Apache modules
    //Declaracion de arrays

    var array = {
        'tr':[{
            're_4':[
                {
                    'min':'41',
                    'max':'100'
                }
            ],
            're_3':[
                {
                    'min':'39',
                    'max':'40.9'
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'38.5',
                    'max':'38.9'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'29.9'
                }
            ],
            'rb_3':[
                {
                    'min':'30',
                    'max':'31.9'
                }
            ],
            'rb_2':[
                {
                    'min':'32',
                    'max':'33.9'
                }
            ],
            'rb_1':[
                {
                    'min':'34',
                    'max':'35.9'
                }
            ],
            '0':[
                {
                    'min':'35.9',
                    'max':'36'
                }
            ]
        }],
        'pam':[{
            're_4':[
            {
                'min':'160',
                'max':'1000'
            }
            ],
            're_3':[
                {
                    'min':'130',
                    'max':'159'
                }
            ],
            're_2':[
                {
                    'min':'110',
                    'max':'129'
                }
            ],
            're_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'49'
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'50',
                    'max':'69'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'70',
                    'max':'109'
                }
            ]
        }],
        'fc':[{
            're_4':[
            {
                'min':'180',
                'max':'1000'
            }
            ],
            're_3':[
                {
                    'min':'140',
                    'max':'179'
                }
            ],
            're_2':[
                {
                    'min':'110',
                    'max':'139'
                }
            ],
            're_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'39'
                }
            ],
            'rb_3':[
                {
                    'min':'40',
                    'max':'54'
                }
            ],
            'rb_2':[
                {
                    'min':'55',
                    'max':'69'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'70',
                    'max':'109'
                }
            ]    
        }],
        'fr':[{
            're_4':[
            {
                'min':'50',
                'max':'100'
                }
            ],
            're_3':[
                {
                    'min':'35',
                    'max':'49'
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'25',
                    'max':'34'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'5'
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'6',
                    'max':'9'
                }
            ],
            'rb_1':[
                {
                    'min':'10',
                    'max':'11'
                }
            ],
            '0':[
                {
                    'min':'12',
                    'max':'24'
                }
            ]
        }],
        'oxiA':[{
            're_4':[
            {
                'min':'500',
                'max':'1000'
                }
            ],
            're_3':[
                {
                    'min':'350',
                    'max':'499'
                }
            ],
            're_2':[
                {
                    'min':'200',
                    'max':'349'
                }
            ],
            're_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_4':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'0',
                    'max':'199'
                }
            ]
        }],
        'oxiB':[{
            're_4':[
            {
                'min':'',
                'max':''
                }
            ],
            're_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'54'
                }
            ],
            'rb_3':[
                {
                    'min':'55',
                    'max':'60'
                }
            ],
            'rb_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_1':[
                {
                    'min':'61',
                    'max':'70'
                }
            ],
            '0':[
                {
                    'min':'70',
                    'max':'100'
                }
            ]
        }],
        'phA':[{
            're_4':[
                {
                    'min':'7.7',
                    'max':'20'
                }
            ],
            're_3':[
                {
                    'min':'7.59',
                    'max':'7.6'
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'7.49',
                    'max':'7.5'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'7.14'
                }
            ],
            'rb_3':[
                {
                    'min':'7.15',
                    'max':'7.24'
                }
            ],
            'rb_2':[
                {
                    'min':'7.25',
                    'max':'7.32'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'7.33',
                    'max':'7.49'
                }
            ]
        }],
        'hco3':[{
            're_4':[
                {
                    'min':'52',
                    'max':'100'
                }
            ],
            're_3':[
                {
                    'min':'41',
                    'max':'51.9'
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'32',
                    'max':'40.9'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'14.9'
                }
            ],
            'rb_3':[
                {
                    'min':'15',
                    'max':'17.9'
                }
            ],
            'rb_2':[
                {
                    'min':'18',
                    'max':'21.9'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'22',
                    'max':'31.9'
                }
            ]
        }],
        'NaSer':[{
            're_4':[
                {
                    'min':'180',
                    'max':'1000'
                }
            ],
            're_3':[
                {
                    'min':'169',
                    'max':'179'
                }
            ],
            're_2':[
                {
                    'min':'155',
                    'max':'159'
                }
            ],
            're_1':[
                {
                    'min':'150',
                    'max':'154'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'110'
                }
            ],
            'rb_3':[
                {
                    'min':'111',
                    'max':'119'
                }
            ],
            'rb_2':[
                {
                    'min':'120',
                    'max':'129'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'130',
                    'max':'149'
                }
            ]
        }],
        'KSer':[{
            're_4':[
                {
                    'min':'50',
                    'max':'7'
                }
            ],
            're_3':[
                {
                    'min':'6',
                    'max':'6.9'
                }
            ],
            're_2':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_1':[
                {
                    'min':'5.5',
                    'max':'5.9'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'2.4'
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'2.5',
                    'max':'2.9'
                }
            ],
            'rb_1':[
                {
                    'min':'3',
                    'max':'3.4'
                }
            ],
            '0':[
                {
                    'min':'3.5',
                    'max':'5.4'
                }
            ]
        }],
        'Creati':[{
            're_4':[
                {
                    'min':'3.5',
                    'max':'20'
                }
            ],
            're_3':[
                {
                    'min':'2',
                    'max':'3.4'
                }
            ],
            're_2':[
                {
                    'min':'1.5',
                    'max':'1.9'
                }
            ],
            're_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_4':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'0',
                    'max':'0.59'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'0.6',
                    'max':'1.4'
                }
            ]
        }],
        'hema':[{
            're_4':[
            {
                'min':'60',
                'max':'120'
                }
            ],
            're_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_2':[
                {
                    'min':'50',
                    'max':'59.9'
                }
            ],
            're_1':[
                {
                    'min':'46',
                    'max':'49.9'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'19.9'
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'20',
                    'max':'29.9'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'30',
                    'max':'45.9'
                }
            ]
        }],
        'leuco':[{
            're_4':[
            {
                'min':'40',
                'max':'200'
                }
            ],
            're_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            're_2':[
                {
                    'min':'20',
                    'max':'39.9'
                }
            ],
            're_1':[
                {
                    'min':'15',
                    'max':'19.9'
                }
            ],
            'rb_4':[
                {
                    'min':'0',
                    'max':'0.9'
                }
            ],
            'rb_3':[
                {
                    'min':'',
                    'max':''
                }
            ],
            'rb_2':[
                {
                    'min':'1',
                    'max':'2.9'
                }
            ],
            'rb_1':[
                {
                    'min':'',
                    'max':''
                }
            ],
            '0':[
                {
                    'min':'3',
                    'max':'14.9'
                }
            ]
        }]
    };


    function validaRango (nombre, valor) {
        // body...
        var arr = array[nombre][0];
        var cal
        var min
        var max
        for (var item in arr) {
            //console.log(arr[item]);
            min = arr[item][0]['min'];
            max = arr[item][0]['max'];
            if (valor >= min && valor <= max) {
                cal = item.replace( /^\D+/g, '');
            };
        };
        return cal
    };

    $(':input').focusout(function() {
        // body...
        var nombre = $(this)[0].id;
        var valor = $(this).val();
        nombre = nombre.substr(-3);
        if (isNaN(parseInt(valor))) {
            $(this).focus();
        }else{
            if (nombre != 'res') {
                console.log(nombre);
                var res = validaRango(nombre,valor);
                $('#'+nombre+'_res').val(res);
            };
        };
    });

});