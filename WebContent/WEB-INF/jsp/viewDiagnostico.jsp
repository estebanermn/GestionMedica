

<div class="dynamic-ajax-content" id="Contendiag">

<input type="hidden" id="hddIDATENCION"/>
   <br>
      <div class="col-md-11">
          <div class="row">
              <div class="col">
                  <div class="card my-3">
                      <div class="card-header">Sintomas y Signos Principales
                          <div class="options float-right">
							 <button type="button" class="btn btn-primary mr-1" id="btnAbrirDiagnostico" data-toggle="modal" data-target="#exampleModal">
                        Agregar Diagnosticos
                    </button>
							<input type="hidden" id="hddModalCodigo"/>
                          </div>
                      </div>
                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-12 table-responsive">
                                  <table  id="tab_logicDiagnostico" class="table table-bordered table-hover table-sortable">
                                      <thead>
                                          <tr>
                                          	<th class="text-center">IdDiagnostico</th>
                                          	<th class="text-center">IdOrden</th>
                                          	<th class="text-center">UsuCreacion</th>
                                              <th class="text-center">Diagnostico</th>
                                              <th class="text-center">Determinacion Diagnostica</th>
                                              <th class="text-center">Grado Afeccion</th>
                                              <th class="text-center">Principal</th>
                                              <th class="text-center">Acción</th>
                                          </tr>
                                      </thead>
                                      <tbody class="ui-sortable">
                                         <tr id='addr0'>
                                     
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
		<button type="button" id="btnRegistrarDiagnostico" class="btn btn-success btn-lg">Registrar</button>
		<button type="button" id="btnprobarJson" class="btn btn-success btn-lg" hidden="true" >Probar</button>
		
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Detalle de Diagnosticos</h5>
                      
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                
                                <div class="table-responsive dt-responsive">
					<table id="data-table-add" class="table table-striped table-bordered nowrap">
					<thead>
							
							
							<th>IdDianostico</th>
							<th>Descripcion</th>
							
						</thead>
						
						<tbody>
						</tbody>

					</table>
					</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    <!--  <button type="button" class="btn btn-primary">Guardar</button>-->
                                </div>
                            </div>
                        </div>
                    </div>
		
		
	
</div>
      
      

