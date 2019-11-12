<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="es" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es">
<!--<![endif]-->
	<head>
	<meta charset="utf-8" />
	<title> GESTION SALUD</title>
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
	
		
		
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/style.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/widget.csss" rel="stylesheet" />
		
		
		<link rel="stylesheet"  href="<c:url value="/resources/css/jquery.toast.css" />">
		
		
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
<div class="col-lg-8">
Registro de Pacientes

<div class="form-group col-md-6">
      <input type="text" class="form-control" id="UsuarioCreacionuu" value="${sessionNombre}" placeholder="" hidden="true">
      
    </div>
    
     <div class="form-group col-md-6">
     
      <input type="text" class="form-control" id="txtIdPersona" placeholder="ID PERSONA" hidden="true" >
    </div>

</div>

</div>
</div>

<div class="pcoded-inner-content">

<div class="main-body">

  
  <form id="formMantPacientes" >
  
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">DNI:</label>
      <input type="number" class="form-control" id="txtPacDNI" placeholder="Ingresar DNI" 
      onchange="validarSiNumero(this.value);" onKeyDown="if(this.value.length==8 && event.keyCode>47 && event.keyCode < 58)return false;">
    </div>
    
    
  <div class="form-group col-md-4">
   <label for="inputAddress"></label>
   <br>
<button type="button" id="btnBuscarPaciente" class="btn btn-primary btn-round waves-effect waves-light">Buscar
<img src="../resources/img/busqueda.png"/>

</button>

</div>
</div>
   
  
<div class="form-row">

 <div class="form-group col-md-6">
      <label for="lblPacNombres">Nombres y Apellidos:</label>
      <input type="text" class="form-control" id="txtPacNombres" placeholder="Ingresar Nombre Completo">
    </div>
    
     <div class="form-group col-md-4">
      <label for="inputState">Sexo</label>
      <select id="cbPacSexo" class="form-control">
        <option value="" selected>--Selecione su Genero--</option>
      <!--  <option value="0" selected>--Selecione su Genero--</option>
        <option value="Masculino">Masculino</option>
        <option value="Femenino">Femenino</option> -->
        
      </select>
    </div>
  </div>
 <div class="form-row">
 
   <div class="form-group col-md-6">
    <label for="inputAddress">Fecha Nacimiento</label>
    <input type="date" class="form-control" id="dtPacFechNacimiento" placeholder="Ingresar Fecha Nacimiento">
  </div>
  
  
    <div class="form-group col-md-6">
    <label for="inputAddress">Direccion</label>
    <input type="text" class="form-control" id="txtPacDireccion" placeholder="Ingresar Direccion" required>
  </div>

  </div>
  
  <div class="form-row">
     <div class="form-group col-md-4">
      <label for="inputState">Estado Civil</label>
      <select id="cbPacEstadoCivil" class="form-control">
     <option value="" selected>--Seleccionar Estado Civil--</option>
      <!--    <option value="Soltero" selected>--Seleccionar Estado Civil--</option>
        <option value="Soltero">Soltero</option>
        <option value="Casado">Casado</option>
        <option value="Viudo">Viudo</option>
        <option value="Divorciado">Divorciado</option>-->
        
      </select>
    </div>
    
     <div class="form-group col-md-6">
    <label for="inputOcupacion">Ocupacion</label>
    <input type="text" class="form-control" id="txtOcupacion" placeholder="Ingresar Direccion" required>
  </div>
  </div>
  
  
  <div class="form-row">
  
   <div class="form-group col-md-6">
    <label for="inputRaza">Raza</label>
    <input type="text" class="form-control" id="txtRazaPac" placeholder="Ingresar Direccion" required>
  </div>
  
   <div class="form-group col-md-6">
    <label for="inputReligion">Religion</label>
    <input type="text" class="form-control" id="txtReligionPac" placeholder="Ingresar Direccion" required>
  </div>
  
  </div>
  
  <div class="form-row">
  
      <div class="form-group col-md-6">
      <label for="inputEmail4">Correo Electronico</label>
      <input type="email" class="form-control" id="txtPacCorreoElect" placeholder="Ingresar Correo Electronico">
    </div>
  
  
   <div class="form-group col-md-4">
      <label for="inputState">Estado</label>
      <select id="cbPacEstado" class="form-control">
         <option value="" selected>--Seleccione Estado--</option>
       <!-- <option value="1" selected>Activo</option>
        <option value="0">Inactivo</option>-->
        
      </select>
    </div>
    
    </div>
    
      <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Telefono:</label>
      <input type="number" class="form-control" id="txtPacTelefono" placeholder="Ingresar Telefono" onKeyDown="if(this.value.length==9 && event.keyCode>47 && event.keyCode < 58)return false;">
    </div>
    

   <div class="form-group col-md-4">
      <label for="inputState">Seguro:</label>
      <select id="cbPacSeguro" class="form-control">
         <option value="" selected>--Seleccione Seguro--</option>
       <!-- <option value="Pacifico" selected>Pacifico</option>
        <option value="Maffre">Maffre</option>-->
        
      </select>
    </div>
  </div>
  
  
   <div class="form-row">
