

<div class="dynamic-ajax-content" id="ContenFuncVitales">



<form id="formMantFunVitales" > 

        <br>
        <div class="col-md-9">
        <input type="hidden" id="hddModalCodigo" placeholder="Codigo Oculto Guia "/>
       </div>
       <br> 
     <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">PA:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtPA" class="form-control" placeholder="Ingresar PA"">
            </div>
            <label for="fname" class="col-form-label">/</label> 
            
             <div class="col-md-2">
                <input type="text"  id="txtPA2" class="form-control" placeholder="Ingresar PA2">
            </div>
            
            <label for="fname" class="col-form-label">mmHg</label> 
            
         </div>
        
      <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">FC:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtFC" class="form-control" placeholder="Ingresar FC" >
            </div>
            <label for="fname" class="col-form-label">X min</label> 
            
         </div>
         
         <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">FR:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtFR" class="form-control" placeholder="Ingresar FR">
            </div>
            <label for="fname" class="col-form-label">X min</label> 
            
         </div>
         
         
           <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">Temperatura:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtTemperatura" class="form-control" placeholder="Ingresar Temperatura" onkeypress="return filterFloat(event,this);">
            </div>
            <label for="fname" class="col-form-label">C</label> 
            
         </div>
         
           <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">SATO2:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtSato2" class="form-control" placeholder="Ingresar PA">
            </div>
            <label for="fname" class="col-form-label">%</label> 
            
         </div>
         
         
         <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">Peso(Kg):</label> 
             <div class="col-md-2">
                <input type="text"  id="txtPeso" class="form-control" placeholder="Ingresar Peso" onkeypress="return filterFloat(event,this);">
            </div>
            <label for="fname" class="col-form-label">%</label> 
            
         </div>
         
         <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">Talla(cm):</label> 
             <div class="col-md-2">
                <input type="text"  id="txtTalla" class="form-control" placeholder="Ingresar Talla" onchange="CalcularIMC();" onkeypress="return filterFloat(event,this);" >
            </div>
         
            
         </div>
         
         <br>
      
         <div class="form-row col-md-9">
        
            <label for="fname" class="col-form-label">IMC:</label> 
             <div class="col-md-2">
                <input type="text"  id="txtIMC" class="form-control" placeholder="Ingresar IMC" readonly="false">
            </div>
            
            
         </div>
       
        <br>
      <div class="col-md-11">
          <div class="form-group">
          
             <br>
			<button class="btn btn-primary" type="button" id="btnGuardarFunVitales" >Guardar
			<img src="../resources/img/save.png"/>
			</button>
              
          </div>
      </div>
      
      
      
      
      
      </form>
      
      

