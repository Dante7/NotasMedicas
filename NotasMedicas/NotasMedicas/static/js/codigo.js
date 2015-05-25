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
        }]
    }

    var fr = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var oxiA = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var oxiB = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var phA = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var hco3 = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var NaSer = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var KSer = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var Creati = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var hema = {
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
                'min':'',
                'max':''
            }
        ]
    };
    var leuco = {
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
                'min':'',
                'max':''
            }
        ]
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