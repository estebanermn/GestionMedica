<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
        <title>Menu de Emergencia</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        

    </head>
    
	<body>
	
	
   
    
  	<div class="dynamic-ajax-content">
    <div class="justify-content-center align-content-center">
    
    <div class="main-body-content-container"> <!-- EL BODY GENERAL DEL FORMULARIO-->
    
    
<div class="form-row">


<div class="col-sm-12 col-xl-4 m-b-30" >
<p>Fecha Inicio</p>
<input class="form-control" id="txtFechaInicio" type="date" />
</div>
<div class="col-sm-12 col-xl-4 m-b-30">
<p>Fecha Fin</p>
<input class="form-control" id="txtFechaFin" type="date" />
</div>
<div class="col-sm-12 col-xl-4 m-b-30">
<br>
<button class="btn btn-info btn-round waves-effect waves-light"  id="btnBuscar" type="button">BUSCAR
<img src="../resources/img/busqueda.png"/>
</button>

<!--  
<button class="btn btn-info btn-round waves-effect waves-light"  id="btnprueba" type="button">prueba
</button>-->

<button class="btn btn-danger btn-round waves-effect waves-light"  id="btnAbandono" type="button">Abandonar 
<img src="../resources/img/disablePerson.png"/>
</button>

<!-- Button trigger modal -->
<button type="button" class="btn btn-success btn-round waves-effect waves-light" id="btnAltaMedica" data-toggle="modal" data-target="#exampleModalCenter">
  Alta Medica
  <img src="../resources/img/disablePerson.png"/>
</button>

<a type="button" class="btn btn-success btn-round waves-effect waves-light" id="btnReporte" data-orden-id="0">
  Reporte
  <img src="../resources/img/disablePerson.png"/>
</a>




</div>
</div>
<br>
<!--
 <div class="col-lg-12">
 
<div class="alert alert-info">	
<div align="center"> 


				<button type="button" class="btn btn-success" id="btnAbrirAtencion" >Abrir Atencion</button>
				<button type="button" class="btn btn-success" id="btnModificarAtencion" >Modificar Atencion</button>
             	<button type="button" class="btn btn-info" id="btnVerAtencion" >Ver Atencion</button>
      </div>          
 </div>
</div>
-->
<br> 

<form id="formMantUsuarios">

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background: ">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Alta Medica</h5>
        <input type="text" id="hddModalCodigo" placeholder="ID ORDEN"  />
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group">
            <label for="recipient-name" class="col-form-label">Medico:</label>
            <input type="text" class="form-control" value="${sessionNombreCompleto}" id="txtMedico" readonly="false">
          </div>
        <div class="form-group">
            <label for="recipient-name" class="col-form-label">Usuario:</label>
            <input type="text" class="form-control" value="${sessionNombre}" id="txtUsuario" readonly="false">
          </div>
           <div class="form-group">
            <label for="recipient-name" class="col-form-label">Contraseña:</label>
            <input type="password" class="form-control" id="txtContrase">
          </div>
          
           <div class="form-group">
		      <label for="recipient-name">Tipo de Alta:</label>
		      <select id="cbtipoAlta" class="form-control" onchange="carg(this)">
		      </select>
		    </div>
          
          <div class="form-group">
		      <label for="recipient-name" hidden="true" id="etiqueta">Adjuntar archivo:</label>
		   <input type="file" id="txtarchivo" hidden="true"><br><br>
		    </div>
          
          <div class="form-group">
            <label for="message-text" class="col-form-label">Observacion:</label>
            <textarea class="form-control" id="txtMessage"></textarea>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnFirmar" >Firmar</button>
      </div>
    </div>
  </div>
</div>





<div class="page-wrapper">
<div class="page-body">
<div class="row">
<div class="col-sm-12">

<div class="card">
<!--
<div class="card-header">
</div>-->

