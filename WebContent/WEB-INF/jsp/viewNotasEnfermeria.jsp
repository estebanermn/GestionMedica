<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
  
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
Date date = new Date();
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>
 

<div class="dynamic-ajax-content" id="Contnotas">
<form id="formMantNotaEnfermeria" > 
        <br>
        
       <input type="text" id="hddModalCodigo" placeholder="Codigo Oculto"  hidden="true"/> 
       
       <div class="card-body">
                          <div class="row">
                              <div class="col-md-12 table-responsive">
                                  <table  id="tab_logicDiagnostico" class="table table-bordered table-hover table-sortable">
                                      <thead>
                                          <tr>
                                          	<th class="text-center" hidden="true">IdDiagnostico</th>
                                          	<th class="text-center" hidden="true">IdOrden</th>
                                          	<th class="text-center" hidden="true" >UsuCreacion</th>
                                              <th class="text-center">Diagnostico</th>
                                              <th class="text-center" hidden="true">Determinacion Diagnostica</th>
                                              <th class="text-center" hidden="true">Grado Afeccion</th>
                                              <th class="text-center" hidden="true">Principal</th>
                                              <th class="text-center" hidden="true">Acción</th>
                                          </tr>
                                      </thead>
                                      <tbody class="ui-sortable">
                                         <tr id='addr0'>
                                     
                                          	  <td data-name="name" hidden="true">
                                              </td>
                                              <td data-name="name" hidden="true" >
                                              </td>
                                              <td data-name="name" hidden="true" >
                                              </td>
                                              <td data-name="name">
                                              </td>
                                              <td data-name="name" hidden="true">
                                              </td>
                                              <td data-name="name" hidden="true">
                                              </td>
                                              <td data-name="name" hidden="true">
                                              </td>
                                               <td data-name="name" hidden="true">
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
       
        <div class="col-md-2">
           <p>Fecha Nota Enfermeria</p>
 <input type="date" id="fch" value="<%=dateFormat.format(date)%>" class="form-control" readonly="readonly"
