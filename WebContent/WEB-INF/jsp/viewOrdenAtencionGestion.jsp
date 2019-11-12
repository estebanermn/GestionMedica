<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="es" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es">
<!--<![endif]-->
	<head>
	<meta charset="utf-8" />
	<title>ORDEN DE ATENCION</title>
	  	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
		
		<!-- ================== BEGIN BASE CSS STYLE ================== -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet" />
		<link href="https://fonts.googleapis.com/css?family=Quicksand:500,700" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/bootstrap/css/bootstrap.min.css"  rel="stylesheet"/>
		<link href="https://colorlib.com//polygon/admindek/files/assets/pages/waves/css/waves.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/icon/feather/css/feather.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/font-awesome-n.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/icon/icofont/css/icofont.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/pages.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/switchery/css/switchery.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
	
		<!-- 
		<link href="https://seantheme.com/color-admin-v4.0/admin/assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css" rel="stylesheet" />
		-->
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/css/buttons.dataTables.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" />
	

		<link rel="stylesheet"  href="<c:url value="/resources/css/reloj.css" />">
		<link rel="stylesheet"  href="<c:url value="/resources/css/popup.css" />">
		<link rel="stylesheet"  href="<c:url value="/resources/css/vanillatoasts.css" />">
		
		<link rel="stylesheet"  href="<c:url value="/resources/css/jquery.toast.css" />">
		
		
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/style.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/widget.csss" rel="stylesheet" />
		
		
		
		
		<style>
		.modal-full {	
		    min-width: 80%;
		}
		.modal-full2{
		min-width: 100%;
		margin: 0;
		}
 
 		</style>


</head>
<body>

<div class="loader-bg">
<div class="loader-bar"></div>
</div>

<div id="pcoded" class="pcoded">
<div class="pcoded-overlay-box"></div>
<div class="pcoded-container navbar-wrapper">


<jsp:include page="../jsp/PanelNorte.jsp" flush="true"/>


<div id="sidebar" class="users p-chat-user showChat">
<div class="had-container">
<div class="p-fixed users-main">
<div class="user-box">
<div class="chat-search-box">
<a class="back_friendlist">
<i class="feather icon-x"></i>
</a>
<div class="right-icon-control">
<div class="input-group input-group-button">
<input type="text" id="search-friends" name="footer-email" class="form-control" placeholder="Search Friend">
<div class="input-group-append">
<button class="btn btn-primary waves-effect waves-light" type="button"><i class="feather icon-search"></i></button>
</div>
</div>
</div>
</div>
<div class="main-friend-list">
<div class="media userlist-box waves-effect waves-light" data-id="1" data-status="online" data-username="Josephin Doe">
<a class="media-left" href="#!">
<img class="media-object img-radius img-radius" src="../files/assets/images/avatar-3.jpg" alt="Generic placeholder image ">
<div class="live-status bg-success"></div>
</a>
<div class="media-body">
<div class="chat-header">Josephin Doe</div>
</div>
</div>
<div class="media userlist-box waves-effect waves-light" data-id="2" data-status="online" data-username="Lary Doe">
<a class="media-left" href="#!">
<img class="media-object img-radius" src="../files/assets/images/avatar-2.jpg" alt="Generic placeholder image">
<div class="live-status bg-success"></div>
</a>
<div class="media-body">
<div class="f-13 chat-header">Lary Doe</div>
</div>
</div>
<div class="media userlist-box waves-effect waves-light" data-id="3" data-status="online" data-username="Alice">
<a class="media-left" href="#!">
 <img class="media-object img-radius" src="../files/assets/images/avatar-4.jpg" alt="Generic placeholder image">