<div class="card-block">
<div class="table-responsive dt-responsive">
<table id="data-table-default" class="table table-striped table-bordered nowrap">
<thead>
							
							<th>IdTabla</th>	
							<th>IdOrden</th>							
							<th>Prioridad</th>
							<th>Codhc</th>
							<th>Nombres</th>
							<th>Sexo</th>
							<th>Edad</th>
							<th>FechaHora</th>
							<th>Hora</th>
						    <th>Topico</th>
							<th>Estado Emergencia</th>
							<th hidden="true">horadiff</th>
							<th></th>
						</thead>
						<tbody>
						<!-- 				                 
							<c:forEach var="User" items="${listadoUsuarios}" varStatus="status">
							<tr>
							    <td>${status.index + 1}</td>
							    <td>${User.usu_codigo}</td>
							    <td>${User.usu_nombre}</td>
							    <td>${User.usu_descri}</td>
							    <td>${User.usu_email}</td>
							    <td>${User.usu_fecreg}</td>
							    <td></td>
							    <td>
							    	<button class="btn btn-xs btn-danger" id="btnPageDeleteRow"><i class="fa fa-trash-alt"></i></button>
							    	<button class="btn btn-xs btn-primary" id="btnPageEditRow"><i class="fa fa-pencil-alt"></i></button>
							    </td>
							 </tr>
							 </c:forEach>
					-->
						</tbody>

</table>
</div>
</div>

</div>
</div>
</div>
</div>

