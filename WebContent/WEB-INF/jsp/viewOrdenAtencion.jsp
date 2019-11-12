	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	<!--[if IE 8]> <html lang="es" class="ie8"> <![endif]-->
	<!--[if !IE]><!-->
	<html lang="es">
	<!--<![endif]-->
		<head>
		<meta charset="utf-8" />
		<title> TRIAGE</title>
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

	<nav class="navbar header-navbar pcoded-header">
	<div class="navbar-wrapper">
	<div class="navbar-logo">
	
	<a href="#">
	
	<img src="../resources/img/logosanna.png">
	
	
	</a>
	
	</div> 
	
	 <div class="navbar-container container-fluid">
	<ul class="nav-left">
	<li class="header-search">
	<div class="main-search morphsearch-search"> 
	<div class="input-group"> 
	
	 
	</div> 
	</div> 
	</li> 
	<li>
	
	</li>
	</ul>
	<ul class="nav-right">
	<li class="header-notification">
	<div class="dropdown-primary dropdown">
	<div class="dropdown-toggle" data-toggle="dropdown">
	
	</div>
	<ul class="show-notification notification-view dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
	<li>
	<h6>Notifications</h6>
	<label class="label label-danger">New</label>
	</li>
	<li>
	<div class="media">
	<img class="img-radius" alt="Generic placeholder image">
	<div class="media-body">
	<h5 class="notification-user">John Doe</h5>
	<p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
	<span class="notification-time">30 minutes ago</span>
	</div>
	</div>
	</li>
	<li>
	<div class="media">
	<img class="img-radius"  alt="Generic placeholder image">
	<div class="media-body">
	<h5 class="notification-user">Joseph William</h5>
	<p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
	<span class="notification-time">30 minutes ago</span>
	</div>
	</div>
	</li>
	<li>
	<div class="media">
	<img class="img-radius"  alt="Generic placeholder image">
	<div class="media-body">
	<h5 class="notification-user">Sara Soudein</h5>
	<p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
	<span class="notification-time">30 minutes ago</span>
	</div>
	</div>
	</li>
	</ul>
	</div>
	</li>
	<li class="header-notification">
	<div class="dropdown-primary dropdown">
	<div class="displayChatbox dropdown-toggle" data-toggle="dropdown">
	<!--<i class="feather icon-message-square"></i>-->
	<!--<span class="badge bg-c-green">3</span>-->
	</div>
	</div>
	</li>
	<li class="user-profile header-notification">
	<div class="dropdown-primary dropdown">
	<div class="dropdown-toggle" data-toggle="dropdown">


<h5 id="descripTipo" >${descTipo} :
<span id="nombreCompleto"  class="text-c-green m-l-10">${sessionNombreCompleto}</span>
</h5> 
</div>
</div>
</li>


<li class="user-profile header-notification">
<div class="dropdown-primary dropdown">
<div class="dropdown-toggle" data-toggle="dropdown">

<img src="../resources/img/admin.png">
<span >${sessionNombre}</span>

<i class="feather icon-chevron-down"></i>

<input type="text" class="form-control" id="UsuarioCreacion" value="${sessionNombre}" hidden="true" >



</div>
	<ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">

	<li>
	<a href="Logout" class="dropdown-item"><i class="feather icon-log-out"></i>Cerrar Session</a>

	</li>
	</ul>
	</div>
	</li>
	</ul>
	</div>
	</div>
	</nav>

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
	<nav class="pcoded-navbar">
	<div class="nav-list">
	<div class="pcoded-inner-navbar main-menu">
	
<ul class="pcoded-item pcoded-left-item">
<li class="pcoded-hasmenu">
<a href="javascript:void(0)" class="waves-effect waves-dark">
<span class="pcoded-micon"><i class="feather icon-home"></i></span>
	 <span class="pcoded-mtext">Menu Principal</span>
	</a>
<ul class="pcoded-submenu">
<li class="">
	<a href="../OrdenAtencion/Web" class="waves-effect waves-dark">
	<span class="pcoded-mtext">Listado de Triage</span>
</a>
</li>
<li class="">
	<a href="../ItemNivelPorcentualReport/WebReporteEmergencia" class="waves-effect waves-dark">
	<span class="pcoded-mtext">Reporte Nivel porcentual de pacientes atendidos en triage</span>
	</a>
	</li>
<li class="">
	<a href="../ItemReporteGeneralTriaje/WebReporteEmergencia" class="waves-effect waves-dark">
	<span class="pcoded-mtext">Reporte General de Triage</span>
	</a>
	</li>
</ul>
</li>

</ul>
	
	</div>
	</div>
	</nav> 

	 <div class="pcoded-content">

	<div class="page-header card">
	<div class="row align-items-end">
	<div class="col-lg-8">
	<div class="page-header-title">

	<div class="d-inline">

	<br>
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
<button class="btn btn-info btn-round waves-effect waves-light" value="Buscar" id="btnBuscar" type="button">BUSCAR
<img src="../resources/img/busqueda.png"/>
</button>


<button class="btn btn-danger btn-round waves-effect waves-light" value="Abandonar"  id="btnAbandonar" type="button">Abandonar 
<img src="../resources/img/disablePerson.png"/>
</button>