<div class="live-status bg-success"></div>
</a>
<div class="media-body">
<div class="f-13 chat-header">Alice</div>
</div>
</div>
<div class="media userlist-box waves-effect waves-light" data-id="4" data-status="offline" data-username="Alia">
<a class="media-left" href="#!">
<img class="media-object img-radius" src="../files/assets/images/avatar-3.jpg" alt="Generic placeholder image">
<div class="live-status bg-default"></div>
</a>
<div class="media-body">
<div class="f-13 chat-header">Alia<small class="d-block text-muted">10 min ago</small></div>
</div>
</div>
<div class="media userlist-box waves-effect waves-light" data-id="5" data-status="offline" data-username="Suzen">
<a class="media-left" href="#!">
<img class="media-object img-radius" src="../files/assets/images/avatar-2.jpg" alt="Generic placeholder image">
<div class="live-status bg-default"></div>
</a>
<div class="media-body">
<div class="f-13 chat-header">Suzen<small class="d-block text-muted">15 min ago</small></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="showChat_inner">
<div class="media chat-inner-header">
<a class="back_chatBox">
<i class="feather icon-x"></i> Josephin Doe
</a>
</div>
<div class="main-friend-chat">
<div class="media chat-messages">
<a class="media-left photo-table" href="#!">
<img class="media-object img-radius img-radius m-t-5" src="../files/assets/images/avatar-2.jpg" alt="Generic placeholder image">
</a>
<div class="media-body chat-menu-content">
<div class="">
<p class="chat-cont">I'm just looking around. Will you tell me something about yourself?</p>
</div>
<p class="chat-time">8:20 a.m.</p>
</div>
</div>
<div class="media chat-messages">
<div class="media-body chat-menu-reply">
<div class="">
<p class="chat-cont">Ohh! very nice</p>
</div>
<p class="chat-time">8:22 a.m.</p>
</div>
</div>
<div class="media chat-messages">
<a class="media-left photo-table" href="#!">
<img class="media-object img-radius img-radius m-t-5" src="../files/assets/images/avatar-2.jpg" alt="Generic placeholder image">
 </a>
<div class="media-body chat-menu-content">
<div class="">
<p class="chat-cont">can you come with me?</p>
</div>
<p class="chat-time">8:20 a.m.</p>
</div>
</div>
</div>
<div class="chat-reply-box">
<div class="right-icon-control">
<div class="input-group input-group-button">
<input type="text" class="form-control" placeholder="Write hear . . ">
<div class="input-group-append">
<button class="btn btn-primary waves-effect waves-light" type="button"><i class="feather icon-message-circle"></i></button>
</div>
</div>
</div>
</div>
</div>

<div class="pcoded-main-container">
<div class="pcoded-wrapper">

<jsp:include page="../jsp/PanelOeste.jsp" flush="true"/>

 <div class="pcoded-content">

<div class="page-header card">
<div class="row align-items-end">
<div class="wrap">
<div class="widget">	
<!---->
<div class="fecha" hidden="true">
<p id="diaSemana" class="diaSemana" ></p>
<p id="dia" class="dia" ></p>
<p  >de </p>
<p id="mes" class="mes" ></p>
<p  >del </p>
<p id="year" class="year" ></p>
</div>
<div class="reloj">
<p id="horas" class="horas" ></p>
<p id="dia" class="dia" ></p>
<p class="minutos" >:</p>
<p id="minutos" class="minutos" ></p>
<p class="minutos" >:</p>
<div class="caja-segundos">
<p id="ampm" class="ampm" ></p>
<p id="segundos" class="segundos" ></p>
</div>
</div>
</div>
</div>



</div>
</div>
<div class="pcoded-inner-content">

<div class="main-body">
<h1 id="date" hidden="true"></h1>

<div class="form-group col-md-6">
  <input type="text" class="form-control" id="txtIdPersona" placeholder="Codigo Persona" hidden="true" >
  </div>
<div class="form-group col-md-6">
      <input type="text" class="form-control" id="TXTNOMUSUARIO" value="${sessionNombre}" placeholder="" hidden="false" >
</div>

  <form id="form">
    
  <div class="form-row">
    <div class="form-group col-md-5">
      <label for="inputEmail4">DNI:</label>
      <input type="text" class="form-control" id="txtPacOrdDNI" placeholder="Ingresar DNI" maxlength="8" onchange="validarSiNumero(this.value);">

    </div>
    
     <div class="form-group col-md-4">
   <label for="inputAddress"></label>
   <br>
   