</div>
</form>  <!--FIN FORMULARIO-->
   <script>
   
   /*
   	var butonAbrAten1 = document.getElementById('btnAbrirAtencion');
	var butonModAten2 = document.getElementById('btnModificarAtencion');
	var butonVerAten3 = document.getElementById('btnVerAtencion');
	
	butonAbrAten1.disabled = true;
	butonModAten2.disabled = true;
	butonVerAten3.disabled = true;
   */
	
	$(document).ready(function() {
		
		var datiAlta = ${listTipodeAlta};
		//alert(JSON.stringify(datiAlta));
		
		var $element = $('#cbtipoAlta');			
		$.each(datiAlta, function(i, dato) {	
			var $option = $("<option/>").attr("value", dato.idAltaMedica).text(dato.descripcion);
			$element.append($option);				
		});
		

		
		
		var contadorsito=-1;
		
		  var fecha = new Date(); //Fecha actual
		  var mes = fecha.getMonth()+1; //obteniendo mes
		  var dia = fecha.getDate(); //obteniendo dia
		  var ano = fecha.getFullYear(); //obteniendo año
		  if(dia<10)
		    dia='0'+dia; //agrega cero si el menor de 10
		  if(mes<10)
		    mes='0'+mes //agrega cero si el menor de 10
		  document.getElementById('txtFechaInicio').value=ano+"-"+mes+"-"+dia;
		  document.getElementById('txtFechaFin').value=ano+"-"+mes+"-"+dia;
	
		var dt = $("#data-table-default").DataTable({
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
					{data : "idordentabla","visible": true
						
						,'orderable': false
						
						,'render': function ( data, type, full, meta ) {
						contadorsito++;
				
						var datii= JSON.stringify(data);
						var cociente=10;
						var resi=contadorsito % 10;
						var dividendo=1;
					
						if(resi==0){ 
							contadorsito=0;
						} 
						
						return contadorsito;
						
						}
					
					},
					{data : "idordenAtencion"},
					{data : "prioridad"},
					{data : "codHc"},
					{data : "nombreCompleto"},
					{data : "sexo"},
					{data : "edad"},
					{data : "fechaHora"},
					{data : "hora"},
					{data : "topico"},
					{data : "estadoAtenEmergencia"},
					{data : "horadiff", "visible": false}
					,{data : "idordenAtencion"
						,'orderable': false, 
						'render': function ( data, type, full, meta ) {
							
							
							
							var 
							html = '<button class="btn btn-xs btn-primary btnabrirAten" id="btnPageEditRow" data-codigo="' + data + '">ABRIR ATENCION</button>';
							
							return html;
							
							
						}
					}
					]
			 
			    
			    ,
			    rowCallback:function(row,data)
			    {
			    	
			    	// alert(JSON.stringify(data));
			    	 
			      if(data.estadoAtenEmergencia == "PENDIENTE")
			      {
			        $($(row).find("td")[10]).css("color","#FF9A00");
			      }
			      else if(data.estadoAtenEmergencia == "EN ATENCION"){
			          $($(row).find("td")[10]).css("color","#01DF3A");
			      }
			      
			      else if(data.estadoAtenEmergencia == "ATENDIDO"){
			          $($(row).find("td")[10]).css("color","#2E64FE");
			      }
			      
			    if(data.prioridad == "REANIMACIÓN")
		      {
		        $($(row).find("td")[2]).css("background","#D9160F");
		      }
		      else if(data.prioridad == "EMERGENCIA"){
		          $($(row).find("td")[2]).css("background","#D9850F");
		      }
		      else if(data.prioridad == "URGENCIA"){
		          $($(row).find("td")[2]).css("background","#D2D90F");
		      }
		      else if(data.prioridad == "URGENCIA MENOR"){
		          $($(row).find("td")[2]).css("background","#0CAD2C");
		      }
		      else{
		          $($(row).find("td")[2]).css("background","#0C6DAD");
		      }
			  
			    
			    	 //alert(JSON.stringify(data));
			    }
			    
			   
				//
			//	var datitoFila= table.row(".selected").data();
				
				//if(datitoFila.horadiff>24){
           	//		btnabriatencion.disabled = true;
           		//}else{
           			//btnabriatencion.disabled = false;
           		//}
		});
		
	
		
		var btnabandonoRR = document.getElementById('btnAbandono');
		var btnaltamedica=document.getElementById('btnAltaMedica');
		var btnReporte=document.getElementById('btnReporte');
	
			
		
		btnabandonoRR.disabled = true;
		btnaltamedica.disabled = true;
		//btnabriatencion.disabled = true;
		btnReporte.disabled = true;
		

		
		LoadDataTableWithAjax()
		//CARGAR DATATABLE
		
	var idtabla;
	
	       var table = $('#data-table-default').DataTable();
	       
	       $('#data-table-default tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected');
	               btnabandonoRR.disabled = true;
	               btnaltamedica.disabled = true;
	            
	           }
	           else {
	               table.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	               
	               
	              var datitoFila= table.row(".selected").data();
	               var usu=document.getElementById('txtUsuario').value;
	          // 	alert( 'Row index: '+table.row( this ).index() );
 	        	
	              
	              idtabla =table.row( this ).index();
	              
	              // console.log(datitoFila);
	              
	              
	          //  var txtNombre =table.row["idordentabla"];
	              
	           // alert(catDia_Descripcion);
	             // alert(JSON.stringify(datitoFila));
	              
	               formToJSON =JSON.stringify({
						"idordenAtencion": datitoFila.idordenAtencion,
						"usuarioalta":usu
					});
	               
	               document.getElementById('hddModalCodigo').value=datitoFila.idordenAtencion  ;
	               
	           		sessionStorage.setItem("IdOrden", datitoFila.idordenAtencion);
	           		
	if(datitoFila.estadoAtenEmergencia=="PENDIENTE" || datitoFila.estadoAtenEmergencia=="EN ATENCION"){
	           			
		           		 btnabandonoRR.disabled = false;
		           		}
	else if(datitoFila.estadoAtenEmergencia=="ATENDIDO")  {
		           			
		           		 btnabandonoRR.disabled = true;
		           		}
	           		
		if(datitoFila.estadoAtenEmergencia=="EN ATENCION"){
	           			btnaltamedica.disabled = false;
	           	
	           		}
	  	else if(datitoFila.estadoAtenEmergencia=="ATENDIDO" || datitoFila.estadoAtenEmergencia=="PENDIENTE") {
	           			btnaltamedica.disabled = true;
	         
	           		}
		
					// --- Reporte
					btnReporte.disabled = false;
					document.getElementById('btnReporte').setAttribute('data-orden-id', datitoFila.idordenAtencion);
					// -- /Reporte
	  
	           
	           		//btnabandonoRR.disabled = false;
	           		
	           		//alert(datitoFila.horadiff);
	           		//alert("DATO FILA: "+idtabla);
	           		
	           		 var total = $(this).find("td:eq(0)").text();
 						 alert(total);
	           
	           		  
	           	 if(datitoFila.horadiff>=24){
	           		 
	           		//alert(datitoFila.horadiff);
	           		//alert(idtabla);   
	           		
	            	   $(".btnabrirAten:eq("+total+")").attr("disabled", true);
	               }
	           	 
	 	        	// codFila=codFila+1;
	 	        	 //  $('#data-table-default tbody tr').each(function () {
	 	        		 // var dato=datitoFila.horadiff
	 		           // alert(dato);
	 		     	//  if(datitoFila.horadiff>24){
	 		     	//      $(".btnabrirAten:eq("+codFila+")").attr("disabled", true);
	 		     	// }
	 		     	//   });
	 	          
	           		
	           
	     		
	           		//btnabrirAten
	           	  
	           		// alert(formToJSON);
	             
	            
	              
	              /*
	              if(datitoFila.estadoAtenEmergencia=="PENDIENTE"){
	            	  	butonAbrAten1.disabled = false;
	            		butonModAten2.disabled = true;
	            		
	            		butonVerAten3.disabled = true;
	              }else if(datitoFila.estadoAtenEmergencia=="EN ATENCION"){
	            	   	butonAbrAten1.disabled = true;
	            		butonModAten2.disabled = false;
	            		butonVerAten3.disabled = true;
	              }else{
	            		butonAbrAten1.disabled = true;
	            		butonModAten2.disabled = true;
	            		butonVerAten3.disabled = false;
	              }*/
	              
	             // alert(JSON.stringify(datitoFila));
	               
	          /*	table.rows().eq(0).each( function ( index ) {
				    var row = table.row( index );
				    var data = row.data();
				   alert(JSON.stringify(data));
				    
				} );*/
	          	
	           }
	       } );
	});
	
	
   var input1 = document.getElementById('txtarchivo');
   var input2 = document.getElementById('etiqueta');
   
	function carg(elemento) {
		d = elemento.value;
		if(d == "1" || d == "3" || d == "4" || d == "5" || d == "6" || d == "7" || d == "9"){
			input1.hidden=true;
			input2.hidden=true;
		}
		else{
			input1.hidden=false;
			input2.hidden=false;
		}
	}
	
	
		
	
	function LoadDataTableWithAjax(){
		
		
		var fechaInicio = $('#txtFechaInicio').val()
		var fechaFin = $('#txtFechaFin').val()
    	$('#data-table-default').dataTable().fnClearTable();
		$('#data-table-default').dataTable().fnDraw();
    	$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/OrdenAtencion/RestEmergencia/" + fechaInicio + "," + fechaFin,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {                                            
            	//ADD NOTIFICACION
            	//ShowMessage(response.message);

            	if(response.data.length > 0){
            		//var valor=JSON.stringify(response);
            		//var valor=response.data;
            		//alert(""+valor[1].horadiff);
            		//UPDATE DATATABLES
            	//	var datito = response.data;
            		//alert();
            		  
            		$('#data-table-default').dataTable().fnAddData(response.data);
            		
            	}else{
            		console.log("No hay Atenciones")
            	}
            },
        })
	  }
	
	$( "#btnReporte" ).click(function() {
	
		var id = $(this).attr("data-orden-id");

		$(location).attr("href", "${pageContext.request.contextPath}/reporte/" + id + "/orden");
			
		});
	
	$( "#btnBuscar" ).click(function() {
		//	$('#modal-dialog').modal('show');  
			//$('#stack1').modal('show')
			 LoadDataTableWithAjax();
		});
	
	$( "#btnprueba" ).click(function() {
	
		$(location).attr("href", "${pageContext.request.contextPath}/EnfermedadActual/WebPrincipal");
			 
		});
	
	$( "#btnAbandono" ).click(function() {
		
		//alert(formToJSON);
		
		$.ajax({
              type:"PUT",
              url: "${pageContext.request.contextPath}/OrdenAtencion/AbandonoEmergencia",
              crossDomain: true,
              data: formToJSON,
              contentType: "application/json; charset=utf-8",
              dataType: "json",
              async: true,
              success: function (response) {                		
                   if(response.status === true){
                	   	//alert("SATISFACTORIO");
                	 	 $.toast({
                  		   heading: 'Exito',
                  		   text: 'Estado abandonado con exito',
                  		   position: 'top-center',
                  		    icon: 'success' 
                  		});
                	   LoadDataTableWithAjax();
                	   
                   }
                   else{
                    	//alert("NO SE PUEDE ABANDONAR EN ESTADO ATENDIDO");
                   	 $.toast({
    					    heading: 'Error',
    					    text: 'NO SE PUEDE ABANDONAR EN ESTADO ATENDIDO',
    						   position: 'top-center',
    						   icon: 'error'
    						});
                 	}
              },
          });
		
		
		
	
	});
	
	/*$( "#btnAbrirAtencion" ).click(function() {
				$.ajax({
	              type:"PUT",
	              url: "${pageContext.request.contextPath}/OrdenAtencion/ActuEmergencia",
	              crossDomain: true,
	              data: formToJSON,
	              contentType: "application/json; charset=utf-8",
	              dataType: "json",
	              async: true,
	              success: function (response) {                		
	                   if(response.status === true){
	                	  
	                	   LoadDataTableWithAjax()
	                   }
	              },
	              //error: OnErrorCall
	          });
        });*/
	
        
	
        $('#data-table-default').on('click', '#btnPageEditRow', function (e) {
        	
    	$.ajax({
            type:"PUT",
            url: "${pageContext.request.contextPath}/OrdenAtencion/ActuEmergencia",
            crossDomain: true,
            data: formToJSON,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {                		
                 if(response.status === true){
             
                	 $(location).attr("href", "${pageContext.request.contextPath}/EnfermedadActual/WebPrincipal");
                	 
             
                  	 
                 }
            },
            //error: OnErrorCall
        });
		
		
});
        
        
        
        
$( "#btnFirmar" ).click(function() {
            AltaToJSON =JSON.stringify({
				"idordenAtencion": $('#hddModalCodigo').val(),
				"usuarioalta": $('#txtUsuario').val(),
				"pass": $('#txtContrase').val(),
				"idAltaMedica": $('#cbtipoAlta').val(),
				"observacion_alta": $('#txtMessage').val(),
				"archivo": $('#txtarchivo').val()
					
				
			});
            
       
           // alert(AltaToJSON);
        	
        	
        	$.ajax({
                type:"PUT",
                url: "${pageContext.request.contextPath}/OrdenAtencion/AltaMediEmergencia",
                crossDomain: true,
                data: AltaToJSON,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function (response) {  
                	
                     if(response.status === true){
                    	 
                    	 $.toast({
                  		    heading: 'Exito',
                  		    text: 'Dato de Alta Correctamente',
                  		    position: 'top-center',
                  		    icon: 'success' 
                  		});
                  	
                  	   LoadDataTableWithAjax();
                  	   
                
                  	 document.getElementById('txtContrase').value = '';
           		 	 document.getElementById('txtMessage').value = '';
           		  
                  	$('#exampleModalCenter').modal('hide');
                  	   
                     }else{
                    	 //alert("Validar Credenciales o debe tener un Diagnostico y alta de Enfermeria");
                    	 $.toast({
 						    heading: 'Error',
 						   text: 'Validar Credenciales o debe tener un Diagnostico y alta de Enfermeria',
 						   position: 'top-center',
 					   icon: 'error'
 						});
                    	
                    	 document.getElementById('txtContrase').value = '';
               		 	 document.getElementById('txtMessage').value = '';
                     }
                }
            });
        	
        });
        
        
        
	
	</script>
  	</div>
    </div>
	</div>
</body>
</html>