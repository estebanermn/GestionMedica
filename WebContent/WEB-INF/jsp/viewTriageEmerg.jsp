<div class="dynamic-ajax-content" id="Contentriageemer">
<form id="formManttriageemerg" > 
        <br>
        
        <input type="hidden" id="hddModalCodigo" placeholder="Codigo Oculto"  />
     <table width="1000">
      <th width="200"><label for="fname" class="col-form-label col-md-2">Ingreso Paciente:</label></th>
    <td>  <input type="text"  id="txtLlegada" class="form-control all-options" required="required" maxlength="100" disabled>
    </td>
    
     <th><label for="fname" class="col-form-label col-md-2">Detalle Ingreso Paciente:</label></th>
    <td width="500"><input type="text"  id="txtDetLlegada" class="form-control all-options" required="required" maxlength="500" disabled>
    </td>
     </table>
     <br>
<table>

   
    <th><label for="fname" class="col-form-label col-md-2">Motivo:</label></th>
    <td>  <input type="text"  id="txtMotivoIngreso" class="form-control all-options" required="required" maxlength="50" disabled>
    </td>

        <th><label for="fname" class="col-form-label col-md-2">Topico:</label> </th>
        <td><input type="text"  id="txttopico" class="form-control all-options"  maxlength="50" disabled> </td>
 
       <th><label for="fname" class="col-form-label col-md-2">Prioridad:</label> </th>
        <td><input type="text"  id="txtprioridad" class="form-control all-options"  required="required" maxlength="50" disabled>
        </td>
      
         <th>     <label for="fname" class="col-form-label col-md-2">FUR:</label> </th>
       <td>     <input type="text"  id="txtfur" class="form-control all-options"  required="required" maxlength="130" disabled></td>

       </table>  
       <br>
       <label for="fname" class="col-form-label col-md-2">Alergia:</label> 
        <input type="text"  id="txtalergia" class="form-control all-options"  required="required" maxlength="130" disabled>
   <br>
     <label for="exampleFormControlTextarea1">Detalle Discriminador:</label> 
      <textarea class="form-control textarea-maxlength" id="txtdetalle" rows="3" maxlength="300" disabled></textarea>
        <br>
          <div >
	<h3 >SIGNOS VITALES</h3>
	</div>
	<table style="border-spacing: 10px 5px;border-collapse: separate;">
   <th> <label>Peso:</label></th>
	<td><input type="text" class="form-control" id="peso"  style="width: 70px;height: 30px"	disabled></td>
	<th><strong>KG.</strong></th><td></td>
    
	<th><label >PA:</label></th>
	<td><input type="text" class="form-control" id="pa1" style="width: 70px;height: 30px" disabled></td>

	<th><label> / </label></th>
	<td><input type="text"  class="form-control" id="pa2" style="width: 70px;height: 30px" disabled></td>

	<th><label>T°:</label></th>
	<td><input type="text"  class="form-control"  id="temperatura" style="width: 70px;height: 30px" disabled></td>

	<th><label>SAT O2:</label></th>
    <td><input type="text"  class="form-control" id="sato2" style="width: 70px;height: 30px" disabled></td>
	
    <th><label>F.C:</label></th>
	<td><input type="text"  class="form-control" id="fc" style="width: 70px;height: 30px" disabled></td>
	<th><strong>X/min.</strong></th><td></td>
	
	<th><label>F.R:</label></th>
	<td><input type="text"  class="form-control" id="fr" style="width: 70px;height: 30px" disabled></td>
	<th><strong>X/min.</strong></th><td></td>
	</table>
	<br />

  <div class="col-sm-12 col-xl-12 m-b-30" style="border:1px solid black;">
	<br />

	<label>Antecedentes</label>
	<textarea  class="form-control" id="txtAtencedentes" rows="4" cols="40" style="width: 700px;height: 100px" disabled></textarea>
	<br>
	<label>Observacion</label>
	<textarea  class="form-control" id="txtObservacion" rows="4" cols="40" style="width: 700px;height: 100px" disabled></textarea>
	<br>

	</div>
      
     
      
      </form>
</div>

 <script type="text/javascript">
       
	   
	   var IdOrdenAten = sessionStorage.getItem("IdOrden");
		//alert("Id Orden: "+IdOrdenAten);
		  
    var UsuCreacion=document.getElementById('UsuarioCreacion').value;
    var llegada=document.getElementById('txtLlegada').value;
    var detallellegada=document.getElementById('txtDetLlegada').value;
    var motivo=document.getElementById('txtMotivoIngreso').value;
    var topico=document.getElementById('txttopico').value;
    var prioridad=document.getElementById('txtprioridad').value;
    var detalle=document.getElementById('txtdetalle').value;
    var fur=document.getElementById('txtfur').value;
    var alergia=document.getElementById('txtalergia').value;
    var peso=document.getElementById('peso').value;
    var pa=document.getElementById('pa1').value;
    var pa1=document.getElementById('pa2').value;
    var t=document.getElementById('temperatura').value;
    var sat=document.getElementById('sato2').value;
    var fc=document.getElementById('fc').value;
    var fr=document.getElementById('fr').value;
    var antecedentes=document.getElementById('txtAtencedentes').value;
    var obs=document.getElementById('txtObservacion').value;

    
       $(document).ready(function() {
    
		//AJAX PARA OBTENER UN USUARIO
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/TriageEmerg/BuscarTri/" + IdOrdenAten,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
  			success: function (response) {

     	//ADD NOTIFICACION
       if(response.status === true){
    	   
       	var d = response.data;
       	
       //	JSON.stringify(d.nombreCompletod);
    //alert(JSON.stringify(d));
       	      
            $("#hddModalCodigo").val($.trim(d.enf_idordenatencion));
            $("#txtLlegada").val($.trim(d.llegada));
            $("#txtDetLlegada").val($.trim(d.detallellegada));
            $("#txtMotivoIngreso").val($.trim(d.motivo));
            $("#txttopico").val($.trim(d.topico));
            $("#txtprioridad").val($.trim(d.prioridad));
            $("#txtdetalle").val($.trim(d.detallediscriminador));
            $("#txtfur").val($.trim(d.fur));
            $("#txtalergia").val($.trim(d.alergia));
            $("#peso").val($.trim(d.peso));
            $("#pa1").val($.trim(d.pa));
            $("#pa2").val($.trim(d.pa1));
            $("#temperatura").val($.trim(d.temp));
            $("#sato2").val($.trim(d.sato2));
            $("#fr").val($.trim(d.fr));
            $("#fc").val($.trim(d.fc));          
            $("#txtAtencedentes").val($.trim(d.antecedentes));
            $("#txtObservacion").val($.trim(d.observacion));		
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
    