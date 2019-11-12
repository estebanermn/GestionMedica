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
Registro de Usuarios



<div class="form-group col-md-6">
    <input type="text" class="form-control" id="txtIdPersona" placeholder="ID PERSONA" hidden="true" >
    
  </div>
  
  <div class="form-group col-md-6">
      <input type="text" class="form-control" id="TXTNOMUSUARIO" value="${sessionNombre}" placeholder="" hidden="true" >
</div>


</div>

</div>
</div>

<div class="pcoded-inner-content">

<div class="main-body">
<div class="main-body" id="content" >
</div>


<form id="formMantUsuarios" >

<div class="form-row">
    
    <div class="form-group col-md-4">
    
	<select id="txtTipoUsuario" class="form-control form-control-success fill" onchange="carg(this)" >
	<option value="" >--Selecione Tipo Usuario--</option>
	<!--
	<option value="INVALID" >--Selecione Tipo Usuario--</option>
	<option value="0" >ENFERMERIA</option>
	  <option value="1" >GESTION SALUD</option>
	  <option value="2" >MEDICO</option>
	  <option value="3" >INTERNISTA</option> -->
	  
	</select>
	
	</div>
    
  </div>
 
<div class="form-row">

<div class="form-group col-md-6">
    <label for="inputAddress">DNI</label>
    <input type="text" class="form-control" id="txtUsuDni" placeholder="Ingresar DNI" maxlength="8" onkeypress="solonumeros(event);" >
    
  </div>
   <div class="form-group col-md-4">
   <label for="inputAddress"></label>
   <br>
<button type="button" id="btnBuscarUsuario" class="btn btn-primary btn-round waves-effect waves-light">Buscar
<img src="../resources/img/busqueda.png"/>

</button>

</div>

  </div>
  
  <div class="form-row">
<div class="form-group col-md-6">
    <label for="inputAddress">Nombre Completo</label>
    <input type="text" class="form-control" id="txtUsuNombreCompl" placeholder="Ingresar Nombres y Apellidos">
  </div>
  </div>
  
  
  
  <div class="form-row">
    <div class="form-group col-md-6">
    <label for="inputAddress">Fecha Nacimiento</label>
    <input type="date" class="form-control" id="dtUsuFechNacimiento" placeholder="Ingresar Fecha">
  </div>
  
    <div class="form-group col-md-4">
      <label for="inputState">Sexo</label>
      <select id="cbUsuSexo" class="form-control">
      <option value="" selected>--Selecione su Genero--</option>
       <!-- <option value="0" selected>--Selecione su Genero--</option>
        <option value="Masculino">Masculino</option>
        <option value="Femenino">Femenino</option> -->
        
      </select>
    </div>
    
    
  </div>
  
  
  <div class="form-row">
  
  <div class="form-group col-md-4">
      <label for="inputState">Estado Civil</label>
      
      <select id="cbUsuEstadoCivil" class="form-control">
      <option value="" selected>--Seleccionar Estado Civil--</option>
       <!-- <option value="Soltero" selected>--Seleccionar Estado Civil--</option>
        <option value="Soltero">Soltero</option>
        <option value="Casado">Casado</option>
        <option value="Viudo">Viudo</option>
        <option value="Divorciado">Divorciado</option>-->
        
        
      </select>
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo Electronico</label>
      <input type="email" class="form-control" id="txtUsuCorreoElect" placeholder="Ingresar Correo Electronico">
    </div>
    
  </div>
  
  <div class="form-row">
  
  <div class="form-group col-md-6">
    <label for="inputAddress">Direccion</label>
    <input type="text" class="form-control" id="txtUsuDireccion" placeholder="Ingresar Direccion">
  </div>
  
  <div class="form-group col-md-4">
      <label for="inputState">Estado</label>
      <select id="cbUsuEstado" class="form-control">
       <option value="" selected>--Seleccione Estado--</option>
      <!--
        <option value="1" selected>Activo</option>
        <option value="0">Inactivo</option>-->
        
      </select>
    </div>
  
  </div>
  
  
       
  <div class="form-row">
  
 
  
  <div class="form-group col-md-4">
      <label for="inputState">Especialidad</label>
      <select id="cbUsuEspecialidad" class="form-control">
      <option value="" selected>--Selecione Especialidad--</option>
     <!--
      <option value="0" selected>--Selecione Especilidad--</option>
        <option value="1" >ALERGIA E INMUNOLOGIA</option>
        <option value="2">ALERGOLOGIA</option>
        <option value="3">ANESTESIOLOGIA</option>
        <option value="4">BANCO DE SANGRE</option>
        <option value="5">CARDIOLOGIA</option> -->
        
      </select>
    </div>
    
    
    <div class="form-group col-md-4">
    <label for="inputAddress">Nro. de Colegiatura:</label>
    <input type="text" class="form-control" id="txtUsuNumColegiatura" placeholder="Ingresar Nª Colegiatura">
  </div>
  
   <div class="form-group col-md-4">
    <label for="inputAddress"> Nª </label>
    <input type="text" class="form-control" id="txtUsuNumeroEspeci" placeholder="Ingresar Nª Registro Nacional de Especialidad">
  </div>
    
  
  </div>
  
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Telefono</label>
      <input type="text" class="form-control" id="txtTelefono" placeholder="Ingresar Telefono" maxlength="9" onkeypress="solonumeros(event);">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="txtUsuContraseña" placeholder="Password">
    </div>
  </div>
  
  <!--<div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>-->
  
  <div class="row m-t-30">
