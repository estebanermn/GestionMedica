

<div class="dynamic-ajax-content">

<input type="hidden" id="hddIDATENCION"/>
   <br>
      <div class="col-md-11">
          <div class="row">
              <div class="col">
                  <div class="card my-3">
                  
                  
                      <div class="card-header">Examen de Apoyo al Diagnostico
                      
                     
                          <div class="options float-right">
							   <button type="button" class="btn btn-primary mr-1" id="btnAbrirExaApoyo" data-toggle="modal" data-target="#exampleModal">
                        Agregar Examen
                    </button>
							
							<input type="hidden" id="hddModalCodigo"/>
                          </div>
                      </div>
                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-12 table-responsive">
                                  <table  id="tab_examenApoyo" class="table table-bordered table-hover table-sortable">
                                      <thead>
                                          <tr>
                                        <!--  <th class="text-center">codtabla</th> --> 
                                          	<th class="text-center">CodigoSegus</th>
                                          	<th class="text-center" >idordenatencion</th>
                                          	<th class="text-center">UsuCreacion</th>
                                          	<th class="text-center">DesExamenes</th>
                                              <th class="text-center">fechaSolicitud</th>
                                              
                                              <th class="text-center">Cantidad</th>
                                              <th class="text-center">Especificaciones</th>
                                              <th class="text-center">Acción</th>
                                              
                                              
                                          </tr>
                                      </thead>
                                      <tbody class="ui-sortable">
                                         <tr id='addr0'>
                                    <!-- <td data-name="name">
                                              </td>-->
                                          	  <td data-name="name">
                                              </td>
                                              <td data-name="name" >
                                              </td>
                                              <td data-name="name" >
                                              </td>
                                              <td data-name="name">
                                              </td>
                                              <td data-name="name">
                                              </td>
                                              <td data-name="name">
                                              </td>
                                              <td data-name="name">
                                              </td>
                                               <td data-name="name">
                                              </td>
                                              
                                              <!-- 
                                                 <td data-name="del">
                                                      <button name="del1" class="btn btn-sm btn-danger fa fa-times row-remove" value="">
                                                      </button>
                                                  </td> -->
                                          </tr>
                                      </tbody>
                                  </table>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
		<button type="button" id="btnRegistrarExamen" class="btn btn-success btn-lg">Registrar</button>
		
                    
                    
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Detalle de EXAMENES</h5>
                                    
                                    <input type="text" class="form-control m-b-5"  id="inpModalFecha" disabled />
                      
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                
                                <div class="table-responsive dt-responsive">
					<table id="data-table-addExamenes" class="table table-striped table-bordered nowrap">
					<thead>
							
							
							<th>Codigo Examen</th>
							<th>Descripcion Examenes</th>
							
						</thead>
						
						<tbody>
						</tbody>

					</table>
					</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    <!--<button type="button" class="btn btn-primary">Guardar</button>-->
                                </div>
                            </div>
                        </div>
                    </div>
		
		
	
</div>
      
      