<div class="col-md-4">
<button type="button" id="btnRegistrarPacientes" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Registrar</button>
</div>



<div class="col-md-4">
<button type="button" id="btnActualizarPacientes" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Actualizar</button>
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
	
	<script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>
	
	
	
	<script type="text/javascript">
	
	 function validarSiNumero(numero){
		 if (!/^([0-9])*$/.test(numero)){
		    	alert("El valor " + numero + " no es un número");
		    	  document.getElementById('txtPacDNI').value = '';
		    }else{
		    }
		  } 

	 
	 
	
	$(document).ready(function(){
		
		var listEstadosAI = ${listEstadosAI};
		
		//TableManageDefault.init();
		// CARGAR COMBOBOX
		var $element = $('#cbPacEstado');			
		$.each(listEstadosAI, function(i, dato) {			
			var $option = $("<option/>").attr("value", dato.par_argume).text(dato.par_funcion);
			$element.append($option);				
		});
		
		var listSexoPersonas = ${listSexoPersonas};
		
		//TableManageDefault.init();
		// CARGAR COMBOBOX
		var $element = $('#cbPacSexo');			
		$.each(listSexoPersonas, function(i, dato) {			
			var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
			$element.append($option);				
		});
		
		
		var listEstadoCivil = ${listEstadoCivil};
		var $element = $('#cbPacEstadoCivil');			
		$.each(listEstadoCivil, function(i, dato) {			
			var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
			$element.append($option);				
		});
		
		
		var listEmpAseguradoras = ${listEmpAseguradoras};
		var $element = $('#cbPacSeguro');			
		$.each(listEmpAseguradoras, function(i, dato) {			
			var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
			$element.append($option);				
		});
		
		 $("#txtPacDNI").keypress(function(e){
			 
			 if(e.which == 13) {
				 var Usuario=document.getElementById('UsuarioCreacionuu').value;
					var dniPac=document.getElementById('txtPacDNI').value;
					//AJAX PARA OBTENER UN USUARIO
					$.ajax({
			            type: "GET",
			            url: "${pageContext.request.contextPath}/Paciente/Buscar/" + dniPac,
			            crossDomain: true,
			            contentType: "application/json; charset=utf-8",
			            dataType: "json",
			            async: true,
			            success: function (response) {
			               	//ADD NOTIFICACION
			                 if(response.status === true){
			                	 
			                	 $.toast({
			                		    heading: 'Exito',
			                		    text: 'Paciente Encontrado.',
			                		    position: 'top-center',
			                		    icon: 'success'
			                		});
			                 	//CARGAR DATA
			                 	var d = response.data;
			                 //	JSON.stringify(d.nombreCompletod);
			                 	//alert(JSON.stringify(d));
			                 	$("#txtIdPersona").val($.trim(d.persona));	
								$("#txtPacNombres").val($.trim(d.nombreCompleto));	
								$('#cbPacSexo option[value="' + $.trim(d.sexo) + '"]').attr("selected", "selected");
								$("#dtPacFechNacimiento").val($.trim(d.fechaNacimiento));
								$("#txtPacDireccion").val($.trim(d.direccion));
								$('#cbPacEstadoCivil option[value="' + $.trim(d.civil) + '"]').attr("selected", "selected");
								
								$("#txtOcupacion").val($.trim(d.ocupacionPac));
								$("#txtRazaPac").val($.trim(d.pac_raza));
								$("#txtReligionPac").val($.trim(d.pac_religion));
								$("#txtPacCorreoElect").val($.trim(d.email));
								$('#cbPacEstado option[value="' + $.trim(d.pac_estado) + '"]').attr("selected", "selected");
								$("#txtPacTelefono").val($.trim(d.telefonono));	
								$('#cbPacSeguro option[value="' + $.trim(d.pac_seguro) + '"]').attr("selected", "selected");
								
			                 	//CARGAR MODAL
			     	            //$('#modal-dialog').modal('show');
			                 }else{
			                	 
			                		$.toast({
									    heading: 'Error',
									    text: 'No se Pudo Encontrar Ningun Paciente con ese Dni: '+dniPac,
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
	
	
	$('body').on('click', '#btnActualizarPacientes', function (e) {
		  
		//  alert(formTOJSON);
		  var USER=document.getElementById('UsuarioCreacionuu').value;
		  var IDPACIENTE=document.getElementById('txtIdPersona').value;
		  
			 var formTOJSON= JSON.stringify({
				 
				 	"dni":$("#txtPacDNI").val(),
				 	"sexo":$('#cbPacSexo').val(), 
				 	"fechaNacimiento":$('#dtPacFechNacimiento').val(),
				 	"nombreCompleto":$('#txtPacNombres').val(),
				 	"direccion":$('#txtPacDireccion').val(),
					"civil":$('#cbPacEstadoCivil').val(),
					"ocupacionPac":$('#txtOcupacion').val(),
					"pac_raza":$('#txtRazaPac').val(),
					"pac_religion":$('#txtReligionPac').val(),
					"email":$('#txtPacCorreoElect').val(),
					"pac_estado":$('#cbPacEstado').val(),
					"telefonono":$('#txtPacTelefono').val(),
					"pac_usuarioCreacion":USER,
					"pac_seguro":$('#cbPacSeguro').val(),
					"persona":IDPACIENTE
			 });
			 
			 $.ajax({
	            type: "PUT",
	            url: "${pageContext.request.contextPath}/Paciente/Actualizar",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {                                            
	            	//$("#modal-dialog").modal('hide');
	           		
	           		if(response.status === true){
	           			
	           		//	alert("Usuario Actualizado Correctamente");
	           		 $.toast({
             		    heading: 'Exito',
             		    text: 'Paciente Actualizado Corectamente.',
             		   position: 'top-center',
             		    icon: 'success'
             			}); 
	           	
	           			LimpiartxtPacientes();
	           		     
	           			$("#formMantPacientes")[0].reset();
	                  	//CARGAR DATATABLE
	        	      //  LoadDataTableWithAjax()
	        	       // $("#stack2").modal('hide');
	        	      //  $("#modal-dialog").modal('hide');
	           		}else{
	           			//alert("No Se Pudo Actualizar")
	           			
	           			$.toast({
						    heading: 'Error',
						    text: 'No se pudo Actualizar el Paciente',
						    position: 'top-center',
						    icon: 'error'
						});
	           			
	           		}
	               
	            },
	           //error: OnErrorCall
	        });
		  });
	
	
	 $('body').on('click', '#btnBuscarPaciente', function (e) {
		 
		var Usuario=document.getElementById('UsuarioCreacionuu').value;
		var dniPac=document.getElementById('txtPacDNI').value;
		//AJAX PARA OBTENER UN USUARIO
		 if(dniPac==""){
				
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado DNI',
			    	position: 'top-center',
			    	icon: 'error'
				});
		  }
		
		$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/Paciente/Buscar/" + dniPac,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {
               	//ADD NOTIFICACION
                 if(response.status === true){
                	 
                	 $.toast({
                		    heading: 'Exito',
                		    text: 'Paciente Encontrado.',
                		    position: 'top-center',
                		    icon: 'success'
                		});
                 	//CARGAR DATA
                 	var d = response.data;
                 //	JSON.stringify(d.nombreCompletod);
                 	//alert(JSON.stringify(d));
                 	$("#txtIdPersona").val($.trim(d.persona));	
					$("#txtPacNombres").val($.trim(d.nombreCompleto));	
					$('#cbPacSexo option[value="' + $.trim(d.sexo) + '"]').attr("selected", "selected");
					$("#dtPacFechNacimiento").val($.trim(d.fechaNacimiento));
					$("#txtPacDireccion").val($.trim(d.direccion));
					$('#cbPacEstadoCivil option[value="' + $.trim(d.civil) + '"]').attr("selected", "selected");
					
					$("#txtOcupacion").val($.trim(d.ocupacionPac));
					$("#txtRazaPac").val($.trim(d.pac_raza));
					$("#txtReligionPac").val($.trim(d.pac_religion));
					$("#txtPacCorreoElect").val($.trim(d.email));
					$('#cbPacEstado option[value="' + $.trim(d.pac_estado) + '"]').attr("selected", "selected");
					$("#txtPacTelefono").val($.trim(d.telefonono));	
					$('#cbPacSeguro option[value="' + $.trim(d.pac_seguro) + '"]').attr("selected", "selected");
					
                 	//CARGAR MODAL
     	            //$('#modal-dialog').modal('show');
                 }else{
                	 
                		$.toast({
						    heading: 'Error',
						    text: 'No se Pudo Encontrar Ningun Paciente con ese Dni: '+dniPac,
						    position: 'top-center',
						    icon: 'error'
						});
                	 
                 }
            },
          //  error: OnErrorCall
        });
	 });
	 
	 function botar(){
		 var lleno=0;  
		
		var nombre=document.getElementById('txtPacNombres').value;
		var fecha=document.getElementById('dtPacFechNacimiento').value;
		var sexo=document.getElementById('cbPacSexo').value;
		var estado=document.getElementById('cbPacEstado').value;	
		var seguro=document.getElementById('cbPacSeguro').value;
		

		
			if(nombre=="") 	//1 
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar Nombre Completo',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	} 
			else
			{
				lleno++;
			}
		
			if(sexo=="") 	//3
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar sexo',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	}
			else
			{
				lleno++;
			}
			if(fecha=="") 	//2
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar fechanacimiento',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	}
			else
			{
				lleno++;
			}
			
			if(estado=="") 	//4
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar estado',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	}
			else
			{
				lleno++;
			}
			if(seguro=="") 	//5
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar seguro',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	}
			else
			{
				lleno++;
			} 
		
			return lleno;
	 }
	 

	 
	  $('body').on('click', '#btnRegistrarPacientes', function (e) {
		  
		  
		  
		  var dnipa = $("#txtPacDNI").val();
		  
		var correo=document.getElementById('txtPacCorreoElect').value;
		
			//validamos campos
			if($.trim(dnipa) == "")
			{
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado DNI',
			    	position: 'top-center',
			    	icon: 'error'
				});
			
			    return false;
			}
			
		
			 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(correo)==false)
			  {   
				 //alert(correo);
				  $.toast({
					  heading: 'Error',
					    text: 'No ha ingresado correo electronico correcto',
					    position: 'top-center',
					    icon: 'error'
					});
				    return false;
			  } 
		
		  
			var dato=document.getElementById('UsuarioCreacionuu').value;
			
			var valor=0;
			valor=botar();
				
			if(valor==5){	
				
	
			 var formTOJSON= JSON.stringify({
				 
				 	"dni":$("#txtPacDNI").val(),
				 	"sexo":$('#cbPacSexo').val(), 
				 	"fechaNacimiento":$('#dtPacFechNacimiento').val(),
				 	"nombreCompleto":$('#txtPacNombres').val(),
				 	"direccion":$('#txtPacDireccion').val(),
					"civil":$('#cbPacEstadoCivil').val(),
					"ocupacionPac":$('#txtOcupacion').val(),
					"pac_raza":$('#txtRazaPac').val(),
					"pac_religion":$('#txtReligionPac').val(),
					"email":$('#txtPacCorreoElect').val(),
					"pac_estado":$('#cbPacEstado').val(),
					"telefonono":$('#txtPacTelefono').val(),
					"pac_usuarioCreacion":dato,
					"pac_seguro":$('#cbPacSeguro').val()
					
			 })
			 
			 $.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/Paciente/Registrar",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {                                            
	            	//$("#modal-dialog").modal('hide');
	           		if(response.status === true){
	           			
	           		 $.toast({
	             		    heading: 'Exito',
	             		    text: 'Paciente Registrado Corectamente.',
	             		   position: 'top-center',
	             		    icon: 'success'
	             		});
	           			
	           			//alert("Paciente Registrado Correctamente");
	           			LimpiartxtPacientes();
	           			$("#formMantPacientes")[0].reset();
	                  	//CARGAR DATATABLE
	        	      //  LoadDataTableWithAjax()
	        	       // $("#stack2").modal('hide');
	        	      //  $("#modal-dialog").modal('hide');
	           		}else{

	                	 $.toast({
							    heading: 'Error',
							    text: 'No se pudo Registrar un paciente ya existente',
							    position: 'top-center',
							    icon: 'error'
							});
	           			
	           			//alert("No Se Pudo Registrar")
	           		}
	               
	            },
	           //error: OnErrorCall
	        });
			 
			}
		  });
	  
	  
	  function LimpiartxtPacientes() {
		  
		  document.getElementById('txtPacDNI').value = '';
		  document.getElementById('cbPacSexo').value ='';
		  document.getElementById('dtPacFechNacimiento').value = '';
		  document.getElementById('txtPacNombres').value = '';
		  document.getElementById('txtPacDireccion').value = '';
		  document.getElementById('cbPacEstadoCivil').value ="";
		  document.getElementById('txtOcupacion').value = '';
		  document.getElementById('txtRazaPac').value = '';
		  document.getElementById('txtReligionPac').value = '';
		  document.getElementById('txtPacCorreoElect').value = '';
		  document.getElementById('cbPacEstado').value = '';
		  document.getElementById('txtPacTelefono').value = '';
		  document.getElementById('UsuarioCreacionuu').value = '';
		  document.getElementById('cbPacSeguro').value = '';
		 
	  }	
	 

	  
	  
	
	</script>
	
	
	
  </body> 
</html>