<div class="col-md-4">
<button type="button" id="btnRegistrarUsuarios" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Registrar</button>

<button type="button" id="btnActualizarUsuarios" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Actualizar</button>

</div>
</div>
</form>  <!--FIN FORMULARIO-->
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
	
	<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="9e074240f0b9d65a3dcc7a4f-|49" defer=""></script>
	
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/validate.js/0.13.1/validate.min.js"></script>
	
	<script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>
	

	<script type="text/javascript">
	
	function solonumeros(e)
    {
	var key = window.event ? e.which : e.keyCode;
        if(key<48||key>57){
        	 e.preventDefault();
        }
        	
    }
	
		
	
	var input1 = document.getElementById('txtUsuNumColegiatura');
	var input2 = document.getElementById('txtUsuNumeroEspeci');
	var input3 = document.getElementById('cbUsuEspecialidad');
	
	function carg(elemento) {
	  d = elemento.value;
	  if(d == "0"){
		  input1.disabled = true;
		  input2.disabled = true;
		  input3.disabled = true;
	  }
	  else if(d == "2"){
		  
		  input1.disabled = true;
		  input2.disabled = true;
		  input3.disabled = true;
	  }
	  else{
		  input3.disabled = false;
		  input1.disabled = false;
		  input2.disabled = false;
	  }
	}
	
	 function validarSiNumero(numero){
		    if (!/^([0-9])*$/.test(numero)){
		    	alert("El valor " + numero + " no es un número");
			    document.getElementById('txtUsuDni').value = '';
		    }else{
		    }
		  }
	
	
	$(document).ready(function(){
		
		var listEspecialidadesMedi = ${listEspecialidadesMedi};
	    var data1 = JSON.stringify(listEspecialidadesMedi);
	   // alert(data1);
		//TableManageDefault.init();
		// CARGAR COMBOBOX
		var $element = $('#cbUsuEspecialidad');			
		$.each(listEspecialidadesMedi, function(i, dato) {	
			var $option = $("<option/>").attr("value", dato.idespecialidad).text(dato.descripcion);
			$element.append($option);				
		});
		
		
		
		var listTiposUsuarios = ${listTiposUsuarios};
		var dt;
			//TableManageDefault.init();
			// CARGAR COMBOBOX
		
			  var data2 = JSON.stringify(listTiposUsuarios);
	   // alert(data2);
			var $element = $('#txtTipoUsuario');			
			$.each(listTiposUsuarios, function(i, dato) {			
				var $option = $("<option/>").attr("value", dato.par_argume).text(dato.par_funcion);
				$element.append($option);				
			});
			
			var listEstadosAI = ${listEstadosAI};
		
				//TableManageDefault.init();
				// CARGAR COMBOBOX
				var $element = $('#cbUsuEstado');			
				$.each(listEstadosAI, function(i, dato) {			
					var $option = $("<option/>").attr("value", dato.par_argume).text(dato.par_funcion);
					$element.append($option);				
				});
				
				var listSexoPersonas = ${listSexoPersonas};
				
				//TableManageDefault.init();
				// CARGAR COMBOBOX
				var $element = $('#cbUsuSexo');			
				$.each(listSexoPersonas, function(i, dato) {			
					var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
					$element.append($option);				
				});
				
				
				var listEstadoCivil = ${listEstadoCivil};
				var $element = $('#cbUsuEstadoCivil');			
				$.each(listEstadoCivil, function(i, dato) {			
					var $option = $("<option/>").attr("value", dato.par_funcion).text(dato.par_funcion);
					$element.append($option);				
				});
				
		//	var listadoEspecialidad = ${listadoEspecialidad};
				//TableManageDefault.init();
				// CARGAR COMBOBOX
			//	var $element = $('#cbUsuEspecialidad');			
			//	$.each(listadoEspecialidad, function(i, dato) {			
			//		var $option = $("<option/>").attr("value", dato.par_argume).text(dato.par_funcion);
			//		$element.append($option);				
			//	});
			
	
		
		$("#txtUsuDni").keypress(function(e){
			
			 if(e.which == 13) {
				 
				 var dato=document.getElementById('txtUsuDni').value;
					//alert("dato:"+dato);
					//AJAX PARA OBTENER UN USUARIO
				
					
					$.ajax({
			            type: "GET",
			            url: "${pageContext.request.contextPath}/Usuario/Buscar/" + dato,
			            crossDomain: true,
			            contentType: "application/json; charset=utf-8",
			            dataType: "json",
			            async: true,
			            success: function (response) {
			            	
			            	
			               	//ADD NOTIFICACION
			                 if(response.status === true){
			                	 
			                	 $.toast({
			                		    heading: 'Exito',
			                		    text: 'Usuario Encontrado.',
			                		    position: 'top-center',
			                		    icon: 'success'
			                		});
			                	// alert("Encontrado");
			                 	//CARGAR DATA
			                 	var d = response.data;
			                 //	JSON.stringify(d.nombreCompletod);
			                 	//alert(JSON.stringify(d));
			                	
			                 	if(d.tipo == "2"){
			              		  
			              		  input1.disabled = true;
			              		  input2.disabled = true;
			              		  input3.disabled = true;
			              	  }
			              	  else{
			              		  input3.disabled = false;
			              		  input1.disabled = false;
			              		  input2.disabled = false;
			              	  }
			                 	
			                 	$("#txtIdPersona").val($.trim(d.persona));	
								$("#txtUsuNombreCompl").val($.trim(d.nombreCompleto));	
								$("#dtUsuFechNacimiento").val($.trim(d.fechaNacimiento));
								$('#cbUsuSexo option[value="' + $.trim(d.sexo) + '"]').attr("selected", "selected");
								$('#cbUsuEstadoCivil option[value="' + $.trim(d.civil) + '"]').attr("selected", "selected");
								
								$("#txtUsuCorreoElect").val($.trim(d.email));
								$("#txtUsuDireccion").val($.trim(d.direccion));
								$('#cbUsuEstado option[value="' + $.trim(d.estado) + '"]').attr("selected", "selected");
								
								$('#txtTipoUsuario option[value="' + $.trim(d.tipo) + '"]').attr("selected", "selected");
								$('#cbUsuEspecialidad option[value="' + $.trim(d.especialidad) + '"]').attr("selected", "selected");
								
								$("#txtUsuNumeroEspeci").val($.trim(d.cmp));	
								
								$("#txtUsuNumColegiatura").val($.trim(d.rne));
								
								$("#txtTelefono").val($.trim(d.telefonono));	
								
								$("#txtUsuContraseña").val($.trim(d.pass));
								
			                 	//CARGAR MODAL
			     	            //$('#modal-dialog').modal('show');
			                 }else{
			                	 
			                	 $.toast({
									    heading: 'Error',
									    text: 'No se Pudo Encontrar Ningun Usuario con DNI: '+dato,
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
	
	
	
	
	
	
	
	 $('body').on('click', '#btnBuscarUsuario', function (e) {
	 	 
		 var dato=document.getElementById('txtUsuDni').value;
			//alert("dato:"+dato);
			//AJAX PARA OBTENER UN USUARIO
		 if(dato==""){
				
				$.toast({
			    	heading: 'Aviso!',
			    	text: 'No ha ingresado DNI',
			    	position: 'top-center',
			    	icon: 'error'
				});
		  }
			$.ajax({
	            type: "GET",
	            url: "${pageContext.request.contextPath}/Usuario/Buscar/" + dato,
	            crossDomain: true,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {
	            	
	            	 //Añadimos la imagen de carga en el contenedor
	              //  $('#content').html('<div class="loading"><img src="../resources/img/sanna.gif" alt="loading" /><br/>Un momento, por favor...</div>');
	              //  $("#content").fadeIn(1000);
	                
	               // $("#content").fadeOut(1000);
	               	//ADD NOTIFICACION
	                 if(response.status === true){
	                	 
	                	 
	                	 $.toast({
	                		    heading: 'Exito',
	                		    text: 'Usuario Encontrado.',
	                		    position: 'top-center',
	                		    icon: 'success'
	                		});
	                	 
	                	// alert("Encontrado");
	                 	//CARGAR DATA
	                 	var d = response.data;
	                 //	JSON.stringify(d.nombreCompletod);
	                 	//alert(JSON.stringify(d));
	                	if(d.tipo == "2"){
		              		  
		              		  input1.disabled = true;
		              		  input2.disabled = true;
		              		  input3.disabled = true;
		              	  }
		              	  else{
		              		  input3.disabled = false;
		              		  input1.disabled = false;
		              		  input2.disabled = false;
		              	  }
	                 
	                 	$("#txtIdPersona").val($.trim(d.persona));	
						$("#txtUsuNombreCompl").val($.trim(d.nombreCompleto));	
						$("#dtUsuFechNacimiento").val($.trim(d.fechaNacimiento));
						$('#cbUsuSexo option[value="' + $.trim(d.sexo) + '"]').attr("selected", "selected");
						$('#cbUsuEstadoCivil option[value="' + $.trim(d.civil) + '"]').attr("selected", "selected");			
						$("#txtUsuCorreoElect").val($.trim(d.email));
						$("#txtUsuDireccion").val($.trim(d.direccion));
						$('#cbUsuEstado option[value="' + $.trim(d.estado) + '"]').attr("selected", "selected");				
						$('#txtTipoUsuario option[value="' + $.trim(d.tipo) + '"]').attr("selected", "selected");
						$('#cbUsuEspecialidad option[value="' + $.trim(d.especialidad) + '"]').attr("selected", "selected");
						$("#txtUsuNumeroEspeci").val($.trim(d.cmp));	
						$("#txtUsuNumColegiatura").val($.trim(d.rne));
						$("#txtTelefono").val($.trim(d.telefonono));	
						$("#txtUsuContraseña").val($.trim(d.pass));
						
	                 	//CARGAR MODAL
	     	            //$('#modal-dialog').modal('show');
	                 }else{
	                
	                	 $.toast({
							    heading: 'Error',
							    text: 'No se Pudo Encontrar Ningun Usuario con DNI: '+dato,
							    position: 'top-center',
							    icon: 'error'
							});
	               
	                 }
	            },
	          //  error: OnErrorCall
	        });
			return false;
			
			 });
		
	 
	 function botar(){
		 var lleno=0;  
		var usua=document.getElementById('txtTipoUsuario').value;  
		var nombre=document.getElementById('txtUsuNombreCompl').value;
		var fecha=document.getElementById('dtUsuFechNacimiento').value;
		var sexo=document.getElementById('cbUsuSexo').value;
		var estado=document.getElementById('cbUsuEstado').value;	
		var pass=document.getElementById('txtUsuContraseña').value;
		var especialidad=document.getElementById('cbUsuEspecialidad').value;
		var cmp=document.getElementById('txtUsuNumColegiatura').value;
		var rne=document.getElementById('txtUsuNumeroEspeci').value;

		
		if(usua=="0" || usua=="2"){
		
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
			if(pass=="") 	//5
		  	{
			  $.toast({
    		    heading: 'Error',
    		    text: 'Debe registrar contraseña',
    		    position: 'top-center',
    		    icon: 'error'
    		});
			  //return true;
		  	}
			else
			{
				lleno++;
			} 
			
		
		}
		
			return lleno;
	 }
	 
	 function botar1(){
		 var lleno=0;  
			var usua=document.getElementById('txtTipoUsuario').value;  
			var nombre=document.getElementById('txtUsuNombreCompl').value;
			var fecha=document.getElementById('dtUsuFechNacimiento').value;
			var sexo=document.getElementById('cbUsuSexo').value;
			var estado=document.getElementById('cbUsuEstado').value;	
			var pass=document.getElementById('txtUsuContraseña').value;
			var especialidad=document.getElementById('cbUsuEspecialidad').value;
			var cmp=document.getElementById('txtUsuNumColegiatura').value;
			var rne=document.getElementById('txtUsuNumeroEspeci').value;

			
			if(usua=="1" || usua=="3"){
				
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
				if(pass=="") 	//5
			  	{
				  $.toast({
	    		    heading: 'Error',
	    		    text: 'Debe registrar contraseña',
	    		    position: 'top-center',
	    		    icon: 'error'
	    		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				if(especialidad=="") 	//6
			  	{
				  $.toast({
	    		    heading: 'Error',
	    		    text: 'Debe registrar especialidad',
	    		    position: 'top-center',
	    		    icon: 'error'
	    		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				if(cmp=="") 	//7
			  	{
				  $.toast({
	    		    heading: 'Error',
	    		    text: 'Debe registrar colegiatura',
	    		    position: 'top-center',
	    		    icon: 'error'
	    		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				if(rne=="") 	//8
			  	{
				  $.toast({
	    		    heading: 'Error',
	    		    text: 'Debe registrar N° medico',
	    		    position: 'top-center',
	    		    icon: 'error'
	    		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
		}
			return lleno;
	 }
	  $('body').on('click', '#btnRegistrarUsuarios', function (e) {
		    
			var dniUsu = $("#txtUsuDni").val();
			var correo=$("#txtUsuCorreoElect").val();
			var usu=$("#txtTipoUsuario").val();
			
					//validamos campos
		
			
			
			if($.trim(dniUsu) == ""){
			$.toast({
			    heading: 'Aviso!',
			    text: 'No ha ingresado DNI',
			    position: 'top-center',
			    icon: 'error'
			});
			
			    return false;
			}
					
			if($.trim(usu) == ""){
				$.toast({
				    heading: 'Aviso!',
				    text: 'No ha seleccionado tipo de usuario',
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
					    text: 'No ha ingresado un correo electronico correcto',
					    position: 'top-center',
					    icon: 'error'
					});
				    return false;
			  } 
			 
				var valor=0;
				var valor1=0;
				valor=botar();
				valor1=botar1();
				
				
				if(valor==5){		   
			
		  
			 var formTOJSON= JSON.stringify({
				 
				 	"dni":$("#txtUsuDni").val(),
				 	"nombreCompleto":$('#txtUsuNombreCompl').val(),
					"fechaNacimiento":$('#dtUsuFechNacimiento').val(),
					"sexo":$('#cbUsuSexo').val(), 
					"civil":$('#cbUsuEstadoCivil').val(),
					"email":$('#txtUsuCorreoElect').val(),
					"direccion":$('#txtUsuDireccion').val(),
					"estado":$('#cbUsuEstado').val(),
					"especialidad":$('#cbUsuEspecialidad').val(),
					"rne":$('#txtUsuNumColegiatura').val(),
					"cmp":$('#txtUsuNumeroEspeci').val(),
					"telefonono":$("#txtTelefono").val(),
					"pass":$('#txtUsuContraseña').val(), 
					"tipo":$('#txtTipoUsuario').val(),
					"usuarioCreacion_use":$('#TXTNOMUSUARIO').val()
				
			 })
			 
			 $.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/Usuario/Registrar",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {                                            
	            	//$("#modal-dialog").modal('hide');
	           		
	           		if(response.status === true){
	           			//alert(JSON.stringify(d));
	           		 $.toast({
             		    heading: 'Exito',
             		    text: 'Usuario Registrado Correctamente.',
             		   position: 'top-center',
             		    icon: 'success'
             		});
	           			
	           		//	alert("Usuario Registrado Correctamente");
	           			LimpiartxtUsuarios();
	           			$("#formMantUsuarios")[0].reset();
	           			
	                  	//CARGAR DATATABLE
	        	      //  LoadDataTableWithAjax()
	        	       // $("#stack2").modal('hide');
	        	      //  $("#modal-dialog").modal('hide');
	           		}else{
	           			
	           			//alert("El DNI YA EXISTE: "+response.message)
	           			
	           			$.toast({
					    heading: 'Warning',
					    text: 'DNI ya registrado..! ;)',
					    position: 'top-center',
					    showHideTransition: 'plain',
					    icon: 'warning'
					});
	           		}
	               
	            },
	           //error: OnErrorCall
	        });
				}
				 
				if(valor1==8){		   
					
					  
					 var formTOJSON= JSON.stringify({
						 
						 	"dni":$("#txtUsuDni").val(),
						 	"nombreCompleto":$('#txtUsuNombreCompl').val(),
							"fechaNacimiento":$('#dtUsuFechNacimiento').val(),
							"sexo":$('#cbUsuSexo').val(), 
							"civil":$('#cbUsuEstadoCivil').val(),
							"email":$('#txtUsuCorreoElect').val(),
							"direccion":$('#txtUsuDireccion').val(),
							"estado":$('#cbUsuEstado').val(),
							"especialidad":$('#cbUsuEspecialidad').val(),
							"rne":$('#txtUsuNumColegiatura').val(),
							"cmp":$('#txtUsuNumeroEspeci').val(),
							"telefonono":$("#txtTelefono").val(),
							"pass":$('#txtUsuContraseña').val(), 
							"tipo":$('#txtTipoUsuario').val(),
							"usuarioCreacion_use":$('#TXTNOMUSUARIO').val()
						
					 })
					 
					 $.ajax({
			            type: "POST",
			            url: "${pageContext.request.contextPath}/Usuario/Registrar",
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
		             		    text: 'Usuario Registrado Correctamente.',
		             		   position: 'top-center',
		             		    icon: 'success'
		             		});
			           			
			           		//	alert("Usuario Registrado Correctamente");
			           			LimpiartxtUsuarios();
			           			$("#formMantUsuarios")[0].reset();
			           			
			                  	//CARGAR DATATABLE
			        	      //  LoadDataTableWithAjax()
			        	       // $("#stack2").modal('hide');
			        	      //  $("#modal-dialog").modal('hide');
			           		}else{
			           			
			           			//alert("El DNI YA EXISTE: "+response.message)
			           			
			           			$.toast({
							    heading: 'Warning',
							    text: 'DNI ya registrado..! ;)',
							    position: 'top-center',
							    showHideTransition: 'plain',
							    icon: 'warning'
							});
			           		}
			               
			            },
			           //error: OnErrorCall
			        });
						}
		  });
	 
	  
	  $('body').on('click', '#btnActualizarUsuarios', function (e) {
		  
		  var USER=document.getElementById('TXTNOMUSUARIO').value;
		  var IDPERSONAS=document.getElementById('txtIdPersona').value;
		  
			 var formTOJSON= JSON.stringify({
				 	"dni":$("#txtUsuDni").val(),
				 	"nombreCompleto":$('#txtUsuNombreCompl').val(),
				 	"fechaNacimiento":$('#dtUsuFechNacimiento').val(),
					"sexo":$('#cbUsuSexo').val(), 
					"civil":$('#cbUsuEstadoCivil').val(),
					"email":$('#txtUsuCorreoElect').val(),
					"direccion":$('#txtUsuDireccion').val(),
					"estado":$('#cbUsuEstado').val(),
					"especialidad":$('#cbUsuEspecialidad').val(),
					"rne":$('#txtUsuNumColegiatura').val(),
					"cmp":$('#txtUsuNumeroEspeci').val(),
					"pass":$('#txtUsuContraseña').val(),
					"tipo":$('#txtTipoUsuario').val(),
					"usuarioCreacion_use":USER,
					"telefonono":$('#txtTelefono').val(),
					"persona":IDPERSONAS
					
			 });
			 
			 // alert(formTOJSON);
			 
			 $.ajax({
	            type: "PUT",
	            url: "${pageContext.request.contextPath}/Usuario/Actualizar",
	            crossDomain: true,
	            data:formTOJSON,
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            async: true,
	            success: function (response) {                                            
	            	//$("#modal-dialog").modal('hide');
	           		
	           		if(response.status === true){
	           			
	           			//alert("Usuario Actualizado Correctamente");
	           			 $.toast({
             		    heading: 'Exito',
             		    text: 'Usuario Actualizado Corectamente.',
             		   position: 'top-center',
             		    icon: 'success'
             			});
	           			
	           			LimpiartxtUsuarios();
	           			
	           			$("#formMantUsuarios")[0].reset();
	           			
	                  	//CARGAR DATATABLE
	        	      //  LoadDataTableWithAjax()
	        	       // $("#stack2").modal('hide');
	        	      //  $("#modal-dialog").modal('hide');
	           		}else{
	           			
	           			//alert("No Se Pudo Actualizar")
	           			$.toast({
						    heading: 'Error',
						    text: 'No se pudo Actualizar el Usuario',
						    position: 'top-center',
						    icon: 'error'
						});
	           			
	           		}
	               
	            },
	           //error: OnErrorCall
	        });
		  });
	  
	  
	  
	  function LimpiartxtUsuarios() {
		  
		  document.getElementById('txtUsuDni').value = '';
		  document.getElementById('txtUsuNombreCompl').value = '';
		  
		  document.getElementById('dtUsuFechNacimiento').value = '';
		  document.getElementById('cbUsuSexo').value = '';
		  document.getElementById('cbUsuEstadoCivil').value = '';
		  document.getElementById('txtUsuCorreoElect').value = '';
		  document.getElementById('txtUsuDireccion').value = '';
		  document.getElementById('cbUsuEstado').value = '';
		  document.getElementById('cbUsuEspecialidad').value = '';
		  document.getElementById('txtUsuNumColegiatura').value = '';
		  document.getElementById('txtUsuNumeroEspeci').value = '';
		  document.getElementById('txtTelefono').value = '';
		  document.getElementById('txtUsuContraseña').value = '';
		  document.getElementById('txtTipoUsuario').value = '';
		  
		 
		  
	  }	
	  
	
	</script>
	
	
	
	
	
	
	
  </body> 
</html>