<script type="text/javascript">

		   	var IdOrdenAten = sessionStorage.getItem("IdOrden");
			//  alert("Id Orden: "+IdOrdenAten);
			  
	    	var UsuCreacion=document.getElementById('UsuarioCreacion').value;
	    	
    
   // alert("usuario: "+UsuCreacion);
   var dtFormPrincipal;
   var dt;
   
   	$(document).ready(function() {
   		
   		
   		document.getElementById('hddIDATENCION').value=IdOrdenAten;
   		
   		$('#data-table-add').dataTable().fnDestroy();
   		
   		 dt = $("#data-table-add").DataTable({
			responsive:!0,
			ordering			:	true,
			bScrollAutoCss		:	true,
			bStateSave			:	false,
			bAutoWidth			:	false,
			destroy 			:	true,
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
					{data : "catDia_Iddiagnostico"},
					{data : "catDia_Descripcion"},
					{data : "catDia_Iddiagnostico",'orderable': false, 
						'render': function(data, type, row, meta){
							var html ='<button class="btn btn-xs btn-danger" id="btnAgregarDiag"  data-codigo="' + data + '" data-descri="' 
							+ row.catDia_Descripcion + '"><i class="fa fa-cart-plus"></i></button>';								
							return html;
						}
					}
					] 
		});
   		
   	   
		   LoadDataTableWithAjax();
		   
   		
	       $('#data-table-add tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected');
	           }
	           else {
	               dt.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	              var datitoFila= dt.row(".selected").data();
	            //  alert(JSON.stringify(datitoFila));
	           }
	       } );
	          
	       
	       $('#tab_logicDiagnostico').dataTable().fnDestroy();
	       
   		 dtFormPrincipal = $("#tab_logicDiagnostico").DataTable({
   			 
   			responsive:!0,
			ordering			:	false,
			bScrollAutoCss		:	true,
			bStateSave			:	false,
			bAutoWidth			:	false,
			destroy 			:	true,
			bScrollCollapse		:	false,
			searching			:	true,
			paging				:	true,
			pagingType			:   "full_numbers",
			iDisplayLength		:	10,
			responsive			:	true,
			bLengthChange		: 	false,
			  "oLanguage": {
				  "sEmptyTable": "No hay registros disponibles",
				  "sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)",
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
				
			
					{data : "catDia_Iddiagnostico"},
					{data : "catDia_IdOrdenAten"},
					{data : "catDia_UsuarioCra"},
					{data : "catDia_Descripcion"},
					{data : "catDia_DetDiagostico",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							
							//document.getElementById("mySelect").selectedIndex = "2";
							var html;
					
					if(data=="Presuntivo"){
						
						 html ='<select class="form-control cbdeterdiagnostico"><option value="Principal">Principal</option><option value="Presuntivo" selected>Presuntivo</option><option value="Repetitivo">Repetitivo</option></select>'
								
					}else if(data=="Repetitivo"){
						 html ='<select class="form-control cbdeterdiagnostico"><option value="Principal">Principal</option><option value="Presuntivo">Presuntivo</option><option value="Repetitivo" selected>Repetitivo</option></select>'
								
					}else{
						 html ='<select class="form-control cbdeterdiagnostico"><option value="Principal" selected>Principal</option><option value="Presuntivo">Presuntivo</option><option value="Repetitivo">Repetitivo</option></select>'
								
					}
					
					return html;
				
						}
					
					}
					,
					
					{data : "catDia_GradoAfeccion",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var html;	
							
							if(data=="Severo"){
								
								 html ='<select  class="form-control cbogradoafecto"><option value="Leve">Leve</option><option value="Moderado">Moderado</option><option value="Severo" selected>Severo</option></select>';
							}else if(data=="Moderado"){
								html ='<select  class="form-control cbogradoafecto"><option value="Leve">Leve</option><option value="Moderado" selected>Moderado</option><option value="Severo" >Severo</option></select>';
							}else{
								 html ='<select  class="form-control cbogradoafecto"><option value="Leve" selected>Leve</option><option value="Moderado">Moderado</option><option value="Severo">Severo</option></select>';
								 
							}
					
						return html;
					
						}
					
					
					
					}
					
					,
					
					{data : "catDia_Principal",'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var html;
							
							if(data=="Si"){
								html ='<select class="form-control cbodiaprinci"><option value="Si" selected>Si</option><option value="No">No</option></select>'
							}else{
								html ='<select class="form-control cbodiaprinci"><option value="Si" >Si</option><option value="No" selected>No</option></select>'
							}
							
					 
						return html;
						
						
						}
					
					}
					,
					{data : "catDia_Iddiagnostico",'orderable': false, 
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
	       
   		
	       $('#tab_logicDiagnostico tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected');
	               
	           }
	           else {
	        	   dtFormPrincipal.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	              var datitoFila= dtFormPrincipal.row(".selected").data();
	              
	            //  alert(JSON.stringify(datitoFila));
	           }  
	       } );
	       
   
   	});
   	 
   	

	$('body').on('click', '#btnAgregarDiag', function (e) {
	//alert("Diagnostico");
		
		dtFormPrincipal.row.add( {
	        "catDia_Iddiagnostico": $(this).data('codigo'),
	        "catDia_Descripcion": $(this).data('descri'),
	    	"catDia_IdOrdenAten": IdOrdenAten,
			"catDia_UsuarioCra": UsuCreacion
	    } ).draw();
		
		$('#hddModalCodigo').val($(this).data('codigo'));
		//$('#DesDiagnostico').val($(this).data('descri'));
		$('#exampleModal').modal('hide');
		
		 
	});
	
 	
   	
   	
   	function LoadDataTableWithAjax(){
   		
   		$('#data-table-add').dataTable().fnClearTable();
   		$('#data-table-add').dataTable().fnDraw();
   		
   		$.ajax({
   	        type: "GET",
   	        url: "${pageContext.request.contextPath}/CatalogoDiagnostico/CataDiagCIE10",
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
   	        		  
   	        		$('#data-table-add').dataTable().fnAddData(response.data);
   	        	}else{
   	        		alert("error: No hay data");
   	        	}
   	        },
   	    })
   	  }
   	
   	
   	function LoadDataTableAjaxPrincipal(){
   		
   		$('#tab_logicDiagnostico').dataTable().fnClearTable();
   		$('#tab_logicDiagnostico').dataTable().fnDraw();
   		
   		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/CatalogoDiagnostico/listDiagnosticos/" + IdOrdenAten,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {     
           
            	//ADD NOTIFICACION
            	//ShowMessage(response.message);

            	if(response.data.length > 0){
            		//UPDATE DATATABLES
            		//var datito = response.data;
            		//alert(JSON.stringify(datito));
            		  
            		$('#tab_logicDiagnostico').dataTable().fnAddData(response.data);
            	}else{
            		console.log("No hay Atenciones")
            	}
            },
        })
        
   	  }
   	
   	
   	
   	
    $("#btnprobarJson").click(function(e) {
    
    	
    });
    
    
	$('#tab_logicDiagnostico').on('click', '#btnPageDeleteRow', function (e) {
	
		
		var object =  $(this);
		//alert("rr"+$(this).data('codigo'));
		//alert(IdOrdenAten);
		
		$.ajax({
            type: "DELETE",
            url: "${pageContext.request.contextPath}/CatalogoDiagnostico/Eliminar/" + $(this).data('codigo') +","+ IdOrdenAten,
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
                	dtFormPrincipal.row( object.parents('tr') ).remove().draw();
                	
                }
            }
           // , error: OnErrorCall
        });

		
		
		
	});
	
	
	
    $("#btnRegistrarDiagnostico").click(function(e) {
    	
    	var con = 0;
	    var IdTabla = 0;
	    var txt = 0;
	    var codFila=-1;
	    var arreglo = new Array();
	    /*var cadena={}; PARA COLOCAR UN IDENTIFICADOR*/
	    var cadena = []
	    
	    $('#tab_logicDiagnostico tbody tr').each(function () {
	    	codFila=codFila+1;
	    	
	        var catDia_Iddiagnostico = $(this).find("td").eq(0).html();
	        var catDia_IdOrdenAten = $(this).find("td").eq(1).html();
	        var catDia_UsuarioCra = $(this).find("td").eq(2).html();
	        var catDia_Descripcion = $(this).find("td").eq(3).html();
	        var catDia_DetDiagostico = $(".cbdeterdiagnostico:eq("+codFila+")").val();
	        var catDia_GradoAfeccion = $(".cbogradoafecto:eq("+codFila+")").val();
	        var catDia_Principal = $(".cbodiaprinci:eq("+codFila+")").val();
	        
	        
	            cadena[IdTabla++] = {catDia_Iddiagnostico: catDia_Iddiagnostico, catDia_IdOrdenAten: catDia_IdOrdenAten, catDia_UsuarioCra: catDia_UsuarioCra, 
	            		catDia_Descripcion: catDia_Descripcion, catDia_DetDiagostico: catDia_DetDiagostico,
	            		catDia_GradoAfeccion: catDia_GradoAfeccion,catDia_Principal:catDia_Principal
	            }
	            
	            
	    });

	  // var data1 = JSON.stringify(cadena);
	   // alert(data1);
	    

    	
    	var gc = new Object();
    	
    	gc.gic_detalle=cadena; // 
    	
    	//gc.catDia_UsuarioCra=UsuCreacion;
    	
    	
      // 	alert(JSON.stringify(gc))
       	
       	
    	$.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/CatalogoDiagnostico/Guardar",
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
             		    text: 'Diagnosticos Registrado Correctamente.',
             		   position: 'bottom-right',
             		    icon: 'success'
             		}); 
            		
        	        LoadDataTableAjaxPrincipal();
        	      //window.location.reload();
        	    	//$("#Contendiag").load('../CatalogoDiagnostico/WebEmergencia');
            },
     //       error: OnErrorCall
        });
    	
    });
  
       </script>
       
        
