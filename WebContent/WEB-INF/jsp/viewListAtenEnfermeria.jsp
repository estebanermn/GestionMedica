<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
        <title>Menu de Enfermeria</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-all.min.css" />">
         <link id="themeStyleSheet" rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-print-all.min.css"/>">
         <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-default.min.css" />">
        <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/font-family-en.min.css" />">
       
       <!-- COPIAR  -->
          <link rel="stylesheet"  href="<c:url value="/resources/css/jquery.toast.css" />">
         
       <!--  TOAST --> 
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all-locale-en.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp.min.js"/>"></script>
        
        <!-- TOAST -->
        <script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>

    </head>
    
	<body>
	
	
<jsp:include page="../jsp/PanelNorteBanEnfermeria.jsp" flush="true"   />

    	
<div class="main-content">
    
    
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

<button class="btn btn-info btn-round waves-effect waves-light"  id="btnatendido" type="button">REGISTRO ACTO ENFERMERIA
<img src="../resources/img/success.png"/>
</button>

<button class="btn btn-danger btn-round waves-effect waves-light"  id="btnAbandono" type="button">Abandonar 
<img src="../resources/img/disablePerson.png"/>
</button>

	<input type="text" class="form-control" id="Usuario" value="${sessionNombre}" hidden="true" >
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
							
							<th hidden="true">IdTabla</th>	
							<th>OrdenAtencion</th>							
							<th>Prioridad</th>
							<th>Codhc</th>
							<th>Nombres</th>
							<th>Sexo</th>
							<th>Edad</th>
							<th>FechaHora</th>
							<th>Hora</th>
							<th>topico</th>
							<th>Estado Enfermeria</th>
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