/>
            </div>
            <br>
          <div class="form-group">
              <label for="exampleFormControlTextarea1">Nota Enfermeria:</label> 
              <textarea class="form-control textarea-maxlength" id="txtnota" rows="4" maxlength="2000"></textarea>
          </div>
          
    
      
      <div class="col-md-11">
          <div class="form-group">
          
             <br>
			<button class="btn btn-primary" type="button" id="btnGuardarNota" >Guardar
			<img src="../resources/img/save.png"/>
			</button>
              
          </div>
      </div>
      
      
      </form>


  
    <script type="text/javascript">
       
	   
	   var IdOrdenAten = sessionStorage.getItem("IdOrden");
		// alert("Id Orden: "+IdOrdenAten);
		  
    var UsuCreacion=document.getElementById('UsuarioCreacion').value;
    
    var Fecha=document.getElementById('fch').value;
   // alert("usuario: "+IdOrdenAten);
   // alert("usuario: "+UsuCreacion);
   // alert("usuario: "+Fecha); 
    
       $(document).ready(function() {
    	   $('#tab_logicDiagnostico').dataTable().fnClearTable(); 
        	 $('#tab_logicDiagnostico').dataTable().fnDestroy();
        	 

  		 dtFormPrincipal = $("#tab_logicDiagnostico").DataTable({
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
  			
  		
  				{data : "catDia_Iddiagnostico" ,  "visible": false},
  				{data : "catDia_IdOrdenAten",
  	                "visible": false},
  				{data : "catDia_UsuarioCra",
  	                    "visible": false},
  				{data : "catDia_Descripcion"},
  				{data : "catDia_DetDiagostico","visible": false,'orderable': false, 
  					'render': function ( data, type, full, meta ) {
  				var html ='<select class="form-control cbdeterdiagnostico"><option value="Principal" selected>Principal</option><option value="Presuntivo">Presuntivo</option><option value="Repetitivo">Repetitivo</option></select>'
  					return html;
  					}
  				}
  				,
  				
  				{data : "catDia_GradoAfeccion","visible": false,'orderable': false, 
  					'render': function ( data, type, full, meta ) {
  				var html ='<select  class="form-control cbogradoafecto"><option value="Leve" selected>Leve</option><option value="Moderado">Moderado</option><option value="Severo">Severo</option></select>'
  					return html;
  					}
  				}
  				
  				,
  				
  				{data : "catDia_Principal","visible": false,'orderable': false, 
  					'render': function ( data, type, full, meta ) {
  				var html ='<select class="form-control cbodiaprinci"><option value="Si" selected>Si</option><option value="No">No</option></select>'
  					return html;
  					}
  				
  				}
  				,
  				{data : "catDia_Iddiagnostico","visible": false,'orderable': false, 
  					'render': function ( data, type, full, meta ) {
  						var 
  						html = '<button class="btn btn-xs btn-primary" id="btnPageDeleteRow" data-codigo="' + data + '">Eliminar</button>';
  						
  						return html;
  					}
  				}
  				
  				]
  				
  				
  		});
  		
  		LoadDataTableAjaxPrincipal();
  		
		//AJAX PARA OBTENER UN USUARIO
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/NotasEnfermeria/Buscar/" + IdOrdenAten,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
  			success: function (response) {

     	//ADD NOTIFICACION
       if(response.status === true){
    	   
       	var d = response.data;
       //	JSON.stringify(d.nombreCompletod);
    //  alert(JSON.stringify(d));
       	      
            $("#hddModalCodigo").val($.trim(d.enf_idordenatencion));
     	//$('#cbFormaInicio option[value="' + $.trim(d.emf_formainicio) + '"]').attr("selected", "selected");
			$("#txtnota").val($.trim(d.nota_enfermeria));
					
       }else{
      	 
      	//alert("SIN DATA");
    
      	 
       }
  	},
	});

    	   
       });
       
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
	            		var datito = response.data;
	            		//Jsondata = response.data;
	            		//alert(JSON.stringify(datito));
	            		$('#tab_logicDiagnostico').dataTable().fnAddData(response.data);
	            		
	            	}else{
	            		console.log("No hay Atenciones")
	            	} 
	            },
	        })
	        
	   	  }
	
            
    	   $("#btnGuardarNota").click(function(e) {
    		   
			 var formTOJSON= JSON.stringify({
				 	"enf_idordenatencion":IdOrdenAten,
				 	"fecha_nota":$("#fch").val(),
				 	"nota_enfermeria":$("#txtnota").val(),
					"enf_usuarioCreacion":UsuCreacion
					
					
					
			 });
			 
			 var op = $.trim($("#hddModalCodigo").val());
			 
			 
			 $.ajax({
				 type: (op.length == 0 ? "POST" : "PUT"), //SI TIENE ES UNA ACTUALIZACION
				 
	            url: "${pageContext.request.contextPath}/NotasEnfermeria/RegisUpd",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {                                            
	            
	           		if(response.status === true){
	           			
	           		 $.toast({
             		    heading: 'Exito',
             		    text: 'Registrado Correctamente',
             		    position: 'bottom-right',
             		    icon: 'success'
             		});
	           		 
	           		LimpiartxtNota();
	           			$("#formMantNotaEnfermeria")[0].reset();
	           		   //location.reload();
	           		   $("#Contnotas").load('../NotasEnfermeria/WebEnfermeria');
	           		}else{
	           			
	           			$.toast({
						    heading: 'Error',
						    text: 'No se Pudo Registrar ',
						    position: 'bottom-right',
						    icon: 'error'
						});
	           			
	           		}
	               
	            },
	        });
		  });
       
       
       
       function LimpiartxtNota() {
 		  document.getElementById('txtnota').value = '';
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
    
  