<button type="button" id="btnBuscar" class="btn btn-primary btn-round waves-effect waves-light">Buscar
<img src="../resources/img/busqueda.png"/>

</button>
</div>
</div>

<div class="form-row">

    <div class="form-group col-md-4">
      <label for="lblPacNombres">Nombres y Apellidos:</label>
      <input type="text" class="form-control" id="txtPacOrdNombres" placeholder="Nombre Completo" readonly="false" >
    </div>
   
   <div class="form-group col-md-4">
      <label for="lblPacNombres">Sexo:</label>
      <input type="text" class="form-control" id="txtPacOrdSexo" placeholder="Ingresar Sexo"  readonly="false" >
    </div>
    
  </div>
  
  <div class="form-row">
   <div class="form-group col-md-4">
      <label for="lblPacEdad">Edad:</label>
      <input type="text" class="form-control" id="txtPacOrdEdad" placeholder="Edad del Paciente"  readonly="false" >
   </div>
   
     <div class="form-group col-md-4">
      <label for="lblPacSeguro">Seguro:</label>
      <input type="text" class="form-control" id="txtPacOrdSegurito" placeholder="Seguro del Paciente"  readonly="false" >
   </div>
    
    </div>
    
   <div class="form-row">
   
     <div class="form-group col-md-4">
      <label for="inputState">Llegada Paciente</label>
      <select id="cbOrdLlegaPac" class="form-control form-control-success fill">
       <option value="" selected>--Seleccione Llegada Paciente--</option>
       <!-- <option value="0" selected>--Selecione su Genero--</option>
        <option value="Masculino">Masculino</option>
        <option value="Femenino">Femenino</option> -->
        
      </select>
    </div>
      
  
     <div class="col-sm-10">
	<textarea rows="5" cols="5" class="form-control form-control-success" placeholder="Detalle Llegada Paciente" id="inputSuccess1" ></textarea>
	</div>
     </div>
  
   
  
  <div class="row m-t-30">
<div class="col-md-4">
<button type="button" id="btnRegistrarOrdenAtencion" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Registrar Orden</button>
</div>
</div>



</form>


</div>
</div>
</div>
</div>
</div>
</div>

</div>

	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/jquery/js/jquery.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/popper.js/js/popper.min.js"></script>
		<script src="https://colorlib.com//polygon/admindek/files/bower_components/bootstrap/js/bootstrap.min.js"></script>
		<script src="https://colorlib.com//polygon/admindek/files/assets/pages/advance-elements/swithces.js"></script>
		<script src="https://colorlib.com//polygon/admindek/files/bower_components/switchery/js/switchery.min.js"></script>
		<script src="https://colorlib.com//polygon/admindek/files/bower_components/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
	
		
	<!--[if lt IE 9]>
		<script src="https://seantheme.com/color-admin-v4.0/admin/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="https://seantheme.com/color-admin-v4.0/admin/assets/crossbrowserjs/respond.min.js"></script>
		<script src="https://seantheme.com/color-admin-v4.0/admin/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/waves/js/waves.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/jquery-slimscroll/js/jquery.slimscroll.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/modernizr/js/modernizr.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/modernizr/js/css-scrollbars.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	
	<!-- ================== END BASE JS ================== -->
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/waves/js/waves.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/js/jszip.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/js/pdfmake.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/js/vfs_fonts.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
	
	<script src="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/js/data-table-custom.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/js/pcoded.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/js/vertical/vertical-layout.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="https://colorlib.com//polygon/admindek/files/assets/js/script.js"></script>
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="9e074240f0b9d65a3dcc7a4f-text/javascript"></script>
	
	<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="9e074240f0b9d65a3dcc7a4f-|49" ></script>
	
<script src="<c:url value="/resources/js/reloj.js"/>"></script>

<script src="<c:url value="/resources/js/vanillatoasts.js"/>"></script>
	
<script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>