<script type="text/javascript">

		   	var IdOrdenAten = sessionStorage.getItem("IdOrden");
			 // alert("Id Orden: "+IdOrdenAten);
			  
	    	var UsuCreacion=document.getElementById('UsuarioCreacion').value;
	    	
	    	
	    	//FECHA Y HORA ACTUAL
			var dNow = new Date();
    			var localdate= (dNow.getMonth()+1) + '/' + dNow.getDate() + '/' + dNow.getFullYear() + ' ' + dNow.getHours() + ':' + dNow.getMinutes();    
			$('#inpModalFecha').val(localdate);
			
			
	   
    
   // alert("usuario: "+UsuCreacion);
   var dtExamenPrin;
   var dtAgrega;
   
   	$(document).ready(function() {
   		
   		document.getElementById('hddIDATENCION').value=IdOrdenAten;
   		
   
   	$('#data-table-addExamenes').dataTable().fnDestroy();
   		
   	dtAgrega = $("#data-table-addExamenes").DataTable({
			responsive:!0,
			ordering			:	true,
			bScrollAutoCss		:	true,
			bStateSave			:	false,
			bAutoWidth			:	false,
			destroy				: 	true,
			bScrollCollapse		:	false,
			searching			:	true,
			paging				:	true,
			pagingType			:   "full_numbers",
			iDisplayLength		:	10,
			responsive			:	true,
			bLengthChange		: 	false,
			  "oLanguage": {
				  "sEmptyTable": "No hay registros disponibles",
				  //"sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)",
			        "sLoadingRecords": "Por favor espera - Cargando...",
			        "sSearch": "Buscar:",
			        
			        "sLengthMenu": "Mostrar _MENU_",
			        "oPaginate": {
			            "sLast": "Último",
			            "sFirst": "Primero",
			            "sNext": "Siguiente",
			            "sPrevious": "Anterior"
			            }
			    }, 
			columns:[
					{data : "codigoSegus_Examen"},
					{data : "nom_Examen"},
					{data : "codigoSegus_Examen",'orderable': false, 
						'render': function(data, type, row, meta){
							var html ='<button class="btn btn-xs btn-danger" id="btnAgregarExamen"  data-codigo="' + data + '" data-descri="' + row.nom_Examen + '"><i class="fa fa-cart-plus"></i></button>';								
							return html;
						}
					}
					] 
		});
   		
   		
	       $('#data-table-addExamenes tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected'); 
	           }
	           else {
	        	   dtAgrega.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	              var datitoFila= dtAgrega.row(".selected").data();
	            //  alert(JSON.stringify(datitoFila));
	           }
	       } );
	       
	       
	  	 $('#tab_examenApoyo').dataTable().fnDestroy();

	  	dtExamenPrin = $("#tab_examenApoyo").DataTable({
   			responsive:!0,
			ordering			:	false,
			bScrollAutoCss		:	true,
			bStateSave			:	false,
			bAutoWidth			:	false,
			destroy				: 	true,
			bScrollCollapse		:	false,
			searching			:	true,
			paging				:	true,
			pagingType			:   "full_numbers",
			iDisplayLength		:	10,
			responsive			:	true,
			bLengthChange		: 	false,
			  "oLanguage": {
				  "sEmptyTable": "No hay registros disponibles",
				  //"sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)",
			        "sLoadingRecords": "Por favor espera - Cargando...",
			        "sSearch": "Buscar:",
			        "sLengthMenu": "Mostrar _MENU_",
			        "oPaginate": {
			            "sLast": "Último",
			            "sFirst": "Primero",
			            "sNext": "Siguiente",
			            "sPrevious": "Anterior"
			            }
			    }, 
			columns:[
				
					//{data : "codTabla"},
					{data : "codigoSegus_Examen"},
					{data : "idorden_Exa"},
					{data : "usuaCreacion_Exa"},
					{data : "nom_Examen"},
					
					{data : "fechSoli_Exa"},
					{data : "cantidad",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var 
							html = '<input type="number" value="'+data+'" class="form-control cbCantidad_Exa" id="txtCantidad" placeholder="Ingresar Nª Colegiatura">';
							
							return html;
						}
					},
					
					{data : "espec_Exa",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var 
	
							html = '<textarea  class="form-control textarea-maxlength cbespec_Exa" id="txtDesObservacion" placeholder="Ingresar">'+data+'</textarea>';
							return html;
						}
					},
					{data : "codigoSegus_Examen",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var 
							html = '<button class="btn btn-xs btn-primary" id="btnPageDeleteRow" data-codigo="' + data + '">Eliminar</button>';
							
							return html;
						}
					}
					
					]
					
					
   		});
   		
   		LoadDataTableAjaxPrincipal();
   		
   		
   	//CARGAR DATATABLE
	      
	       $('#tab_examenApoyo tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected');
	               
	           }
	           else {
	        	   dtExamenPrin.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	              var datitoFila= dtExamenPrin.row(".selected").data();
	              
	             // alert(JSON.stringify(datitoFila));
	           }  
	       } );
   
   	});
   	
   	