</div>
	</div>
	


	</div>
	</div>
	</div>

	</div>
	</div>

	<div class="pcoded-inner-content">

	<div class="main-body">
	<div class="page-wrapper">

	<div class="page-body">
	<div class="row">
	<div class="col-sm-12">

	<div class="card">
	<div class="card-header">

	</div>
	<div class="card-block" >
	<div class="table-responsive dt-responsive" >
	<table id="data-table-default" class="table table-striped table-bordered nowrap" >
	<thead>
								
								
								<th>IdOrden</th>							
								<th>Codhc</th>
								<th>Nombres</th>
								<th>Sexo</th>
								<th>Edad</th>
								<th>FechaHora</th>
								<th>Hora</th>
								<th>Estado</th>
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
	</div>

	<div id="styleSelector">
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>


	<div class="modal fade " id="modal-dialog" >
				<div class="modal-dialog modal-full">
					<div class="modal-content" >
						<div class="modal-header">
							<h4 class="modal-title" >Motivos de Atencion</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							    
	                        	<form id="formModal">
	                        	<input hidden  id="hddModalCodigo" value="0"/>
	                        	<input hidden id="hddMotivo" value="0"/>
	                        		
									
								
	<div class="row">
	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" id="txtAbusoMa" class="form-control" data-toggle="modal" onclick="lol('1')"  href="#stack2" value="Abuso y Maltrato Infantil">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" id="txtAdulMal" class="form-control" value="Adulto con mal Estado general" onclick="lol('2')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	 <div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" id="txtAdultosinlip" class="form-control" value="Adulto con sincope o lipotimia" onclick="lol('3')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" id="txtAgresion"  value="Agresión" onclick="lol('4')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	</div>
	
	
	<div class="row">
	
	
	<div class="col-sm-3">
	
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Alergia" id="txtAlerg"  onclick="lol('5')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Aparentemente ebrio" id="txtEbrio"  onclick="lol('6')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Asma " id="txtAsma"  onclick="lol('7')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Autolesion " id="txtAutolesion"  onclick="lol('8')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	
	
		</div>
		
		
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Bebe con mal estado general" id="txtBebeMal"  onclick="lol('9')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Caidas" id="txtCaidas"  onclick="lol('10')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Cefalea" id="txtCefalea"  onclick="lol('11')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Comportamiento extraño"   id="txtComext"  onclick="lol('12')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>	
		
	</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Convulsiones" id="txtConvulsiones"  onclick="lol('13')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Cuerpo extraño" id="txtCuerpoExt"  onclick="lol('14')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Diabetes " id="txtDiabetes"  onclick="lol('15')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Diarrea y vomitos " id="txtDiavom"  onclick="lol('16')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Disnea en adultos" id="txtDisneaA"  onclick="lol('17')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Disnea en niños" id="txtDisneaN"  onclick="lol('18')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor abdominal en adultos" id="txtDolorAbA"  onclick="lol('19')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	
	<div class="col-sm-3">
	 <div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor abdominal en niños" id="txtDolorAbN"  onclick="lol('20')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	</div>	
	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor en cuello" id="txtDolorCuello"  onclick="lol('21')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor de espalda" id="txtDolorEsp"  onclick="lol('22')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor de garganta" id="txtDolorGar"  onclick="lol('23')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor testicular" id="txtTesticular"  onclick="lol('24')" data-toggle="modal"  href="#stack2">
	</div>
	</div>
	
		</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Dolor toracico" id="txtDolorToracico"  onclick="lol('25')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Embarazo" id="txtEmbarazo"  onclick="lol('26')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Enfermedades de Transmisión sexual" id="txtETS"  onclick="lol('27')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Enfermedad mental" id="txtEnfMental"  onclick="lol('28')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Exantemas" id="txtExantemas"  onclick="lol('29')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Exposición a sustancias quimicas" id="txtExQuimica"  onclick="lol('30')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>

	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Hemorragia gastrointestinal" id="txtHemoGatro"  onclick="lol('31')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Hemorragia vaginal" id="txtHemoVaginal"  onclick="lol('32')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Herida" id="txtHerida"  onclick="lol('33')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Infecciones locales y abscesos" id="txtInfLocAbs"  onclick="lol('34')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	

	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Lesiones en el tronco" id="txtLesionesTronco"  onclick="lol('35')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Mordeduras y picaduras" id="txtMordedura"  onclick="lol('36')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	</div>	
	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Neonato con mal estado general" id="txtNeomalest"  onclick="lol('37')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Niño cojenado" id="txtNinoCojenado"  onclick="lol('38')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Niño con mal estado general" id="txtNinomalGe"  onclick="lol('39')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Niño irritable" id="txtNinoIrritable"  onclick="lol('40')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	</div>	
	
	<div class="row">
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Padres Preocupados" id="txtPadrePreo"  onclick="lol('41')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Palpitaciones" id="txtPalpitaciones"  onclick="lol('42')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Politraumatismo" id="txtPolitraumatismo"  onclick="lol('43')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas dentales" id="txtProblemaDental"  onclick="lol('44')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	
		</div>	
		
		<div class="row">
		
		<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas en las extremidades" id="txtProblemExterm"  onclick="lol('45')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas faciales" id="txtProblemaFacial"  onclick="lol('46')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas oculares" id="txtProblemOcular"  onclick="lol('47')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas de oido" id="txtProblemOido"  onclick="lol('48')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
	
		</div>	
		
			<div class="row">
		
		<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Problemas urinarios" id="txtProblemaUrinario"  onclick="lol('49')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Quemaduras y escaldaduras" id="txtQuemaduraEsca"  onclick="lol('50')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>

	
	
	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Sobredosis y envenenamientos" id="txtSobreEnve"  onclick="lol('51')" data-toggle="modal"  href="#stack2">
	</div>
	</div>

	<div class="col-sm-3">
	<div class="input-group input-group-primary">
	<span class="input-group-prepend"><label class="input-group-text"><i class="icofont icofont-presentation"></i></label></span>
	<input type="button" class="form-control" value="Traumatismo craneoencefalico" id="txtTraumaCraneo"  onclick="lol('52')" data-toggle="modal"  href="#stack2">
	</div> 
	</div>
		
			</div>	
		
		
		
		
		
	</div>
	
	
	</div>
		
		

	
								
								</form>
						</div>
						<div class="modal-footer">
							<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
							
							<!--  <a href="javascript:;" class="btn btn-success" id="btnModalSave">Guardar</a>-->
						</div>
					</div>
				</div>
			</div>

	  <div class="modal fade " id="stack2" >
				<div class="modal-dialog modal-full2">
					<div class="modal-content" >
						<div class="modal-header">
							<h4 class="modal-title" >Motivos de Atencion</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
						
						<div class="main-body">
	<div class="page-wrapper">
	<div class="page-body">
	<div class="row">
	<div class="col-lg-4 col-xl-3">
	<div id="navigation">
	<div class="row">
	<div class="col-lg-12">
	<div class="card version">
	<div class="card-header borderless">
	<h5 id="txtNombreCompleto">Datos Paciente y Signos Vitales</h5>
	<div class="card-header-right">
	<i class="icofont icofont-navigation-menu"></i>
	</div>
	</div>
	<div class="card-block">
	<div class="support-btn">
	<select id="txtTopicos" name="select" class="form-control form-control-success fill">
	<option value="0">Seleccione Topico...</option>
	<c:forEach var="Top" items="${listadoTopicos}" varStatus="status">
	<option value="${Top.descripcionTopico}">${Top.descripcionTopico}</option>
	</c:forEach>			

	</select>
	</div>
	<ul class="nav navigation">
	<h4 class="sub-title">Prioridad:</h4>
	<select id="txtPrioridad" name="select" class="form-control form-control-success fill">
	<option value="0" ></option>
	<option value="1" >REANIMACIÓN</option>
	  <option value="2" >EMERGENCIA</option>
	  <option value="3" >URGENCIA</option>
	  <option value="4">URGENCIA MENOR</option>
	   <option value="5">SIN URGENCIA</option>
	</select>
	<br>
	<li class="waves-effect waves-light">
	<a href="#v_1_2">Fecha Ingreso<span class="text-muted text-regular pull-right" id="txtFechaIngreso">18.12.2017</span></a>
	</li>
	<li class="waves-effect waves-light">
	<a href="#v_1_0">Hora Ingreso<span class="text-muted text-regular pull-right" id="txtHoraIngreso">1.11.2017</span></a>
	</li>
	<li class="waves-effect waves-light">
	<a href="#v_1_3">Edad Paciente<span class="text-muted text-regular pull-right" id="txtEdad">1.11.2017</span></a>
	</li>
	<li class="waves-effect waves-light">
	<a href="#v_1_4">Sexo Paciente<span class="text-muted text-regular pull-right" id="txtSexo">1.11.2017</span></a>
	</li>
     <li class="waves-effect waves-light">
	<a href="#v_1_5">Paciente<span class="text-muted text-regular pull-right" id="txtNombre"></span></a>
	</li>
     

	<li class="navigation-divider"></li>
	<li class="navigation-header"><i class="icon-gear pull-right"></i> <b>Motivo de Ingreso:</b></li>
	<li class="waves-effect waves-light">
	<a id="txtMotivoIngreso"  href="#" target="_blank"><i class="icofont icofont-speech-comments m-r-5"></i> Contact me</a>
	</li>
	</ul>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div class="col-lg-8 col-xl-9">
	<div class="col-sm-12">
	<div class="card" id="v_1_2">
	<div class="card-block">

	<div class="row">




	<div class="col-sm-12 col-xl-3 m-b-30 cajita1" id="dtPrioridad1" style="border:4px solid red;">


	<h4 class="sub-title">Discriminador Prioridad 1</h4>

	<div class="checkbox-fade fade-in-success" id="caja1">
	<label>
	<input type="checkbox" id="campo1" name="campo1" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador1"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja2">
	<label>
	<input type="checkbox" id="campo2" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador2"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja3">
	<label>
	<input type="checkbox" value="" class="foo" id="campo3">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador3"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja4">
	<label>
	<input type="checkbox" id="campo4" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador4"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja5">
	<label>
	<input type="checkbox" id="campo5" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador5"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja6">
	<label>
	<input type="checkbox" id="campo6" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador6"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja7">
	<label>
	<input type="checkbox" id="campo7" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador7"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja8">
	<label>
	<input type="checkbox" id="campo8" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador8"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja9">
	<label>
	<input type="checkbox" id="campo9" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador9"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja10">
	<label>
	<input type="checkbox" id="campo10" class="foo" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador10"></span>
	</label>
	</div>
	</div>

	<div class="col-sm-12 col-xl-3 m-b-30" id="dtPrioridad2" style="border:4px solid orange;">
	<h4 class="sub-title">Discriminador Prioridad 2</h4>

	<div class="checkbox-fade fade-in-success" id="caja11">
	<label>
	<input type="checkbox" id="campo11" class="foo2" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador11"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja12">
	<label>
	<input type="checkbox" id="campo12" class="foo2" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador12"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja13">
	<label>
	<input type="checkbox" id="campo13" class="foo2" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador13"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja14">
	<label>
	<input class="foo2" type="checkbox" id="campo14" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador14"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja15">
	<label>
	<input class="foo2" type="checkbox" id="campo15" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador15"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja16">
	<label>
	<input class="foo2" type="checkbox" id="campo16" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador16"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja17">
	<label>
	<input class="foo2" type="checkbox" id="campo17" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador17"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja18">
	<label>
	<input class="foo2" type="checkbox" id="campo18" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador18"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja19">
	<label>
	<input class="foo2" type="checkbox" id="campo19" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador19"></span>
	</label>
	</div>

	<div class="checkbox-fade fade-in-success" id="caja20">
	<label>
	<input class="foo2" type="checkbox" id="campo20" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador20"></span>
	</label>
	</div>


	</div>

	<div class="col-sm-12 col-xl-3 m-b-30" id="dtPrioridad3" style="border:4px solid yellow;">
	<h4 class="sub-title">Discriminador Prioridad 3</h4>

	<div class="checkbox-fade fade-in-success" id="caja21">
	<label>
	<input type="checkbox" class="foo3" id="campo21" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador21"> </span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja22">
	<label>
	<input type="checkbox" id="campo22" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador22"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja23">
	<label>
	<input type="checkbox" id="campo23" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador23"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja24">
	<label>
	<input type="checkbox" id="campo24" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador24"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja25">
	<label>
	<input type="checkbox" id="campo25" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador25"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja26">
	<label>
	<input type="checkbox" class="foo3" id="campo26" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador26"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja27">
	<label>
	<input type="checkbox" id="campo27" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador27"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja28">
	<label>
	<input type="checkbox" id="campo28" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador28"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja29">
	<label>
	<input type="checkbox" id="campo29" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador29"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja30">
	<label>
	<input type="checkbox" id="campo30" class="foo3" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador30"></span>
	</label>
	</div>


	</div>

	<div class="col-sm-12 col-xl-3 m-b-30" style="border:4px solid green;" id="dtPrioridad4">

	<h4 class="sub-title">Discriminador Prioridad 4</h4>
	<div class="checkbox-fade fade-in-success" id="caja31">
	<label>
	<input type="checkbox" id="campo31" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador31"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja32">
	<label>
	<input type="checkbox" id="campo32" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador32"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja33">
	<label>
	<input type="checkbox" id="campo33" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador33"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja34">
	<label>
	<input type="checkbox" id="campo34" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador34"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja35">
	<label>
	<input type="checkbox" id="campo35" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador35"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja36">
	<label>
	<input type="checkbox" id="campo36" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador36"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja37">
	<label>
	<input type="checkbox" id="campo37" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador37"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja38">
	<label>
	<input type="checkbox" id="campo38" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador38"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja39">
	<label>
	<input type="checkbox" id="campo39" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador39"></span>
	</label>
	</div>
	<div class="checkbox-fade fade-in-success" id="caja40">
	<label>
	<input type="checkbox" id="campo40" class="foo4" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador40"></span>
	</label>
	</div>


	</div>

