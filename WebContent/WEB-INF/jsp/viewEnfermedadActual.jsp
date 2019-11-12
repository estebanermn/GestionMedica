

<div class="dynamic-ajax-content" id="Contenfermedad">
<form id="formMantEnfermedadAct" > 
        <br>
        
        <input type="hidden" id="hddModalCodigo" placeholder="Codigo Oculto"  />
     
        <div class="col-md-9">
            <label for="fname" class="col-form-label col-md-2">Motivo Ingreso:</label> 
            <div class="col-md-9 custom-control-inline">
                <input type="text"  id="txtMotivoIngreso" class="form-control all-options" placeholder="Ingresar Motivo Ingreso" required="required" maxlength="130" disabled>
            </div>
        </div>
        <br>    
       <div class="col-md-9">
        <label for="fname" class="col-form-label col-md-2">Forma de Inicio:</label> 
       <div class="col-md-4 custom-control-inline">
        <select class="form-control required" id="cbFormaInicio">
        <option value="">
        Seleccione...
        </option>
        <option>Súbita</option>
        <option>Crónica</option>
        <option>Brusco</option>
        <option>Insidioso</option>
        <option>Gradual</option> 
        </select>
        </div>
        </div>
        
        <div class="col-md-9">
        <label for="fname" class="col-form-label col-md-2">Curso de Enfermedad:</label> 
        <div class="col-md-4 custom-control-inline">
        <select class="form-control required" id="cbCursoEnfermedad">
        <option value="">
        Seleccione...
        </option>
        <option>Agudo</option>
        <option>Sub Agudo</option>
        <option>Crónico</option>
        <option>Recurrente</option>
        <option>Progresivo</option>
        <option>Estacionario</option>
        </select>
        </div>
        </div>
        <br>
        
         <div class="col-md-9">
        <label for="fname" class="col-form-label col-md-2">Tiempo de Enfermedad:</label> 
        
        <div class="col-md-4 custom-control-inline">
                <input type="text"  id="txtTiemEnfer" class="form-control" placeholder="Ingresar Tiempo Enfermedad" onkeypress="solonumeros(event);" >
            </div>
            
        <div class="custom-control-inline">
        <select class="form-control required" id="cbUnidad">
        <option value="">
        Seleccione...
        </option>
        <option>Horas</option>
        <option>Dias</option>
        <option>Semanas</option>
        <option>Meses</option>
        <option>Años</option>
        </select>
        </div>
        </div>
        <br>
        
        
      <div class="col-md-11">
      
      
      <!--     <div class="row">
              <div class="col">
                  <div class="card my-3">
                      <div class="card-header">Sintomas y Signos Principales
                          <div class="options float-right">
                          
                             <a href="#" class="settings">
                                  <i class="fa fa-cog"></i>
                              </a> <a href="#" class="collapse">
                                  <i class="fa fa-chevron-up"></i>
                              </a> <a href="#" class="reload">
                                  <i class="fa fa-sync"></i>
                              </a> <a href="#" class="fullscreen">
                                  <i class="fa fa-expand"></i></a> 
                                  <a href="#" class="remove">
                                      <i class="fa fa-times">
                                      </i>
                                  </a>
                                  
