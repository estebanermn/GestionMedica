<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
  
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<div class="dynamic-ajax-content" id="Contnotas">
<form id="formMantNotaEnfermeria" > 
        <br>
        
       <input type="text" id="hddModalCodigo" placeholder="Codigo Oculto"  hidden="true"/> 
        <div class="col-md-2">
           <p>Fecha Nota Enfermeria</p>
 <input type="text" id="fch" value="" class="form-control" readonly="readonly"
/>
            </div>
            <br>
          <div class="form-group">
              <label for="exampleFormControlTextarea1">Nota Enfermeria:</label> 
              <textarea class="form-control textarea-maxlength" id="txtnota" rows="4" maxlength="2000" disabled></textarea>
          </div>      
      </form>

 
    <script type="text/javascript">
       
	   
	   var IdOrdenAten = sessionStorage.getItem("IdOrden");
		//alert("Id Orden: "+IdOrdenAten);
		  
    var UsuCreacion=document.getElementById('UsuarioCreacion').value;
    
    var Fecha=document.getElementById('fch').value;
   // alert("usuario: "+IdOrdenAten);
   // alert("usuario: "+UsuCreacion);
   // alert("usuario: "+Fecha); 
    
       $(document).ready(function() {
    
		//AJAX PARA OBTENER UN USUARIO
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/NotasEnfermeriaEmerg/BuscarEmerg/" + IdOrdenAten,
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
       	      
            $("#hddModalCodigo").val($.trim(d.enf_idordenatencion));
            $("#fch").val($.trim(d.fecha_nota));
     	//$('#cbFormaInicio option[value="' + $.trim(d.emf_formainicio) + '"]').attr("selected", "selected");
			$("#txtnota").val($.trim(d.nota_enfermeria));
					
       }else{
      	 
      	alert("SIN DATA");
  
      	 
       }
  	},
	});

    	   
       });
       
       
        
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
    
  