<script type="text/javascript">


	   var IdOrdenAten = sessionStorage.getItem("IdOrden");
		//  alert("Id Orden: "+IdOrdenAten);
		  
    var UsuCreacion=document.getElementById('UsuarioCreacion').value;
    
   // alert("usuario: "+UsuCreacion);
     
    function CalcularIMC(){
    	 var inputPeso = $('#txtPeso').val();
    		var inputTalla = $('#txtTalla').val();
    		
    	var inputIMC=inputPeso/(inputTalla*inputTalla);
    	
    	var str = inputIMC.toFixed(2); // => '10.23'
    	document.getElementById('txtIMC').value = str;
	  }
    
	$(document).ready(function(){
		
		
		
		//AJAX PARA OBTENER UN USUARIO
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/FuncionesVitales/Buscar/" + IdOrdenAten,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
  			success: function (response) {

     	//ADD NOTIFICACION
       if(response.status === true){
    	   
       	var d = response.data;
       //	JSON.stringify(d.nombreCompletod);
      // 	alert(JSON.stringify(d));
       	
           
            
            $("#hddModalCodigo").val($.trim(d.fv_idordenatencion));
            $("#txtPA").val($.trim(d.fv_pa));
         
			//$('#cbFormaInicio option[value="' + $.trim(d.emf_formainicio) + '"]').attr("selected", "selected");
			$("#txtPA2").val($.trim(d.fv_pammhg));
			$("#txtFC").val($.trim(d.fv_fc));
			   
			$("#txtFR").val($.trim(d.fv_fr));
			$("#txtTemperatura").val($.trim(d.fv_temperatura));	
			//$('#cbUnidad option[value="' + $.trim(d.emf_unidadenfermedad) + '"]').attr("selected", "selected");
			$("#txtSato2").val($.trim(d.fv_sato2));
			$("#txtPeso").val($.trim(d.fv_peso));
			$("#txtTalla").val($.trim(d.fv_talla));
			$("#txtIMC").val($.trim(d.fv_imc));
			
			
       }else{
      	 
      //	alert("SIN DATA");
      	
      	 
       }
  	},
	});
		
	});
    
    
    
    
    
    
    
    
    $("#btnGuardarFunVitales").click(function(e) {
    	

   	 if($('#txtPeso').val()==""){
 		   
 		   $.toast({
 			    heading: 'Error',
 			    text: 'Ingresar Peso.',
 			    position: 'top-center',
 			    icon: 'warning'
 			});
 		   return;
 		   
 	   }else if($('#txtTalla').val()==""){
 		   $.toast({
 			    heading: 'Error',
 			    text: 'Ingresar Talla.',
 			    position: 'top-center',
 			    icon: 'warning'
 			});
 		   return;
 	   }
 	   
			 var formTOJSON= JSON.stringify({
				 
				 	"fv_idordenatencion":IdOrdenAten,
				 	"fv_pa":$("#txtPA").val(),
				 	"fv_pammhg":$('#txtPA2').val(), 
				 	"fv_fr":$('#txtFR').val(),
				 	"fv_temperatura":$('#txtTemperatura').val(),
				 	"fv_sato2":$('#txtSato2').val(),
					"fv_peso":$('#txtPeso').val(),
					"fv_talla":$('#txtTalla').val(),
					"fv_imc":$('#txtIMC').val(),
					"fv_usuarioCreacion":UsuCreacion,
					"fv_fc":$('#txtFC').val(), 
			 });
			 
			 var op = $.trim($("#hddModalCodigo").val());
			 
			 
			 $.ajax({
				 type: (op.length == 0 ? "POST" : "PUT"), //SI TIENE ES UNA ACTUALIZACION
	            url: "${pageContext.request.contextPath}/FuncionesVitales/RegisUpd",
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
	           		 
	           		LimpiartxtFuncionesVitales();
	           			$("#formMantFunVitales")[0].reset();
	           			
	           			$("#ContenFuncVitales").load('../FuncionesVitales/WebEmergencia');
		           		
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
    
  
    
    function LimpiartxtFuncionesVitales() {
		  
		  document.getElementById('txtPA').value = '';
		  document.getElementById('txtPA2').value = '';
		  document.getElementById('txtFR').value = '';
		  document.getElementById('txtTemperatura').value = '';
		  document.getElementById('txtSato2').value = '';
		  document.getElementById('txtPeso').value = '';
		  document.getElementById('txtTalla').value = '';
		  document.getElementById('txtIMC').value = '';
	
	
		 
	  }
    
    
    function filterFloat(evt,input){
        // Backspace = 8, Enter = 13, ‘0′ = 48, ‘9′ = 57, ‘.’ = 46, ‘-’ = 43
        var key = window.Event ? evt.which : evt.keyCode;    
        var chark = String.fromCharCode(key);
        var tempValue = input.value+chark;
        if(key >= 48 && key <= 57){
            if(filter(tempValue)=== false){
                return false;
            }else{       
                return true;
            }
        }else{
              if(key == 8 || key == 13 || key == 0) {     
                  return true;              
              }else if(key == 46){
                    if(filter(tempValue)=== false){
                        return false;
                    }else{       
                        return true;
                    }
              }else{
                  return false;
              }
        }
    }
    function filter(__val__){
        var preg = /^([0-9]+\.?[0-9]{0,2})$/; 
        if(preg.test(__val__) === true){
            return true;
        }else{
           return false;
        }
        
    }
    
       </script> 
       

</div>