<button id="add_row" class="btn btn-primary float-right">Add Row</button>
                          </div>
                      </div>
                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-12 table-responsive">
                                  <table class="table table-bordered table-hover table-sortable" id="tab_logic">
                                      <thead>
                                          <tr>
                                              <th class="text-center">Name</th>
                                              <th class="text-center">Operations</th>
                                          </tr>
                                      </thead>
                                      <tbody class="ui-sortable">
                                          <tr id="addr1" data-id="1" class="" style="">
                                              <td data-name="name">
                                                  <input type="text" name="name1" placeholder="Name" class="form-control">
                                              </td>
                                                 <td data-name="del">
                                                      <button name="del1" class="btn btn-sm btn-danger fa fa-times row-remove" value="">
                                                      </button>
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
          
          -->
          
          <div class="form-group">
              <label for="exampleFormControlTextarea1">Relato Cronologico:</label> 
              <textarea class="form-control textarea-maxlength" id="txtRelatCronologico" rows="3" maxlength="800"></textarea>
          </div>
          
          
       
         <!-- 
          <link href="assets/addTable.css" rel="stylesheet" type="text/css"/>
          <script src="assets/agregarRowTable.js" type="text/javascript"></script>--> 
          
      </div>
      
      <div class="col-md-11">
          <div class="form-group">
          
              <label for="exampleFormControlTextarea1">Examen Clinico:</label> 
              <textarea class="form-control textarea-maxlength"  id="txtExamenClinico" rows="3" required="required" maxlength="800"></textarea>

              
          </div> 
      </div>
      
      <div class="col-md-11">
          <div class="form-group">
          
          
             <br>
			<button class="btn btn-primary" type="button" id="btnGuardarEnfer" >Guardar
			<img src="../resources/img/save.png"/>
			</button>
              
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
       
       $(document).ready(function() {
    
		//AJAX PARA OBTENER UN USUARIO
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/EnfermedadActual/Buscar/" + IdOrdenAten,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
  			success: function (response) {

     	//ADD NOTIFICACION
       if(response.status === true){
    	   
       	var d = response.data;
       //	JSON.stringify(d.nombreCompletod);
       //	alert(JSON.stringify(d));
       	
            $("#txtMotivoIngreso").val($.trim(d.emf_motivoingreso));
            
            $("#hddModalCodigo").val($.trim(d.emf_idordenatencion));
		
			//$('#cbFormaInicio option[value="' + $.trim(d.emf_formainicio) + '"]').attr("selected", "selected");
			$("#cbFormaInicio").val($.trim(d.emf_formainicio));
			
			$("#cbCursoEnfermedad").val($.trim(d.emf_cursoenfermedad));
			
			$("#txtTiemEnfer").val($.trim(d.emf_tiempoenfermedad));	
			
			//$('#cbUnidad option[value="' + $.trim(d.emf_unidadenfermedad) + '"]').attr("selected", "selected");
			
			$("#cbUnidad").val($.trim(d.emf_unidadenfermedad));
			$("#txtRelatCronologico").val($.trim(d.emf_relatocronologico));
			$("#txtExamenClinico").val($.trim(d.emf_examenclinico));
		
			
       }else{
      	 
      	//alert("SIN DATA");
      	
      	 
       }
  	},
	});

    	   
       });
       
       
       
       
    	   $("#btnGuardarEnfer").click(function(e) {
    		   
    		   if($("#txtMotivoIngreso").val()==""){
    			   $.toast({
    	 			    heading: 'Error',
    	 			    text: 'Ingresar Motivo de Ingreso.',
    	 			    position: 'top-center',
    	 			    icon: 'warning'
    	 			});
    	 		   return;
    		   }else if($('#cbFormaInicio').val()==""){
    			   $.toast({
   	 			    heading: 'Error',
   	 			    text: 'Ingresar Forma de Inicio.',
   	 			    position: 'top-center',
   	 			    icon: 'warning'
   	 			});
   	 		   return;
    			   
    		   }else if($('#cbCursoEnfermedad').val()==""){
    			   $.toast({
      	 			    heading: 'Error',
      	 			    text: 'Ingresar Curso de Enfermedad.',
      	 			    position: 'top-center',
      	 			    icon: 'warning'
      	 			});
      	 		   return;
    		   }else if($('#txtTiemEnfer').val()==""){
    			   
    			   $.toast({
     	 			    heading: 'Error',
     	 			    text: 'Ingresar Tiempo de Enfermedad.',
     	 			    position: 'top-center',
     	 			    icon: 'warning'
     	 			});
     	 		   return;
    			   
    		   }else if($('#cbUnidad').val()==""){
    			   
    			   $.toast({
     	 			    heading: 'Error',
     	 			    text: 'Ingresar Unidad Tiempo de Enfermedad.',
     	 			    position: 'top-center',
     	 			    icon: 'warning'
     	 			});
     	 		   return;
    			   
    		   }else if($('#txtRelatCronologico').val()==""){
    			   $.toast({
    	 			    heading: 'Error',
    	 			    text: 'Ingresar Relato Cronologico.',
    	 			    position: 'top-center',
    	 			    icon: 'warning'
    	 			});
    	 		   return;
    		   }
    		  
			 var formTOJSON= JSON.stringify({
				 	"emf_idordenatencion":IdOrdenAten,
				 	"emf_motivoingreso":$("#txtMotivoIngreso").val(),
				 	"emf_formainicio":$('#cbFormaInicio').val(), 
				 	"emf_cursoenfermedad":$('#cbCursoEnfermedad').val(),
				 	"emf_tiempoenfermedad":$('#txtTiemEnfer').val(),
				 	"emf_unidadenfermedad":$('#cbUnidad').val(),
					"emf_relatocronologico":$('#txtRelatCronologico').val(),
					"emf_examenclinico":$('#txtExamenClinico').val(),
					"emf_usuarioCreacion":UsuCreacion
			 });
			 
			 var op = $.trim($("#hddModalCodigo").val());
			 
			 
			 $.ajax({
				 type: (op.length == 0 ? "POST" : "PUT"), //SI TIENE ES UNA ACTUALIZACION
				 
	            url: "${pageContext.request.contextPath}/EnfermedadActual/RegisUpd",
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
             		    position: 'top-center',
             		    icon: 'success' 
             		});
	           		 
	           		LimpiartxtEnferActual();
	           			$("#formMantEnfermedadAct")[0].reset();
	           			
	           			$("#Contenfermedad").load('../EnfermedadActual/WebEmergencia');
	           		
	           	
                    
	           		}else{
	           			
	           			$.toast({ 
						    heading: 'Error',
						    text: 'No se Pudo Registrar ',
						    position: 'top-center',
						    icon: 'error'
						});
	           			
	           		}
	               
	            },
	        });
		  });
       
    	   var IdOrdenAte = sessionStorage.getItem("IdOrden");
   	
          $(document).ready(function() {
       
   		//AJAX PARA OBTENER UN USUARIO
   		$.ajax({
               type: "GET",
               url: "${pageContext.request.contextPath}/EnfermedadActual/BuscarMotivo/" + IdOrdenAte,
               crossDomain: true,
               contentType: "application/json; charset=utf-8",
               dataType: "json",
               async: true,
     			success: function (response) {

        	//ADD NOTIFICACION
          if(response.status === true){
       	   
          	var d = response.data;
          	
          //	JSON.stringify(d.nombreCompletod);
      // alert(JSON.stringify(d));
            $("#txtMotivoIngreso").val($.trim(d.emf_motivoingreso));
   					
          }else{
         	 
         	//alert("SIN DATA");
     
         	 
          }
     	},
   	});

       	   
          }); 
    	   
    	   
       
       function LimpiartxtEnferActual() {
 		  document.getElementById('txtMotivoIngreso').value = '';
 		  document.getElementById('cbFormaInicio').value = '';
 		  document.getElementById('cbCursoEnfermedad').value = '';
 		  document.getElementById('txtTiemEnfer').value = '';
 		  document.getElementById('cbUnidad').value = '';
 		  document.getElementById('txtRelatCronologico').value = '';
 		  document.getElementById('txtExamenClinico').value = '';
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
    
  
