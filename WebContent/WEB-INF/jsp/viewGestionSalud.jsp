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
<div class="page-header-title">

<div class="d-inline">

<br>

</div>
</div>
</div>

</div>
</div>

<div class="pcoded-inner-content">

<div class="main-body">

 
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
	
  </body> 
</html>