<div class="col-sm-12 col-xl-3 m-b-30" style="border:4px solid blue;" id="dtPrioridad5">

	<h4 class="sub-title">Discriminador Prioridad 5</h4>
	<div class="checkbox-fade fade-in-success" id="caja41">
	<label>
	<input type="checkbox" id="campo41" class="foo6" value="">
	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success"></i>
	</span>
	<span id="Discriminador41"></span>
	</label>
	</div>
</div>

	<div class="col-sm-12 col-xl-12 m-b-30" style="border:1px solid black;" id="dtPrioridad4D">
	<br>
	<div class="checkbox-fade fade-in-success" id="btnFur">
	<label>
	<input type="checkbox" id="checkFur" class="foo5">

	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success" ></i>
	</span>
	<span>Habilitar FUR</span>
	</label>
	<input type="text" class="form-control" id="txtFur">
	</div>

	<div class="checkbox-fade fade-in-success">
	<label>
	<input type="checkbox" id="checkAle" class="foo5">

	<span class="cr">
	<i class="cr-icon icofont icofont-ui-check txt-success " ></i>
	</span>
	<span>Alergia</span>
	</label>
	<input type="text" class="form-control" id="txtAlergia">
	</div>



	<div class="checkbox-fade fade-in-success" id="btnRegistrarTriage">
	<a  class="btn waves-effect waves-light btn-primary btn-block" ><i class="icofont icofont-life-buoy"></i>Registrar Triaje</a>
	</div>

	<br>

	<br>

	</div>

	<div class="col-sm-12 col-xl-12 m-b-30" >
	<h3 >SIGNOS VITALES</h3>
	</div>
	<label>Peso:</label>
	<input type="text" class="form-control" id="peso" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; ><strong>KG.</strong>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label >PA:</label>
	<input type="text" class="form-control" id="pa1" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; >

	<label> / </label>
	<input type="text"  class="form-control" id="pa2" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; >
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label>T°:</label>
	<input type="text"  class="form-control"  id="temperatura"  maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; >
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label>SAT O2:</label>
	<input type="text"  class="form-control" id="sato2" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; ><br /><br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label>F.C:</label>
	<input type="text"  class="form-control" id="fc" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; ><strong>X/min.</strong>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label>F.R:</label>
	<input type="text"  class="form-control" id="fr" maxlength="3" style="width: 70px;height: 30px" onkeypress="solonumeros(event)"; ><strong>X/min.</strong>
	<br />
	<div class="col-sm-12 col-xl-12 m-b-30" style="border:1px solid black;">
	<br />

	<label>Antecedentes</label>
	<textarea  class="form-control" id="txtAtencedentes" rows="4" cols="40" style="width: 700px;height: 100px"></textarea>
	<br>
	<label>Observacion</label>
	<textarea  class="form-control" id="txtObservacion" rows="4" cols="40" style="width: 700px;height: 100px"></textarea>
	<br>

	</div>




	</div>
	</div>
	</div>
	</div>


	</div>
	</div>
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
		<script src="<c:url value="/resources/js/reloj.js"/>"></script>

		<script src="<c:url value="/resources/js/vanillatoasts.js"/>"></script>
	
		<script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>
		
		<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="9e074240f0b9d65a3dcc7a4f-|49" defer=""></script>
		<script>
		
	
		
		
		var UsuCreacion=document.getElementById('UsuarioCreacion').value;
	
		function botar()
		{
		
			var edad=$('#txtEdad').text();
			 
			var topico=document.getElementById('txtTopicos').value;
			 var peso=document.getElementById('peso').value;
			 var pa=document.getElementById('pa1').value;
			 var pa2=document.getElementById('pa2').value;
			 var t=document.getElementById('temperatura').value;
			 var sato2=document.getElementById('sato2').value;
			 var fc=document.getElementById('fc').value;
			 var fr=document.getElementById('fr').value;
	         var prioridad=document.getElementById('txtPrioridad').value;
//alert("edad:"+edad+"top:"+topico+"peso:"+peso+"pa:"+pa+"pa2:"+pa2+"t:"+t+"sato:"+sato2+"fc:"+fc+"fr:"+fr+"prioridad:"+prioridad)

	
			 var lleno=0;  

			if(edad>14)
			{
			
				if(topico=="0")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar topico',
        		    position: 'top-center',
        		    icon: 'error' 
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if((pa=="" && pa2=="") || (pa!="" && pa2=="") || (pa=="" && pa2!=""))
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar presion arterial',
        		    position: 'top-center',
        		    icon: 'error' 
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
			
				if(t=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar temperatura',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(sato2=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar SATO2',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(fc=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar fc',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(fr=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar fr',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(prioridad=="0")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar prioridad',
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
			///////////
			else
			{
			
				if(topico=="0")
				  {
					  $.toast({
	        		    heading: 'Error',
	        		    text: 'Debe registrar topico',
	        		    position: 'top-center',
	        		    icon: 'error'
	        		});
					  //return true;
				  }
				else
				{
					lleno++;
				}
				
				if(peso=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar peso',
        		    position: 'top-center',
        		    icon: 'error' 
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}

				if(t=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar temperatura',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(sato2=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar SATO2',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(fc=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar fc',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(fr=="")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar fr',
        		    position: 'top-center',
        		    icon: 'error'
        		});
				  //return true;
			  	}
				else
				{
					lleno++;
				}
				
				if(prioridad=="0")
			  	{
				  $.toast({
        		    heading: 'Error',
        		    text: 'Debe registrar prioridad',
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
		
		function solonumeros(e)
	    {
		var key = window.event ? e.which : e.keyCode;
	        if(key<48||key>57)
	            e.preventDefault();
	    }

		$(document).ready(function() {
			
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
			 $('#txtFur').prop( "disabled", true );
			 var furdata =  $('#txtFur').val()
			 $('#txtAlergia').prop( "disabled", true );
			 
			
			//$('#txtFechaInicio').val(fecha)
			
			var dt = $("#data-table-default").DataTable({
				responsive:!0,
				ordering			:	false,
				bScrollAutoCss		:	false,
				bStateSave			:	false,
				bAutoWidth			:	false,
				bScrollCollapse		:	false,
				searching			:	true,
				paging				:	true,
				  "oLanguage": {
				        "sEmptyTable": "   "
				    },
				iDisplayLength		:	10,
				responsive			:	true,
				bLengthChange		: 	false,
				
				columns:[
											
						{data : "idordenAtencion"},
						
						{data : "codHc"},
						{data : "nombreCompleto"},
						{data : "sexo"},
						{data : "edad"},
						{data : "fechaHora"},
						{data : "hora"},
						{data : "estado_triaje"},
						{data : "idordenAtencion",'orderable': false, 
							'render': function ( data, type, full, meta ) {
								var 
								html = '<button class="btn btn-xs btn-primary" id="btnPageEditRow" data-codigo="' + data + '">ABRIR ATENCION</button>';
								
								return html;
							}
						}
						]
				    
				    ,
				    rowCallback:function(row,data)
				    {
				    
				    	 //alert(JSON.stringify(data));
				    	 
				      if(data.estado_triaje == "PENDIENTE")
				      {
				        $($(row).find("td")[7]).css("color","##FFBF00");
				      }
				      else if(data.estado_triaje == "EN ATENCION"){
				          $($(row).find("td")[7]).css("color","#01DF3A");
				      }
				    
				      
				    }
				    
			});
			
			LoadDataTableWithAjax()
			//CARGAR DATATABLE
			
			 var table = $('#data-table-default').DataTable();
		       
		       $('#data-table-default tbody').on( 'click', 'tr', function () {
		           if ( $(this).hasClass('selected') ) {
		               $(this).removeClass('selected');
		           }
		           else {
		               table.$('tr.selected').removeClass('selected');
		               $(this).addClass('selected');
		               
		              var datitoFila= table.row(".selected").data();
		              var usu=document.getElementById('UsuarioCreacion').value; 
		               formToJSONIDORDE =JSON.stringify({
							"idordenAtencion": datitoFila.idordenAtencion,
							"usuarioalta":usu
						});
		               
		           	if (window.sessionStorage) {
		           		  sessionStorage.setItem("IdOrden", datitoFila.idordenAtencion);
		           		}
		           	
		             //  alert(formToJSONIDORDE);
		               
		           }
		       } );
			
	       
		});
		
		function combosGenericos(){
			if($('#Discriminador1').text()==""){
				$('#caja1').css("display", "none");
			}else{
				$('#caja1').css("display", "block");
			}
			if($('#Discriminador2').text()==""){
				$('#caja2').css("display", "none");
			}
			else{
				$('#caja2').css("display", "block");
			}
			if($('#Discriminador3').text()==""){
				$('#caja3').css("display", "none");
			}
			else{
				$('#caja3').css("display", "block");
			}
			if($('#Discriminador4').text()==""){
				$('#caja4').css("display", "none");
			}
			else{
				$('#caja4').css("display", "block");
			}
			if($('#Discriminador5').text()==""){
				$('#caja5').css("display", "none");
			}
			else{
				$('#caja5').css("display", "block");
			}
			if($('#Discriminador6').text()==""){
				$('#caja6').css("display", "none");
			}
			else{
				$('#caja6').css("display", "block");
			}
			if($('#Discriminador7').text()==""){
				$('#caja7').css("display", "none");
			}
			else{
				$('#caja7').css("display", "block");
			}
			if($('#Discriminador8').text()==""){
				$('#caja8').css("display", "none");
			}
			else{
				$('#caja8').css("display", "block");
			}
			if($('#Discriminador9').text()==""){
				$('#caja9').css("display", "none");
			}
			else{
				$('#caja9').css("display", "block");
			}
			if($('#Discriminador10').text()==""){
				$('#caja10').css("display", "none");
			}
			else{
				$('#caja10').css("display", "block");
			}
			if($('#Discriminador11').text()==""){
				$('#caja11').css("display", "none");
			}
			else{
				$('#caja11').css("display", "block");
			}
			if($('#Discriminador12').text()==""){
				$('#caja12').css("display", "none");
			}
			else{
				$('#caja12').css("display", "block");
			}
			if($('#Discriminador13').text()==""){
				$('#caja13').css("display", "none");
			}
			else{
				$('#caja13').css("display", "block");
			}
			if($('#Discriminador14').text()==""){
				$('#caja14').css("display", "none");
			}
			else{
				$('#caja14').css("display", "block");
			}
			if($('#Discriminador15').text()==""){
				$('#caja15').css("display", "none");
			}
			else{
				$('#caja15').css("display", "block");
			}
			if($('#Discriminador16').text()==""){
				$('#caja16').css("display", "none");
			}
			else{
				$('#caja16').css("display", "block");
			}
			if($('#Discriminador17').text()==""){
				$('#caja17').css("display", "none");
			}
			else{
				$('#caja17').css("display", "block");
			}
			if($('#Discriminador18').text()==""){
				$('#caja18').css("display", "none");
			}
			else{
				$('#caja18').css("display", "block");
			}
			if($('#Discriminador19').text()==""){
				$('#caja19').css("display", "none");
			}
			else{
				$('#caja19').css("display", "block");
			}
			if($('#Discriminador20').text()==""){
				$('#caja20').css("display", "none");
			}
			else{
				$('#caja20').css("display", "block");
			}
			if($('#Discriminador21').text()==""){
				$('#caja21').css("display", "none");
			}
			else{
				$('#caja21').css("display", "block");
			}
			if($('#Discriminador22').text()==""){
				$('#caja22').css("display", "none");
			}
			else{
				$('#caja22').css("display", "block");
			}
			if($('#Discriminador23').text()==""){
				$('#caja23').css("display", "none");
			}
			else{
				$('#caja23').css("display", "block");
			}
			if($('#Discriminador24').text()==""){
				$('#caja24').css("display", "none");
			}
			else{
				$('#caja24').css("display", "block");
			}
			if($('#Discriminador25').text()==""){
				$('#caja25').css("display", "none");
			}
			else{
				$('#caja25').css("display", "block");
			}
			if($('#Discriminador26').text()==""){
				$('#caja26').css("display", "none");
			}
			else{
				$('#caja26').css("display", "block");
			}
			if($('#Discriminador27').text()==""){
				$('#caja27').css("display", "none");
			}
			else{
				$('#caja27').css("display", "block");
			}
			if($('#Discriminador28').text()==""){
				$('#caja28').css("display", "none");
			}
			else{
				$('#caja28').css("display", "block");
			}
			if($('#Discriminador29').text()==""){
				$('#caja29').css("display", "none");
			}
			else{
				$('#caja29').css("display", "block");
			}
			if($('#Discriminador30').text()==""){
				$('#caja30').css("display", "none");
			}
			else{
				$('#caja30').css("display", "block");
			}
			if($('#Discriminador31').text()==""){
				$('#caja31').css("display", "none");
			}
			else{
				$('#caja31').css("display", "block");
			}
			if($('#Discriminador32').text()==""){
				$('#caja32').css("display", "none");
			}
			else{
				$('#caja32').css("display", "block");
			}
			if($('#Discriminador33').text()==""){
				$('#caja33').css("display", "none");
			}
			else{
				$('#caja33').css("display", "block");
			}
			if($('#Discriminador34').text()==""){
				$('#caja34').css("display", "none");
			}
			else{
				$('#caja34').css("display", "block");
			}
			if($('#Discriminador35').text()==""){
				$('#caja35').css("display", "none");
			}
			else{
				$('#caja35').css("display", "block");
			}
			if($('#Discriminador36').text()==""){
				$('#caja36').css("display", "none");
			}
			else{
				$('#caja36').css("display", "block");
			}
			if($('#Discriminador37').text()==""){
				$('#caja37').css("display", "none");
			}
			else{
				$('#caja37').css("display", "block");
			}
			if($('#Discriminador38').text()==""){
				$('#caja38').css("display", "none");
			}
			else{
				$('#caja38').css("display", "block");
			}
			if($('#Discriminador39').text()==""){
				$('#caja39').css("display", "none");
			}else{
				$('#caja39').css("display", "block");
			}
			if($('#Discriminador40').text()==""){
				$('#caja40').css("display", "none");
			}
			else{
				$('#caja40').css("display", "block");
			}
			if($('#Discriminador41').text()==""){
				$('#caja41').css("display", "none");
			}
			else{
				$('#caja41').css("display", "block");
			}
		}
		$( "#btnBuscar" ).click(function() {
			//	$('#modal-dialog').modal('show');
				//$('#stack1').modal('show')
				 LoadDataTableWithAjax()
				 
			});
		
		
	
		
		
	$( "#btnAbandonar" ).click(function() {
		//alert("fff");
		
		//alert(formToJSONIDORDE);
			
			$.ajax({
	              type:"PUT",
	              url: "${pageContext.request.contextPath}/OrdenAtencion/Abandono",
	              crossDomain: true,
	              data: formToJSONIDORDE,
	              contentType: "application/json; charset=utf-8",
	              dataType: "json",
	              async: true,
	              success: function (response) {                		
	                   if(response.status === true){
	                	   $.toast({
	                  		    heading: 'Exito',
	                  		    text: 'Cambio de estado a abandono satisfactorio',
	                  		    position: 'top-center',
	                  		    icon: 'success' 
	                  		});
	                	   LoadDataTableWithAjax();
	                	   
	                   }
	                  
	              },
	          });
			
			
				 
			});
			
			
			
			  $('#data-table-default').on('click', '#btnPageEditRow', function (e) {
					$("input[type=hidden]").val('');
					$("#inpModalCodigo").prop('disabled', true);	
					
		      	//AJAX PARA OBTENER UN USUARIO
					$.ajax({
		              type:  "GET",
		              url: "RestCod/" + $(this).data('codigo'),
		              crossDomain: true,
		              
		              contentType: "application/json; charset=utf-8",
		              dataType: "json",
		              async: true,
		              success: function (response) {
			               	//ADD NOTIFICACION
			               	//ShowMessage(response.message);
		                   if(response.status === true){
		                	   
		                   	//CARGAR DATA
		                   	var d = response.data;	
								$("#hddModalCodigo").val($.trim(d.idordenAtencion));
								$('#txtFechaIngreso').text($.trim(d.fechaHora))
								$('#txtHoraIngreso').text($.trim(d.hora))
								$('#txtEdad').text($.trim(d.edad))
								
								$('#txtSexo').text($.trim(d.sexo))
								$('#txtNombre').text($.trim(d.nombreCompleto))
								
								
								var formToJSON =JSON.stringify({
									"idordenAtencion": $.trim($("#hddModalCodigo").val())
								})
								
						$.ajax({
			              type:"PUT",
			              url: "${pageContext.request.contextPath}/OrdenAtencion/Rest",
			              crossDomain: true,
			              data: formToJSON,
			              contentType: "application/json; charset=utf-8",
			              dataType: "json",
			              async: true,
			              success: function (response) {                		
			                   if(response.status === true){
			                	   if($('#txtSexo').text()=='Masculino'){
			                		   $('#btnFur').hide();
			  					 }else{
			  						$('#btnFur').show();
			  					 }
			              
			                  
			               		                	   
			                	   LoadDataTableWithAjax()
			                   }
			              },
			              //error: OnErrorCall
			          });
		                   	//CARGAR MODAL
		       	            $('#modal-dialog').modal('show');
		             
		                   }
		              },
		              //error: OnErrorCall
		          });
		      });
			  
			  
			  
			  $('body').on('click', '#btnRegistrarTriage', function (e) {
		
				 

				var valor=0;
				valor=botar();
				
				if(valor==7){
					
				 var formTOJSON= JSON.stringify({
					 	"idordenAtencion":$("#hddModalCodigo").val(),
					 	//"diagnostico":$('#txtMotivoIngreso').text(),
						"fechaAtencion":$('#txtFechaIngreso').text(),
						"antecedentes":$('#txtAtencedentes').val(), 
						"alergias":$('#txtAlergia').val(),
						"peso":$('#peso').val(),
						"pa":$('#pa1').val(),
						"pa2":$('#pa2').val(),
						"temperatura":$('#temperatura').val(),
						"sato2":$('#sato2').val(),
						"fc":$('#fc').val(),
						"fr":$('#fr').val(),
						"fur":$('#txtFur').val(), 
						
						"observacion":$('#txtObservacion').val(),
						"prioridad":$('#txtPrioridad ').val(),
						"topico":$('#txtTopicos').val(),
						"usu_creacionTriage":UsuCreacion
						
				 })
				 
				 var dataTOJSON=JSON.stringify({
					 
					 	"idordenAtencion":$("#hddModalCodigo").val(),
					 	"diagnostico":$('#txtMotivoIngreso').text(),
					 	"discriminador1":$('#campo1').val(),
					 	"discriminador2":$('#campo2').val(),
					 	"discriminador3":$('#campo3').val(),
					 	"discriminador4":$('#campo4').val(),
					 	"discriminador5":$('#campo5').val(),
					 	"discriminador6":$('#campo6').val(),
					 	"discriminador7":$('#campo7').val(),
					 	"discriminador8":$('#campo8').val(),
					 	"discriminador9":$('#campo9').val(),
					 	"discriminador10":$('#campo10').val(),
					 	"discriminador11":$('#campo11').val(),
					 	"discriminador12":$('#campo12').val(),
					 	"discriminador13":$('#campo13').val(),
					 	"discriminador14":$('#campo14').val(),
					 	"discriminador15":$('#campo15').val(),
					 	"discriminador16":$('#campo16').val(),
					 	"discriminador17":$('#campo17').val(),
					 	"discriminador18":$('#campo18').val(),
					 	"discriminador19":$('#campo19').val(),
					 	"discriminador20":$('#campo20').val(),
					 	"discriminador21":$('#campo21').val(),
					 	"discriminador22":$('#campo22').val(),
					 	"discriminador23":$('#campo23').val(),
					 	"discriminador24":$('#campo24').val(),
					 	"discriminador25":$('#campo25').val(),
					 	"discriminador26":$('#campo26').val(),
					 	"discriminador27":$('#campo27').val(),
					 	"discriminador28":$('#campo28').val(),
					 	"discriminador29":$('#campo29').val(),
					 	"discriminador30":$('#campo30').val(),
					 	"discriminador31":$('#campo31').val(),
					 	"discriminador32":$('#campo32').val(),
					 	"discriminador33":$('#campo33').val(),
					 	"discriminador34":$('#campo34').val(),
					 	"discriminador35":$('#campo35').val(),
					 	"discriminador36":$('#campo36').val(),
					 	"discriminador37":$('#campo37').val(),
					 	"discriminador38":$('#campo38').val(),
					 	"discriminador39":$('#campo39').val(),
					 	"discriminador40":$('#campo40').val(),
						"discriminador41":$('#campo41').val()
					 	
				 })
				 
				 $.ajax({
		            type: "POST",
		            url: "${pageContext.request.contextPath}/Triage/Rest",
		            crossDomain: true,
		            data:formTOJSON,
		            contentType: "application/json; charset=utf-8",
		            dataType: "json",
		            async: true,
		            success: function (response) {                                            
		            	$("#modal-dialog").modal('hide');
		           		
		           		if(response.status === true){
		           			$.ajax({
		        	            type: "POST",
		        	            url: "${pageContext.request.contextPath}/Triage/RestDetalle",
		        	            crossDomain: true,
		        	            data:dataTOJSON,
		        	            contentType: "application/json; charset=utf-8",
		        	            dataType: "json",
		        	            async: true,
		        	            success: function (response) {                                            
		        	           		if(response.status === true){
		        	           			

		        	           		}
		        	               
		        	            },
		        	           //error: OnErrorCall
		        	        });
		                  	//CARGAR DATATABLE
		                  	$.toast({
	              		    heading: 'Exito',
	              		    text: 'Triaje Registrado Correctamente.',
	              		  	position: 'top-center',
	              		    icon: 'success'
	              		});
	           			
		        	        LoadDataTableWithAjax()
		        	        $("#stack2").modal('hide');
		        	        $("#modal-dialog").modal('hide');
		        	        
		        	        setTimeout('window.location.reload()',2000);
		        	       
		        	       // window.location.reload();
		        	        
		           		}else{
		           			
		           			
		           			$.toast({
							    heading: 'Error',
							    text: 'No se pudo Registrar',
							    position: 'top-center',
							    icon: 'error'
							});
		           			
		           		}
		               
		            },
		           //error: OnErrorCall
		        })
				 
			  }
			  })


			function LoadDataTableWithAjax(){
				var fechaInicio = $('#txtFechaInicio').val()
				var fechaFin = $('#txtFechaFin').val()
		    	$('#data-table-default').dataTable().fnClearTable();
				$('#data-table-default').dataTable().fnDraw();
		    	$.ajax({
		            type: "GET",
		            url: "${pageContext.request.contextPath}/OrdenAtencion/Rest/" + fechaInicio + "," + fechaFin,
		            crossDomain: true,
		            contentType: "application/json; charset=utf-8",
		            dataType: "json",
		            async: true,
		            success: function (response) {                                            
		            	//ADD NOTIFICACION
		            	//ShowMessage(response.message);

		            	if(response.data.length > 0){
		            		//UPDATE DATATABLES
		            		$('#data-table-default').dataTable().fnAddData(response.data);
		            	}else{
		            		console.log("No hay Atenciones")
		            	}

		            	//UPDATE DATATABLES
		               
		            },
		           //error: OnErrorCall
		        })
			  }
			  var discri1;
			  var discri2;
			  var discri3;
			  var discri4;
			  var discri5;
			  var discri6;
			  var discri7;
			  var discri8;
			  var discri9;
			  var discri10;
			  
			  var discri11;
			  var discri12;
			  var discri13;
			  var discri14;
			  var discri15;
			  var discri16;
			  var discri17;
			  var discri18;
			  var discri19;
			  var discri20;
			  
			  var discri21;
			  var discri22;
			  var discri23;
			  var discri24;
			  var discri25;
			  var discri26;
			  var discri27;
			  var discri28;
			  var discri29;
			  var discri30;
			  
			  var discri31;
			  var discri32;
			  var discri33;
			  var discri34;
			  var discri35;
			  var discri36;
			  var discri37;
			  var discri38;
			  var discri39;
			  var discri40;
			  var discri41;
			  
			  function lol(value){
		    		var name = $('#txtAbusoMa').val()
		    		var txtAdulMal=$('#txtAdulMal').val()
		    		var txtAdultosinlip = $('#txtAdultosinlip').val()
		    		var txtAgresion=$('#txtAgresion').val()
		    		var txtAlerg = $('#txtAlerg').val()
		    		var txtEbrio=$('#txtEbrio').val()

		    		var txtAsma=$('#txtAsma').val()
		    		var txtAutolesion = $('#txtAutolesion').val()
		    		var txtBebeMal=$('#txtBebeMal').val()
		    		var txtCaidas = $('#txtCaidas').val()
		    		var txtCefalea=$('#txtCefalea').val()
		    		var txtComext=$('#txtComext').val()
		    		var txtConvulsiones = $('#txtConvulsiones').val()
		    		var txtCuerpoExt=$('#txtCuerpoExt').val()
		    		var txtDiabetes = $('#txtDiabetes').val()
		    		var txtDiavom=$('#txtDiavom').val()


		    		var txtDisneaA=$('#txtDisneaA').val()
		    		var txtDisneaN = $('#txtDisneaN').val()
		    		var txtDolorAbA=$('#txtDolorAbA').val()
		    		var txtDolorAbN = $('#txtDolorAbN').val()
		    		var txtDolorCuello=$('#txtDolorCuello').val()
		    		var txtDolorEsp=$('#txtDolorEsp').val()
		    		var txtDolorGar = $('#txtDolorGar').val()
		    		var txtTesticular=$('#txtTesticular').val()
		    		var txtDolorToracico = $('#txtDolorToracico').val()
		    		var txtEmbarazo=$('#txtEmbarazo').val()


		    		var txtETS=$('#txtETS').val()
		    		var txtEnfMental = $('#txtEnfMental').val()
		    		var txtExantemas=$('#txtExantemas').val()
		    		var txtExQuimica = $('#txtExQuimica').val()
		    		var txtHemoGatro=$('#txtHemoGatro').val()
		    		var txtHemoVaginal=$('#txtHemoVaginal').val()
		    		var txtHerida = $('#txtHerida').val()
		    		var txtInfLocAbs=$('#txtInfLocAbs').val()
		    		var txtLesionesTronco = $('#txtLesionesTronco').val()
		    		var txtMordedura=$('#txtMordedura').val() 	
		    		
		    		var txtNeomalest=$('#txtNeomalest').val() 	
		    		var txtNinoCojenado=$('#txtNinoCojenado').val() 	
		    		var txtNinomalGe=$('#txtNinomalGe').val() 	
		    		var txtNinoIrritable=$('#txtNinoIrritable').val() 	
		    		var txtPadrePreo=$('#txtPadrePreo').val() 	
		    		var txtPalpitaciones=$('#txtPalpitaciones').val() 	
		    		var txtPolitraumatismo=$('#txtPolitraumatismo').val() 	
		    		var txtProblemaDental=$('#txtProblemaDental').val() 	
		    		var txtProblemExterm=$('#txtProblemExterm').val() 	
		    		var txtProblemaFacial=$('#txtProblemaFacial').val() 	
		    		var txtProblemOcular=$('#txtProblemOcular').val() 	
		    		var txtProblemOido=$('#txtProblemOido').val() 	
		    		var txtProblemaUrinario=$('#txtProblemaUrinario').val() 	
		    		var txtQuemaduraEsca=$('#txtQuemaduraEsca').val() 	
		    		var txtSobreEnve=$('#txtSobreEnve').val() 	
		    		var txtTraumaCraneo=$('#txtTraumaCraneo').val() 	
		    		



 
		    		
		    		$.ajax({
				              type:"GET",
				              url: "RestPrioridad/" + value,
				              crossDomain: true,
				             
				              contentType: "application/json; charset=utf-8",
				              dataType: "json",
				              async: true,
				              success: function (response2) {                		
				                   if(response2.status === true){
				                	   
				                		var d = response2.data;	
				                		
				                		//alert(JSON.stringify(d));
				                		//alert(d);
				                		
				                		 discri1 = d.disciminador1;
				                		 discri2 = d.disciminador2;
				                		 discri3 = d.disciminador3;
				                		 discri4 = d.disciminador4;
				                		 discri5 = d.disciminador5;
				                		 discri6 = d.disciminador6;
				                		 discri7 = d.disciminador7;
				                		 discri8 = d.disciminador8;
				                		 discri9 = d.disciminador9;
				                		 discri10 = d.disciminador10;
				                		 discri11 = d.disciminador11;
				                		 discri12 = d.disciminador12;
				                		 discri13 = d.disciminador13;
				                		 discri14 = d.disciminador14;
				                		
				                		 discri15 = d.disciminador15;
				                		 discri16 = d.disciminador16;
				                		 discri17 = d.disciminador17;
				                		 discri18 = d.disciminador18;
				                		 discri19 = d.disciminador19;
				                		 discri20 = d.disciminador20;
				                		 discri21 = d.disciminador21;
				                		 discri22 = d.disciminador22;
				                		 discri23 = d.disciminador23;
				                		 discri24 = d.disciminador24;
				                		 discri25 = d.disciminador25;
				                		
				                		 discri26 = d.disciminador26;
				                		 discri27 = d.disciminador27;
				                		 discri28 = d.disciminador28;
				                		 discri29 = d.disciminador29;
				                		 discri30 = d.disciminador30;
				                		 discri31 = d.disciminador31;
				                		 discri32 = d.disciminador32;
				                		 discri33 = d.disciminador33;
				                		 discri34 = d.disciminador34;
				                		 discri35 = d.disciminador35;
				                		 discri36 = d.disciminador36;
				                		 discri37 = d.disciminador37;
				                		 discri38 = d.disciminador38;
				                		 discri39 = d.disciminador39;
				                		 discri40 = d.disciminador40;
				                		 discri41 = d.disciminador41;
				                		
				                		$('#Discriminador1').text($.trim(d.disciminador1));
				                		$('#Discriminador2').text($.trim(d.disciminador2));
				                		$('#Discriminador3').text($.trim(d.disciminador3));
				                		$('#Discriminador4').text($.trim(d.disciminador4));
				                		$('#Discriminador5').text($.trim(d.disciminador5));
				                		$('#Discriminador6').text($.trim(d.disciminador6));
				                		$('#Discriminador7').text($.trim(d.disciminador7));
				                		$('#Discriminador8').text($.trim(d.disciminador8));
				                		$('#Discriminador9').text($.trim(d.disciminador9));
				                		$('#Discriminador10').text($.trim(d.disciminador10));
				                		
				                		$('#Discriminador11').text($.trim(d.disciminador11));
				                		$('#Discriminador12').text($.trim(d.disciminador12));
				                		$('#Discriminador13').text($.trim(d.disciminador13));
				                		$('#Discriminador14').text($.trim(d.disciminador14));
				                		$('#Discriminador15').text($.trim(d.disciminador15));
				                		$('#Discriminador16').text($.trim(d.disciminador16));
				                		$('#Discriminador17').text($.trim(d.disciminador17));
				                		$('#Discriminador18').text($.trim(d.disciminador18));
				                		$('#Discriminador19').text($.trim(d.disciminador19));
				                		$('#Discriminador20').text($.trim(d.disciminador20));
				                		
				                		$('#Discriminador21').text($.trim(d.disciminador21));
				                		$('#Discriminador22').text($.trim(d.disciminador22));
				                		$('#Discriminador23').text($.trim(d.disciminador23));
				                		$('#Discriminador24').text($.trim(d.disciminador24));
				                		$('#Discriminador25').text($.trim(d.disciminador25));
				                		$('#Discriminador26').text($.trim(d.disciminador26));
				                		$('#Discriminador27').text($.trim(d.disciminador27));
				                		$('#Discriminador28').text($.trim(d.disciminador28));
				                		$('#Discriminador29').text($.trim(d.disciminador29));
				                		$('#Discriminador30').text($.trim(d.disciminador30));
				                		
				                		$('#Discriminador31').text($.trim(d.disciminador31));
				                		$('#Discriminador32').text($.trim(d.disciminador32));
				                		$('#Discriminador33').text($.trim(d.disciminador33));
				                		$('#Discriminador34').text($.trim(d.disciminador34));
				                		$('#Discriminador35').text($.trim(d.disciminador35));
				                		$('#Discriminador36').text($.trim(d.disciminador36));
				                		$('#Discriminador37').text($.trim(d.disciminador37));
				                		$('#Discriminador38').text($.trim(d.disciminador38));
				                		$('#Discriminador39').text($.trim(d.disciminador39));
				                		$('#Discriminador40').text($.trim(d.disciminador40));
				                		$('#Discriminador41').text($.trim(d.disciminador41));
				                   }
				                   combosGenericos();
				              },
		            //error: OnErrorCall
		        });
		    		
		    		if(value=='1'){
		    			$('#txtMotivoIngreso').text(name)
		    			
		    		}else if(value=='2'){
		    			$('#txtMotivoIngreso').text(txtAdulMal)
		    		}
		    		else if(value=='3'){
		    			$('#txtMotivoIngreso').text(txtAdultosinlip)
		    		}
		    		else if(value=='4'){
		    			$('#txtMotivoIngreso').text(txtAgresion)
		    		}
		    		else if(value=='5'){
		    			$('#txtMotivoIngreso').text(txtAlerg)
		    		}
		    		else if(value=='6'){
		    			$('#txtMotivoIngreso').text(txtEbrio)
		    		}
		    		else if(value=='7'){
		    			$('#txtMotivoIngreso').text(txtAsma)
		    		}
		    		else if(value=='8'){
		    			$('#txtMotivoIngreso').text(txtAutolesion)
		    		}
		    		else if(value=='9'){
		    			$('#txtMotivoIngreso').text(txtBebeMal)
		    		}
		    		else if(value=='10'){
		    			$('#txtMotivoIngreso').text(txtCaidas)
		    		}
		    		else if(value=='11'){
		    			$('#txtMotivoIngreso').text(txtCefalea)
		    		}
		    		else if(value=='12'){
		    			$('#txtMotivoIngreso').text(txtComext)
		    		}
		    		else if(value=='13'){
		    			$('#txtMotivoIngreso').text(txtConvulsiones)
		    		}
		    		else if(value=='14'){
		    			$('#txtMotivoIngreso').text(txtCuerpoExt)
		    		}
		    		else if(value=='15'){
		    			$('#txtMotivoIngreso').text(txtDiabetes)
		    		}
		    		else if(value=='16'){
		    			$('#txtMotivoIngreso').text(txtDiavom)
		    		}
		    		else if(value=='17'){
		    			$('#txtMotivoIngreso').text(txtDisneaA)
		    		}
		    		else if(value=='18'){
		    			$('#txtMotivoIngreso').text(txtDisneaN)
		    		}
		    		else if(value=='19'){
		    			$('#txtMotivoIngreso').text(txtDolorAbA)
		    		}
		    		else if(value=='20'){
		    			$('#txtMotivoIngreso').text(txtDolorAbN)
		    		}
		    		else if(value=='21'){
		    			$('#txtMotivoIngreso').text(txtDolorCuello)
		    		}
		    		else if(value=='22'){
		    			$('#txtMotivoIngreso').text(txtDolorEsp)
		    		}
		    		else if(value=='23'){
		    			$('#txtMotivoIngreso').text(txtDolorGar)
		    		}
		    		else if(value=='24'){
		    			$('#txtMotivoIngreso').text(txtTesticular)
		    		}
		    		else if(value=='25'){
		    			$('#txtMotivoIngreso').text(txtDolorToracico)
		    		}
		    		else if(value=='26'){
		    			$('#txtMotivoIngreso').text(txtEmbarazo)
		    		}
		    		else if(value=='27'){
		    			$('#txtMotivoIngreso').text(txtETS)
		    		}
		    		else if(value=='28'){
		    			$('#txtMotivoIngreso').text(txtEnfMental)
		    		}
		    		else if(value=='29'){
		    			$('#txtMotivoIngreso').text(txtExantemas)
		    		}
		    		else if(value=='30'){
		    			$('#txtMotivoIngreso').text(txtExQuimica)
		    		}
		    		else if(value=='31'){
		    			$('#txtMotivoIngreso').text(txtHemoGatro)
		    		}
		    		else if(value=='32'){
		    			$('#txtMotivoIngreso').text(txtHemoVaginal)
		    		}
		    		else if(value=='33'){
		    			$('#txtMotivoIngreso').text(txtHerida)
		    		}
		    		else if(value=='34'){
		    			$('#txtMotivoIngreso').text(txtInfLocAbs)
		    		}
		    		else if(value=='35'){
		    			$('#txtMotivoIngreso').text(txtLesionesTronco)
		    		}
		    		else if(value=='36'){
		    			$('#txtMotivoIngreso').text(txtMordedura)
		    		}
		    		else if(value=='37'){
		    			$('#txtMotivoIngreso').text(txtNeomalest)
		    		}
		    		else if(value=='38'){
		    			$('#txtMotivoIngreso').text(txtNinoCojenado)
		    		}
		    		else if(value=='39'){
		    			$('#txtMotivoIngreso').text(txtNinomalGe)
		    		}
		    		else if(value=='40'){
		    			$('#txtMotivoIngreso').text(txtNinoIrritable)
		    		}
		    		else if(value=='41'){
		    			$('#txtMotivoIngreso').text(txtPadrePreo)
		    		}
		    		else if(value=='42'){
		    			$('#txtMotivoIngreso').text(txtPalpitaciones)
		    		}
		    		else if(value=='43'){
		    			$('#txtMotivoIngreso').text(txtPolitraumatismo)
		    		}
		    		else if(value=='44'){
		    			$('#txtMotivoIngreso').text(txtProblemaDental)
		    		}
		    		else if(value=='45'){
		    			$('#txtMotivoIngreso').text(txtProblemExterm)
		    		}
		    		else if(value=='46'){
		    			$('#txtMotivoIngreso').text(txtProblemaFacial)
		    		}
		    		else if(value=='47'){
		    			$('#txtMotivoIngreso').text(txtProblemOcular)
		    		}
		    		else if(value=='48'){
		    			$('#txtMotivoIngreso').text(txtProblemOido)
		    		}
		    		else if(value=='49'){
		    			$('#txtMotivoIngreso').text(txtProblemaUrinario)
		    		}
		    		else if(value=='50'){
		    			$('#txtMotivoIngreso').text(txtQuemaduraEsca)
		    		}
		    		else if(value=='51'){
		    			$('#txtMotivoIngreso').text(txtSobreEnve)
		    		}
		    		else if(value=='52'){
		    			$('#txtMotivoIngreso').text(txtTraumaCraneo)
		    		}
			  }
			  $( document ).on( 'click', '.foo', function(){
			  		 
		  		    if( $('#campo1').is( ':checked' ) || $('#campo2').is( ':checked' ) || $('#campo3').is( ':checked' ) || $('#campo4').is( ':checked' ) ||
		  		    		$('#campo5').is( ':checked' ) || $('#campo6').is( ':checked' ) || $('#campo7').is( ':checked' ) || $('#campo8').is( ':checked' ) ||
		  		    		$('#campo9').is( ':checked' ) || $('#campo10').is( ':checked' )){
		  		    	
		  		     $('#dtPrioridad2').hide()
		  		        $('#dtPrioridad3').hide()
		  		           $('#dtPrioridad4').hide()
		  		             $('#dtPrioridad5').hide()
		  		           
		  		           $('#campo11').val("")
		  		           $('#campo12').val("")
		  		           $('#campo13').val("")
		  		           $('#campo14').val("")
		  		           $('#campo15').val("")
		  		           $('#campo16').val("")
		  		           $('#campo17').val("")
		  		           $('#campo18').val("")
		  		           $('#campo19').val("")
		  		           $('#campo20').val("")
		  		           $('#campo21').val("")
		  		           $('#campo22').val("")
		  		           $('#campo23').val("")
		  		           $('#campo24').val("")
		  		           
		  		           $('#campo25').val("")
		  		           $('#campo26').val("")
		  		           $('#campo27').val("")
		  		           $('#campo28').val("")
		  		           $('#campo29').val("")
		  		           $('#campo30').val("")
		  		           $('#campo31').val("")
		  		           $('#campo32').val("")
		  		           $('#campo33').val("")
		  		           $('#campo34').val("")
		  		           $('#campo35').val("")
		  		           $('#campo36').val("")
		  		           $('#campo37').val("")
		  		           $('#campo38').val("")
		  		           $('#campo39').val("")
		  		           $('#campo40').val("")
		  		           $('#campo41').val("")
		  		           
		  		         document.getElementById('txtPrioridad').selectedIndex = 1
		  		    
		  		    }else{
		  		    	$('#dtPrioridad2').show()
		  		        $('#dtPrioridad3').show()
		  		        $('#dtPrioridad4').show() 
		  		        $('#dtPrioridad5').show() 
		  		         
		  		    }if($('#campo1').is(' :checked' )){
		  		    	$('#campo1').val(discri1)
		  		    	
		  		    }else{
		  		    	$('#campo1').val("")
		  		    	
		  		    }if($('#campo2').is(' :checked' )){
		  		    	$('#campo2').val(discri2)
		  		    }else{
		  		    	$('#campo2').val("")
		  		    	
		  		    } if($('#campo3').is(' :checked' )){
		  		    	$('#campo3').val(discri3)
		  		    }else{
		  		    	$('#campo3').val("")
		  		    	
		  		    }if($('#campo4').is(' :checked' )){
		  		    	$('#campo4').val(discri4)
		  		    }else{
		  		    	$('#campo4').val("")
		  		    }
		  		  if($('#campo5').is(' :checked' )){
		  		    	$('#campo5').val(discri5)
		  		    }else{
		  		    	$('#campo5').val("")
		  		    }
			  		if($('#campo6').is(' :checked' )){
		  		    	$('#campo6').val(discri6)
		  		    }else{
		  		    	$('#campo6').val("")
		  		    }
			  		if($('#campo7').is(' :checked' )){
		  		    	$('#campo7').val(discri7)
		  		    }else{
		  		    	$('#campo7').val("")
		  		    }
			  		if($('#campo8').is(' :checked' )){
		  		    	$('#campo8').val(discri8)
		  		    }else{
		  		    	$('#campo8').val("")
		  		    }
			  		if($('#campo9').is(' :checked' )){
		  		    	$('#campo9').val(discri9)
		  		    }else{
		  		    	$('#campo9').val("")
		  		    }
			  		if($('#campo10').is(' :checked' )){
		  		    	$('#campo10').val(discri10)
		  		    }else{
		  		    	$('#campo10').val("")
		  		    }
			  		
		  		  });
				
		        
			  
		        $(document).on('click','.foo2',function(){
		        	if( $('#campo11').is( ':checked' ) || $('#campo12').is( ':checked' ) || $('#campo13').is( ':checked' ) || $('#campo14').is( ':checked' ) ||
		        			$('#campo15').is( ':checked' ) || $('#campo16').is( ':checked' ) || $('#campo17').is( ':checked' ) || $('#campo18').is( ':checked' ) ||
		        			$('#campo19').is( ':checked' ) || $('#campo20').is( ':checked' )){
		        		 $('#dtPrioridad1').hide()
		   		        $('#dtPrioridad3').hide()
		   		          $('#dtPrioridad4').hide()
		   		            $('#dtPrioridad5').hide()
		   		            
		   		        document.getElementById('txtPrioridad').selectedIndex = 2
		        	}else{
		        		$('#dtPrioridad1').show()
		  		        $('#dtPrioridad3').show()
		  		          $('#dtPrioridad4').show();
		        		$('#dtPrioridad5').show();
		        	}
		        	if($('#campo11').is(' :checked' )){
		  		    	$('#campo11').val(discri11)
		  		    	
		  		    }else{
		  		    	$('#campo11').val("")
		  		    	
		  		    }if($('#campo12').is(' :checked' )){
		  		    	$('#campo12').val(discri12)
		  		    }else{
		  		    	$('#campo12').val("")
		  		    	
		  		    } if($('#campo13').is(' :checked' )){
		  		    	$('#campo13').val(discri13)
		  		    }else{
		  		    	$('#campo13').val("")
		  		    	
		  		    }if($('#campo14').is(' :checked' )){
		  		    	$('#campo14').val(discri14)
		  		    }else{
		  		    	$('#campo14').val("")
		  		    }
		  		  if($('#campo15').is(' :checked' )){
		  		    	$('#campo15').val(discri15)
		  		    }else{
		  		    	$('#campo15').val("")
		  		    }
			  		if($('#campo16').is(' :checked' )){
		  		    	$('#campo16').val(discri16)
		  		    }else{
		  		    	$('#campo16').val("")
		  		    }
			  		if($('#campo17').is(' :checked' )){
		  		    	$('#campo17').val(discri17)
		  		    }else{
		  		    	$('#campo17').val("")
		  		    }
			  		if($('#campo18').is(' :checked' )){
		  		    	$('#campo18').val(discri18)
		  		    }else{
		  		    	$('#campo18').val("")
		  		    }
			  		if($('#campo19').is(' :checked' )){
		  		    	$('#campo19').val(discri19)
		  		    }else{
		  		    	$('#campo19').val("")
		  		    }
			  		if($('#campo20').is(' :checked' )){
		  		    	$('#campo20').val(discri20)
		  		    }else{
		  		    	$('#campo20').val("")
		  		    }
		        	
		        });
		        
		        
		        $(document).on('click','.foo3',function(){
		        	if( $('#campo21').is( ':checked' ) || $('#campo22').is( ':checked' ) || $('#campo23').is( ':checked' ) 
		        			|| $('#campo24').is( ':checked' ) || $('#campo25').is( ':checked' ) || $('#campo26').is( ':checked' ) || $('#campo27').is( ':checked' )
		        			|| $('#campo28').is( ':checked' )|| $('#campo29').is( ':checked' ) || $('#campo30').is( ':checked' )){
		        		 $('#dtPrioridad1').hide()
		   		        $('#dtPrioridad2').hide()
		   		           $('#dtPrioridad4').hide()
		   		              $('#dtPrioridad5').hide()
		   		              
		   		        document.getElementById('txtPrioridad').selectedIndex = 3
		        	}else{
		        		$('#dtPrioridad1').show()
		  		        $('#dtPrioridad2').show()
		  		           $('#dtPrioridad4').show()
		  		         $('#dtPrioridad5').show
		        	}
		        	if($('#campo21').is(' :checked' )){
		  		    	$('#campo21').val(discri21)
		  		    }else{
		  		    	$('#campo21').val("")
		  		    	
		  		    }if($('#campo22').is(' :checked' )){
		  		    	$('#campo22').val(discri22)
		  		    }else{
		  		    	$('#campo22').val("")
		  		    	
		  		    } if($('#campo23').is(' :checked' )){
		  		    	$('#campo23').val(discri23)
		  		    	
		  		    }else{
		  		    	$('#campo23').val("")
		  		    	
		  		    }if($('#campo24').is(' :checked' )){
		  		    	$('#campo24').val(discri24)
		  		    }else{
		  		    	$('#campo24').val("")
		  		    }
		  		  if($('#campo25').is(' :checked' )){
		  		    	$('#campo25').val(discri25)
		  		    }else{
		  		    	$('#campo25').val("")
		  		    }
			  		if($('#campo26').is(' :checked' )){
		  		    	$('#campo26').val(discri26)
		  		    }else{
		  		    	$('#campo26').val("")
		  		    }
			  		if($('#campo27').is(' :checked' )){
		  		    	$('#campo27').val(discri27)
		  		    }else{
		  		    	$('#campo27').val("")
		  		    }
			  		if($('#campo28').is(' :checked' )){
		  		    	$('#campo28').val(discri28)
		  		    }else{
		  		    	$('#campo28').val("")
		  		    }
			  		if($('#campo29').is(' :checked' )){
		  		    	$('#campo29').val(discri29)
		  		    }else{
		  		    	$('#campo29').val("")
		  		    }
			  		if($('#campo30').is(' :checked' )){
		  		    	$('#campo30').val(discri30)
		  		    }else{
		  		    	$('#campo30').val("")
		  		    }
		        	
		        	
		        })
		        
		        $(document).on('click','.foo4',function(){
		        	if( $('#campo31').is( ':checked' ) || $('#campo32').is( ':checked' ) || $('#campo33').is( ':checked' ) || $('#campo34').is( ':checked' ) || $('#campo35').is( ':checked' )||
		        			$('#campo36').is( ':checked' ) || $('#campo37').is( ':checked' ) || $('#campo38').is( ':checked' ) || $('#campo39').is( ':checked' ) || 
		        			$('#campo40').is( ':checked' )){
		        		
		        		 $('#dtPrioridad1').hide()
		   		        $('#dtPrioridad2').hide()
		   		           $('#dtPrioridad3').hide()
		   		             $('#dtPrioridad5').hide()
		   		             
		   		        document.getElementById('txtPrioridad').selectedIndex = 4
		        	}else{
		        		$('#dtPrioridad1').show()
		  		        $('#dtPrioridad2').show()
		  		           $('#dtPrioridad3').show()
		  		                $('#dtPrioridad5').show()
		        	}
		        	if($('#campo31').is(' :checked' )){
		  		    	$('#campo31').val(discri31)
		  		    	
		  		    }else{
		  		    	$('#campo31').val("")
		  		    	
		  		    }if($('#campo32').is(' :checked' )){
		  		    	$('#campo32').val(discri32)
		  		    }else{
		  		    	$('#campo32').val("")
		  		    	
		  		    } if($('#campo33').is(' :checked' )){
		  		    	$('#campo33').val(discri33)
		  		    }else{
		  		    	$('#campo33').val("")
		  		    	
		  		    }if($('#campo34').is(' :checked' )){
		  		    	$('#campo34').val(discri34)
		  		    }else{
		  		    	$('#campo34').val("")
		  		    }
		  		  if($('#campo35').is(' :checked' )){
		  		    	$('#campo35').val(discri35)
		  		    }else{
		  		    	$('#campo35').val("")
		  		    }
			  		if($('#campo36').is(' :checked' )){
		  		    	$('#campo36').val(discri36)
		  		    }else{
		  		    	$('#campo36').val("")
		  		    }
			  		if($('#campo37').is(' :checked' )){
		  		    	$('#campo37').val(discri37)
		  		    }else{
		  		    	$('#campo37').val("")
		  		    }
			  		if($('#campo38').is(' :checked' )){
		  		    	$('#campo38').val(discri38)
		  		    }else{
		  		    	$('#campo38').val("")
		  		    }
			  		if($('#campo39').is(' :checked' )){
		  		    	$('#campo39').val(discri39)
		  		    }else{
		  		    	$('#campo39').val("")
		  		    }
			  		if($('#campo40').is(' :checked' )){
		  		    	$('#campo40').val(discri40)
		  		    }else{
		  		    	$('#campo40').val("")
		  		    }
		        })
		        
		        
		            $(document).on('click','.foo6',function(){
		        	if( $('#campo41').is( ':checked' )){
		        		
		        		 $('#dtPrioridad1').hide()
		   		        $('#dtPrioridad2').hide()
		   		           $('#dtPrioridad3').hide()
		   		             $('#dtPrioridad4').hide()
		   		             
		   		        document.getElementById('txtPrioridad').selectedIndex = 5
		        	}else{
		        		$('#dtPrioridad1').show()
		  		        $('#dtPrioridad2').show()
		  		           $('#dtPrioridad3').show()
		  		                $('#dtPrioridad4').show()
		        	}
		        	if($('#campo41').is(' :checked' )){
		  		    	$('#campo41').val(discri41)
		  		    	
		  		    }else{
		  		    	$('#campo41').val("")
		  		    
		  		    }
		  		    })
		        
		        
		        
		         $(document).on('click','.foo5',function(){
		        	if( $('#checkAle').is( ':checked' )){
		        		
		        		 $('#txtAlergia').prop( "disabled", false );
		        	}else{
		        		$('#txtAlergia').prop( "disabled", true );
		        	}
		        	if( $('#checkFur').is( ':checked' )){
		        		
		       		 $('#txtFur').prop( "disabled", false );
		       		}else{
		       		$('#txtFur').prop( "disabled", true );
		       	}	
		        	
		        })
		        
			 
			
		</script>
		
		  <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
         <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"></script>
          <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"></script>
         
		
	  </body> 
	</html>