//var codTabla=0;
	$('body').on('click', '#btnAgregarExamen', function (e) {
		
		//alert("examen apoyo");
		//codTabla++; 
	
		dtExamenPrin.row.add( {
		//	"codTabla":codTabla,
	        "codigoSegus_Examen": $(this).data('codigo'),
	        "idorden_Exa": IdOrdenAten,
	        "espec_Exa": "",
	        "usuaCreacion_Exa": UsuCreacion,
	        "nom_Examen": $(this).data('descri'),
	        "fechSoli_Exa":localdate
	    } ).draw();
		
		$('#hddModalCodigo').val($(this).data('codigo'));
		//$('#DesDiagnostico').val($(this).data('descri'));
		$('#exampleModal').modal('hide');
		$("#cbDeterDiagnostico").focus();
		
	});
	
 	
   	

   	
   	
   	function LoadDataTableWithAjax(){
   		$('#data-table-addExamenes').dataTable().fnClearTable();
   		$('#data-table-addExamenes').dataTable().fnDraw();
   		
   		$.ajax({
   	        type: "GET",
   	        url: "${pageContext.request.contextPath}/ExamenApoyo/CatExamenesApoyo",
   	        crossDomain: true,
   	        contentType: "application/json; charset=utf-8",
   	        dataType: "json",
   	        async: false,
   	        success: function (response) {                                            
   	        	//ADD NOTIFICACION
   	        	if(response.data.length > 0){
   	        		//UPDATE DATATABLES
   	        	//	var datito = response.data;
   	        		//alert(JSON.stringify(datito));
   	        		  
   	        		$('#data-table-addExamenes').dataTable().fnAddData(response.data);
   	        	}else{
   	        		alert("error: No hay data");
   	        	}
   	        },
   	    })
   	  }
   	
   	 
   	function LoadDataTableAjaxPrincipal(){
   		$('#tab_examenApoyo').dataTable().fnClearTable();  
   		$('#tab_examenApoyo').dataTable().fnDraw();
   		
   		
   		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/ExamenApoyo/listExamenes/" + IdOrdenAten,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {     
           
            	//ADD NOTIFICACION
            	//ShowMessage(response.message);

            	if(response.data.length > 0){
            		//UPDATE DATATABLES
            	var datito = response.data;
            		//alert(JSON.stringify(datito));
            		 
            		$('#tab_examenApoyo').dataTable().fnAddData(response.data);
            		
            		
            	}else{
            		console.log("No hay Atenciones")
            	}
            },
        })
        
   	  }
   	
   	
   	
   	
    $("#btnAbrirExaApoyo").click(function(e) {
    	
   		LoadDataTableWithAjax();
   		
    	
    });
    
    
	$('#tab_examenApoyo').on('click', '#btnPageDeleteRow', function (e) {
		//dtFormPrincipal.row( $(this).parents('tr') ).remove().draw();
		
		
		
		var object =  $(this);
		//alert("rr"+$(this).data('codigo'));
	//	alert(IdOrdenAten);
		
		$.ajax({
            type: "DELETE",
            url: "${pageContext.request.contextPath}/ExamenApoyo/Eliminar/" + $(this).data('codigo') +","+ IdOrdenAten,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (response) {
            	//ADD NOTIFICACION
            	
                if(response.status === true){
                	//REMOVE ROW
                	//object.parent().parent().remove();
                	 $.toast({
             		    heading: 'Delete',
             		    text: 'Registro Eliminado Correctamente.',
             		   position: 'bottom-right',
             		    icon: 'success'
             		});
                	
                	 dtExamenPrin.row( object.parents('tr') ).remove().draw();
                	
                }
            }
           // , error: OnErrorCall
        });

		
		
	});
	
   	
    $("#btnRegistrarExamen").click(function(e) {
    	var gc = new Object();
    	
    	
    	var con = 0;
	    var IdTabla = 0;
	    var txt = 0;
	    var codFila=-1;
	    var arreglo = new Array();

	    /*var cadena={}; PARA COLOCAR UN IDENTIFICADOR*/
	    var cadena = []

	    $('#tab_examenApoyo tbody tr').each(function () {
	    	
	    	codFila=codFila+1;
	    	
	    

	        var codigoSegus_Examen = $(this).find("td").eq(0).html();
	        var idorden_Exa = $(this).find("td").eq(1).html();
	        var usuaCreacion_Exa = $(this).find("td").eq(2).html();
	        var nom_Examen = $(this).find("td").eq(3).html();
	        var fechSoli_Exa = $(this).find("td").eq(4).html();
	        
	        
	        var cantidad = $(".cbCantidad_Exa:eq("+codFila+")").val();
	        
	        var espec_Exa = $(".cbespec_Exa:eq("+codFila+")").val();
	        
	     
	            cadena[IdTabla++] = {codigoSegus_Examen: codigoSegus_Examen, idorden_Exa: idorden_Exa, usuaCreacion_Exa: usuaCreacion_Exa, 
	            		nom_Examen: nom_Examen, fechSoli_Exa: fechSoli_Exa,
	            		cantidad: cantidad,espec_Exa: espec_Exa
	            }

	    });

    	
    	gc.gic_detalle=cadena;
    	
    	
    	
    	
    	
    	
    	//gc.catDia_UsuarioCra=UsuCreacion;
       	//alert(JSON.stringify(gc));
       	
    	$.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/ExamenApoyo/Guardar",
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data : JSON.stringify(gc),
            async: false,
            success: function (response) {
            	
            		if(!response.status){
            			
            			alert("error");
						return false;
					}
            		//CARGAR DATATABLE
            		 $.toast({
             		    heading: 'Exito',
             		    text: 'Examenes Registrado Correctamente.',
             		   position: 'bottom-right',
             		    icon: 'success'
             		});
        	        LoadDataTableAjaxPrincipal();
            }
            //,
     //       error: OnErrorCall
        });
    	
    });
   	
       </script>
       
        
