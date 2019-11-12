

<div class="dynamic-ajax-content">
<form id="formMantSuministrarReceta" > 
        <br>
        <input type="hidden" id="hddModalCodigo" placeholder="Codigo Oculto"  />
       <br>
      <br>
      <div class="col-md-11">
          <div class="row">
              <div class="col">
                  <div class="card my-3">
                 
                  
                      <div class="card-header">SUMINISTRAR RECETA
                          <div class="options float-right">
							 <button type="button" class="btn btn-primary mr-1" data-toggle="modal" data-target="#exampleModal">
                        Agregar Componentes
                    </button>
							<input type="hidden" id="hddModalCodigo"/>
                          </div>
                      </div>
                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-12 table-responsive">
                                  <table  id="tab_Componentes" class="table table-bordered table-hover table-sortable">
                                      <thead>
                                          <tr>
                                          <th class="text-center">IdAtencion</th>
                                          	<th class="text-center">idComponente</th>
                                          	<th class="text-center">NombreComponente</th>
                                          	 <th class="text-center">Usuario</th>
                                             <th class="text-center">cantidad</th>
                                          	<th class="text-center">Dias</th>
                                              <th class="text-center">Especificaciones</th>
                                              
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
      
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                
                               
                                
                                    <h5 class="modal-title" id="exampleModalLabel">Detalle Componentes</h5>
                                    <br>
                                </div>
                                <div class="modal-body">
                                
                                <div class="col-md-11">
					            <label for="fname" class="col-form-label">Cantidad:</label> 
					            <div class="col-md-2 custom-control-inline">
					                <input type="number"  id="txtCantidadReceta" class="form-control all-options" placeholder="Ingresar Cantidad" maxlength="3" >
					            </div>
					            
					   
					       
              						 <div class="col-md-8 custom-control-inline">
						            <label for="message-text" class="col-form-label">Especificaciones:</label>
						            <textarea class="form-control col-md-6" id="txtEspeciReceta"></textarea>
						          </div>
					    
					            
					
					            
					            
					        	</div>
					        	 <br>
					        	<div class="col-md-9">
					          
					            <label for="fname" class="col-form-label col-md-1">Dias :</label> 
					            <div class="col-md-2 custom-control-inline">
					                <input type="number"  id="txtdiasReceta" class="form-control all-options" placeholder="Ingresar Cantidad" maxlength="3" >
					            </div>
					            
					        	</div>
                                
                                <div class="table-responsive dt-responsive">
					<table id="data-table-addComponentes" class="table table-striped table-bordered nowrap">
					<thead>
							
							
							<th>Codigo Componente</th>
							<th>Descripcion Componente</th>
							<!--
							<th>Cantidad</th>
							<th>Dias</th>
							<th>Indicaciones</th>-->
							
							<th>Accion</th>
						</thead>
						
						<tbody>
						</tbody>

					</table>
					</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
      
      
      
     <br>
 
      
      <div class="col-md-11">
          <div class="form-group">
          
             <br>
			<button class="btn btn-primary" type="button" id="btnRegistrarSumiReceta" >Registrar
			<img src="../resources/img/save.png"/>
			</button>
			
		<!--<button class="btn btn-primary" type="button" id="btnProbar" >Probar
			
			</button>-->	
              
          </div>
      </div>
      
      
      </form>


  
    <script type="text/javascript">
    
    
    function solonumeros(e)
    {
	var key = window.event ? e.which : e.keyCode;
        if(key<48||key>57)
            e.preventDefault();
    }
    
	   var IdOrdenAten = sessionStorage.getItem("IdOrden");
		//  alert("Id Orden: "+IdOrdenAten);
		  
	 var UsuCreacion=document.getElementById('UsuarioCreacion').value;
 	//alert("usuario: "+UsuCreacion);
    
    
 	var dtSuministrarRecePri ;
 	var dtAgre;
	
	 $(document).ready(function(){
			$('#data-table-addComponentes').dataTable().fnDestroy();
			
			dtAgre = $("#data-table-addComponentes").DataTable({
				responsive:!0,
				ordering			:	true,
				bScrollAutoCss		:	true,
				bStateSave			:	false,
				bAutoWidth			:	false,
				bScrollCollapse		:	false,
				searching			:	true,
				paging				:	true,
				pagingType			:   "full_numbers",
				iDisplayLength		:	5,
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
						{data : "idComponente"},
						{data : "nombreComponente"},
						
						{data : "idComponente",'orderable': false, 
							'render': function(data, type, row, meta){
								var html ='<button class="btn btn-xs btn-danger" id="btnModalSelect"  data-codigo="' + data + '" data-descri="' + row.nombreComponente + '"><i class="fa fa-cart-plus"></i></button>';								
								return html;
								
							}
						}
						]  
			});
		 
		 LoadDataTableWithAjax();
		 
		 
			$('#tab_Componentes').dataTable().fnDestroy();
		 dtSuministrarRecePri = $("#tab_Componentes").DataTable({
	   			responsive:!0,
				ordering			:	false,
				bScrollAutoCss		:	true,
				bStateSave			:	false,
				bAutoWidth			:	false,
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
					
						{data : "idOrden_Sumi"},
						{data : "idComponente"},
						{data : "nombreComponente"},
						{data : "usuSumiReceta"},
						{data : "cantidad_SumiReceta"},
						{data : "dias_SumiReceta"},
						{data : "especi_SumiReceta"},
						
						{data : "idComponente",'orderable': false, 
							'render': function ( data, type, full, meta ) {
								var html = '<button class="btn btn-xs btn-primary" id="btnPageDeleteRow" data-codigo="' + data + '">Eliminar</button>';
								
								return html;
							}
						}
						
						]
						
						
	   		});
		 
		 LoadDataTableAjaxPrincipal();
		 
	 });
	 
	 
	
	 
		function LoadDataTableWithAjax(){
		   	
	   		$('#data-table-addComponentes').dataTable().fnClearTable();
	   		$('#data-table-addComponentes').dataTable().fnDraw();
	   		
	   		
	   		$.ajax({
	   	        type: "GET",
	   	        url: "${pageContext.request.contextPath}/SuministrarReceta/ComponenteSumiReceta",
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
	   	        		  
	   	        		$('#data-table-addComponentes').dataTable().fnAddData(response.data);
	   	        	}else{
	   	        		alert("error: No hay data");
	   	        	}
	   	        },
	   	    })
	   	  }
		
		
		
	
		$('body').on('click', '#btnModalSelect', function (e) {
			
			//alert("Suministar Receta");
			
			var cantRece= $("#txtCantidadReceta").val();
			var diasRece= $("#txtdiasReceta").val();
			var espRece= $("#txtEspeciReceta").val();
			
			if(cantRece==""){
				alert("Debe Ingresar la Cantidad");
			}else if(diasRece==""){
				alert("Debe Ingresar los Dias");
			}else if(espRece==""){
				alert("Debe Ingresar Especificaciones");
			}
			
			else{
				dtSuministrarRecePri.row.add( {
					
					 "idOrden_Sumi": IdOrdenAten,
			        "idComponente": $(this).data('codigo'),
			        "nombreComponente":  $(this).data('descri'),
			        "usuSumiReceta":  UsuCreacion,
			        "cantidad_SumiReceta":  cantRece,
			        "dias_SumiReceta": diasRece,
			        "especi_SumiReceta":espRece
			    } ).draw();
				
		
			
			$('#exampleModal').modal('hide');
		
			document.getElementById('txtCantidadReceta').value = '';
			document.getElementById('txtdiasReceta').value = '';
			document.getElementById('txtEspeciReceta').value = '';
			
			}
		});
		
			
			
		$('body').on('click', '#btnRegistrarSumiReceta', function (e) {
			var gc = new Object();
			gc.gic_detalle= dtSuministrarRecePri.rows().data().toArray();
			//alert(JSON.stringify(gc));
			$.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/SuministrarReceta/Guardar",
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
             		    text: 'Rmedicamentos Registrados Correctamente.',
             		   position: 'bottom-right',
             		    icon: 'success'
             		});
	            		
	        	       LoadDataTableAjaxPrincipal()
	            },
	     //       error: OnErrorCall
	        });	
		});
		
		
		
		$('#tab_Componentes').on('click', '#btnPageDeleteRow', function (e) {
		
			var object =  $(this);
			//alert("rr"+$(this).data('codigo'));
			//alert(IdOrdenAten);
			
			$.ajax({
	            type: "DELETE",
	            url: "${pageContext.request.contextPath}/SuministrarReceta/Eliminar/" + $(this).data('codigo') +","+ IdOrdenAten,
	            crossDomain: true,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: false,
	            success: function (response) {
	            	
	                if(response.status === true){
	                	dtSuministrarRecePri.row( object.parents('tr') ).remove().draw();
	                	
	                }
	            }
	        });
		});
		
		
		
		
		function LoadDataTableAjaxPrincipal(){
			
	   		$('#tab_Componentes').dataTable().fnClearTable(); 
	   		$('#tab_Componentes').dataTable().fnDraw();
	   		
	   		$.ajax({
	            type: "GET",
	            url: "${pageContext.request.contextPath}/SuministrarReceta/listSumiReceta/" + IdOrdenAten,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            success: function (response) {  
	            	
	            	//ADD NOTIFICACION
	            	//ShowMessage(response.message);

	            	if(response.data.length > 0){
	            		//UPDATE DATATABLES
	            	//	var datito = response.data;
	            		//alert(JSON.stringify(datito));
	            		
	            		$('#tab_Componentes').dataTable().fnAddData(response.data);
	            	}else{
	            		console.log("No hay Atenciones")
	            	}
	            },
	        })
	        
	   	  }
			
		
			
			
		
		
	
	
	  
	
       </script> 
       
       
       
       
       
         <script type="text/javascript">
        jQuery(function ($) {
            // any code put here will be run after content attach to ajax output container and before
            // controll return to main javascript file.


            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpAjaxContainerReady, function (event) {
                // fire AFTER all transition done and your ajax content is shown to user.
                $('.default-options').maxlength({
                    warningClass: "badge badge-info",
                    limitReachedClass: "badge badge-warning"
                });
                $('.threshold-20').maxlength({
                    threshold: 20,
                    warningClass: "badge badge-info",
                    limitReachedClass: "badge badge-warning"
                });

                $('input.all-options').maxlength({
                    alwaysShow: true,
                    threshold: 10,
                    warningClass: "badge badge-success",
                    limitReachedClass: "badge badge-danger",
                    separator: ' de ',
                    preText: 'Tienes ',
                    postText: ' caracteres restantes.',
                    validate: true
                });
                $('.textarea-maxlength').maxlength({
                    alwaysShow: true,
                    allowOverMax: false,
                    twoCharLinebreak: false,
                    warningClass: "badge badge-info",
                    limitReachedClass: "badge badge-warning"
                });
            });

            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerResizeEventName, function (event) {
                // fire when user resize browser window or sidebar hide / show
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenCompress, function (event, card) {
                // when card compress by pressing the top right tool button
            });
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.cardFullscreenExpand, function (event, card) {
                // when card Expand by pressing the top right tool button
            });

            /**
             * When another sidebar menu item pressed and before container replaced with new ajax content.
             * You can cancel, destroy, or remove any thing here before replace main output ajax container.
             * returning false will cancel the new request and do nothing.
             **/
            $(javatmp.settings.defaultOutputSelector).on(javatmp.settings.javaTmpContainerRemoveEventName, function (event) {
                $(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenCompress);
                $(javatmp.settings.defaultOutputSelector).off(javatmp.settings.cardFullscreenExpand);
                return true;
            });
        });
        jQuery(document).ready(function () {
            (function ($) {

            }(jQuery));
        });
    </script>
   
    


</div>
    
  