$(document).ready(function() {
	var contadorsito=-1;// contador de horas
	
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
			ordering			:	true,
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
				{data : "idordentabla","visible": false
				
				,'orderable': false
				
				,'render': function ( data, type, full, meta ) {
				contadorsito++;
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
					{data : "estado_enfermeria"},
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
			    
			    	 //alert(JSON.stringify(data));
			    	 
			      if(data.estado_enfermeria == "PENDIENTE")
			      {
			        $($(row).find("td")[9]).css("color","##FFBF00");
			      }
			      else if(data.estado_enfermeria == "EN ATENCION"){
			          $($(row).find("td")[9]).css("color","#01DF3A");
			      }
			      else {
			          $($(row).find("td")[9]).css("color","#2E64FE");
			      }
			      
			      if(data.prioridad == "REANIMACIÓN")
			      {
			        $($(row).find("td")[1]).css("background","#D9160F");
			      }
			      else if(data.prioridad == "EMERGENCIA"){
			          $($(row).find("td")[1]).css("background","#D9850F");
			      }
			      else if(data.prioridad == "URGENCIA"){
			          $($(row).find("td")[1]).css("background","#D2D90F");
			      }
			      else if(data.prioridad == "URGENCIA MENOR"){
			          $($(row).find("td")[1]).css("background","#0CAD2C");
			      }
			      else{
			          $($(row).find("td")[1]).css("background","#0C6DAD");
			      }
				    	 //alert(JSON.stringify(data));
				    
			      
			    }
		});
		
	
		
		var btnabandonoRR = document.getElementById('btnAbandono');
		var btnatendido = document.getElementById('btnatendido');
		
		btnabandonoRR.disabled = true;
		   btnatendido.disabled = true;
			
		
		LoadDataTableWithAjax()
		//CARGAR DATATABLE
		
	
	     
	       var table = $('#data-table-default').DataTable();
	       
	       $('#data-table-default tbody').on( 'click', 'tr', function () {
	           if ( $(this).hasClass('selected') ) {
	               $(this).removeClass('selected');
	               btnabandonoRR.disabled = true;
	               btnatendido.disabled = true;
	           }
	           else {
	               table.$('tr.selected').removeClass('selected');
	               $(this).addClass('selected');
	               
	             
	               var usu=document.getElementById('Usuario').value;
	  			
	              var datitoFila= table.row(".selected").data();
	              
	              var idtabla =table.row( this ).index();//selecciona la posicion de la tabla
	              
	               formToJSON =JSON.stringify({
						"idordenAtencion": datitoFila.idordenAtencion,
						"usuario_regenfermeria":usu
					});
	               //nada mas sencillo xdd pero tenia ese nombre estaba con mayusculaah chcucha
	               
	           		sessionStorage.setItem("IdOrden", datitoFila.idordenAtencion);
	           		//sessionStorage.setItem("usuariocreacion", usu);
	           		// ${sessionNombre};
	   if(datitoFila.estado_enfermeria=="PENDIENTE" || datitoFila.estado_enfermeria=="EN ATENCION"){
	           			
		   					btnabandonoRR.disabled = false;
		           		}
	   else if(datitoFila.estado_enfermeria=="ATENDIDO")  {
  			
     		 btnabandonoRR.disabled = true;
     		}
	           		
	           		if(datitoFila.estado_enfermeria=="EN ATENCION"){
	           			btnatendido.disabled = false;
	           	
	           		}
	 else if(datitoFila.estado_enfermeria=="ATENDIDO" || datitoFila.estado_enfermeria=="PENDIENTE") {
	           			btnatendido.disabled = true;
	         
	           		}
	
	           		
	           		if(datitoFila.horadiff>=24){
		            	   
		            	   $(".btnabrirAten:eq("+idtabla+")").attr("disabled", true);
		               }
	           		//alert(formToJSON);
	             
	            // alert(JSON.stringify(datitoFila));
	              
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
	
	
	
	
	function LoadDataTableWithAjax(){
		contadorsito=-1;
		
		var fechaInicio = $('#txtFechaInicio').val()
		var fechaFin = $('#txtFechaFin').val()
    	$('#data-table-default').dataTable().fnClearTable();
		$('#data-table-default').dataTable().fnDraw();
    	$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/OrdenAtencion/RestEnfermeria/" + fechaInicio + "," + fechaFin,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {                                            
            	//ADD NOTIFICACION
            	//ShowMessage(response.message);

            	if(response.data.length > 0){
            		//UPDATE DATATABLES
            	//var datito = response.data;
            		//alert(JSON.stringify(datito));
            		  
            		$('#data-table-default').dataTable().fnAddData(response.data);
            	}else{
            		console.log("No hay Atenciones")
            	}
            },
        })
	  }
	
	
	

	
	$( "#btnBuscar" ).click(function() {
		//	$('#modal-dialog').modal('show');
			//$('#stack1').modal('show')
			 LoadDataTableWithAjax()
			 
		});
	
	$( "#btnatendido" ).click(function() { 
			  
	 
		$.ajax({
            type:"PUT",
            url: "${pageContext.request.contextPath}/OrdenAtencion/AtendidoEnfermeria",
            crossDomain: true,
            data: formToJSON,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {                		
                 if(response.status === true){
                	 var d = response.data;
                	 
                	
                	//alert("SATISFACTORIO");
                	
                	 $.toast({
             		   heading: 'Exito',
             	   text: 'Paciente atendido satisfactoriamente',
             		});
                
              	   LoadDataTableWithAjax();
                 
                 }else{
                	// alert("NO POSEE NOTAS DE ENFERMERIA");
                	 $.toast({
						    heading: 'Error',
						    text: 'Paciente no posee nota de enfermeria',
					    position: 'top-center',
					    icon: 'error'
					});
             	}
             
            },
		}); 
		});
	
	$( "#btnAbandono" ).click(function() {
		
		//alert(formToJSON);
		
		$.ajax({
              type:"PUT",
              url: "${pageContext.request.contextPath}/OrdenAtencion/AbandonoEnfermeria",
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
                  		   text: 'Paciente en estado de abandono',
                  		   position: 'top-center',
                  	    icon: 'success'
                  		});
                		 
                	   LoadDataTableWithAjax();
                	   
                   }
                   else{
                	   $.toast({
                 		    heading: 'Exito',
                 		   text: 'No se puede abandonar paciente ya atendido',
                 		   position: 'top-center',
                 	    icon: 'success'
                 		});
               	}
              },
          });
		
		
		
	
	});
	

    $('#data-table-default').on('click', '#btnPageEditRow', function (e) {
    	
	$.ajax({
        type:"PUT",
        url: "${pageContext.request.contextPath}/OrdenAtencion/ActuEnfermeria",
        crossDomain: true,
        data: formToJSON,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (response) {                		
             if(response.status === true){
         
            	 $(location).attr("href", "${pageContext.request.contextPath}/NotasEnfermeria/WebPrincipal");
            	 
         
              	 
             }
        },
        //error: OnErrorCall
    });
	
	
});

</script>



	</div>
    </div>
    
    
	</div>
	</div>
	
		
		  
     
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
    
     
</body>
</html>