<script type="text/javascript">

	
	 function validarSiNumero(numero){
		    if (!/^([0-9])*$/.test(numero)){
		    	alert("El valor " + numero + " no es un número");
			    document.getElementById('txtPacOrdDNI').value = '';
		    }else{
		    }
		  } 
	 
	
	
	$(document).ready(function(){
		

		var listLLegPaciente = ${listLLegPaciente};
		
		//TableManageDefault.init();
		// CARGAR COMBOBOX
		var $element = $('#cbOrdLlegaPac');			
		$.each(listLLegPaciente, function(i, dato) {			
			var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
			$element.append($option);				
		});
		
		
		 
		n =  new Date();
		//Año
		y = n.getFullYear();
		//Mes
		m = n.getMonth() + 1;
		//Día
		d = n.getDate();
		//Lo ordenas a gusto.
		document.getElementById("date").innerHTML = y + "-" + m + "-" + d;
		
		
		 $("#txtPacOrdDNI").keypress(function(e){
			 
			 if(e.which == 13) {
				 
				 /*	 VanillaToasts.create({
				  title: 'Exito',
				  text: 'Orden Registrada Correctamente',
				  type: 'info', // success, info, warning, error   / optional parameter
				  icon: '../resources/img/check.png', // optional parameter
				  timeout: 2000,
				});  */
			 
			var dnipaciente=document.getElementById('txtPacOrdDNI').value;
			//AJAX PARA OBTENER UN USUARIO
			$.ajax({
	            type: "GET",
	            url: "${pageContext.request.contextPath}/Paciente/Buscar/" + dnipaciente,
	            crossDomain: true,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {
	               	//ADD NOTIFICACION
	                 if(response.status === true){
	                	 
	                	
	                 	//CARGAR DATA
	                 	var d = response.data;
	                 	
	                 	 $.toast({
	              		    heading: 'Exito',
	              		    text: 'DNI Encontrado.',
	              		  	position: 'top-center',
	              		    icon: 'success'
	              		});
	                 	 
	                 //	JSON.stringify(d.nombreCompletod);
	                 //	alert(JSON.stringify(d));
						$("#txtPacOrdNombres").val($.trim(d.nombreCompleto));	
						$("#txtPacOrdSexo").val($.trim(d.sexo));	
						$("#txtPacOrdEdad").val($.trim(d.edad));
						$("#txtPacOrdSegurito").val($.trim(d.pac_seguro));
						$("#txtIdPersona").val($.trim(d.pac_idpaciente));
						
						
	                 	//CARGAR MODAL
	     	            //$('#modal-dialog').modal('show');
	                 }else{
	                	 
	                	 $.toast({
							    heading: 'Error',
							    text: 'No se encontro DNI o esta inactivo.',
							    position: 'top-center',
							    icon: 'error'
							});
	                 }
	            },
	          //  error: OnErrorCall
	        });
			 }
			 
		 });
		
		
		
	});
	
	
	
	
	
	
	
    
	 $('body').on('click', '#btnBuscar', function (e) {
		 
		/* VanillaToasts.create({
			  title: 'Exito',
			  text: 'Orden Registrada Correctamente',
			  type: 'info', // success, info, warning, error   / optional parameter
			  icon: '../resources/img/check.png', // optional parameter
			  timeout: 2000,
			});  */
		 
		var dnipaciente=document.getElementById('txtPacOrdDNI').value;
	
		//alert("dato:"+dato);
		//AJAX PARA OBTENER UN USUARIO
		
		 if(dnipaciente==""){
				
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado DNI',
			    	position: 'top-center',
			    	icon: 'error'
				});
		  }
		
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/Paciente/BuscarDNI/" + dnipaciente,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {
             	
               	//ADD NOTIFICACION
              
                 //alert(JSON.stringify(d));
                 if(response.status === true){
                	 
                	
                 	//CARGAR DATA
                 	 var d = response.data;
                
                 	
                 	 $.toast({
              		    heading: 'Exito',
              		    text: 'DNI Encontrado.',
              		  	position: 'top-center',
              		    icon: 'success'
              		});
                 	 
                 //	JSON.stringify(d.nombreCompletod);
                 //	alert(JSON.stringify(d));
					$("#txtPacOrdNombres").val($.trim(d.nombreCompleto));	
					$("#txtPacOrdSexo").val($.trim(d.sexo));	
					$("#txtPacOrdEdad").val($.trim(d.edad));
					$("#txtPacOrdSegurito").val($.trim(d.pac_seguro));
					$("#txtIdPersona").val($.trim(d.pac_idpaciente));
					
					
                 	//CARGAR MODAL
     	            //$('#modal-dialog').modal('show');
                 }else{
                	 
                	 $.toast({
						    heading: 'Error',
						    text: 'No se encontro DNI o esta inactivo.',
						    position: 'top-center',
						    icon: 'error'
						});
                 }
            },
          //  error: OnErrorCall
        });
	
		 });
	 
	 
	 
	 
	  $('body').on('click', '#btnRegistrarOrdenAtencion', function (e) {
		  
		  var DNIorden=$("#txtPacOrdDNI").val();
		  var cmbllegada=$("#cbOrdLlegaPac").val();
		  var detalle=$("#inputSuccess1").val();
			  
		  
		  if(DNIorden==""){
		
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado DNI',
			    	position: 'top-center',
			    	icon: 'error'
				});
		  }
		  
		  if(cmbllegada==""){
				
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha seleccionado forma de ingreso paciente',
			    	position: 'top-center',
			    	icon: 'error'
				});
			    return false;
		  }
		  
		  if(detalle==""){
				
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado detalle de llegada paciente',
			    	position: 'top-center',
			    	icon: 'error'
				});
			    return false;
		  }
		  
			
			var horita= $("#horas").text();
			var minutito= $("#minutos").text();
			var segundito= $("#segundos").text();
			var resultadoHora=horita+":"+minutito+":"+segundito;
			
		  var USER=document.getElementById('TXTNOMUSUARIO').value;
		  
			var fechaoran=document.getElementById("date").innerHTML = y + "-" + m + "-" + d;
		
			var estadoAten=2;
			var turnoate =1;
			var aseguradora=2;
			//var hora ="11:33:44.2069345";
			
			 var formTOJSON= JSON.stringify({
				 
				 	"pac_idpaciente":$("#txtIdPersona").val(),
				 	"fechaHora":fechaoran,
					"estado_triaje":estadoAten,
					"hora":resultadoHora, 
					//"idTurno":turnoate,
					"idEmpresaAsegura":aseguradora,
					"usuarioCreacionAte":USER,
					
					"llegPaciente":$("#cbOrdLlegaPac").val(),
					"detLlegPaciente":$("#inputSuccess1").val()
					
			 })
			 
			 $.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/OrdenAtencion/Registrar",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {   
	       
	           		if(response.status === true){
	           			
	           		 $.toast({
	              		    heading: 'Exito',
	              		    text: 'Orden Registrada Correctamente.',
	              		  	position: 'top-center',
	              		    icon: 'success'
	              		});
	           			
	           			LimpiartxtOrdenes();
	                  	//CARGAR DATATABLE
	        	      //  LoadDataTableWithAjax()
	        	       // $("#stack2").modal('hide');
	        	      //  $("#modal-dialog").modal('hide');
	           		}else{
	           			
	           			$.toast({
	           			    heading: 'error',
	           			    text: 'No se pudo registrar la Orden',
	           			 	position: 'top-center',
	           			    icon: 'error'
	           			})
	           			
	           		}
	            },
	           //error: OnErrorCall
	        });
			 
			 
		  });
	  
	  
	  function LimpiartxtOrdenes() {
		  
		  document.getElementById('txtPacOrdNombres').value = '';
		  document.getElementById('txtPacOrdSexo').value = '';
		  document.getElementById('txtPacOrdEdad').value = '';
		  document.getElementById('txtPacOrdSegurito').value = '';
		  document.getElementById('txtIdPersona').value = '';
		  document.getElementById('txtPacOrdDNI').value = '';
		  document.getElementById('cbOrdLlegaPac').value = '';
		  document.getElementById('inputSuccess1').value = '';
		  
		  
	  }	
	  
	
	</script>
	
	
	
  </body> 
</html>