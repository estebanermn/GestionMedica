<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado Atenciones Triage</title>



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
<div class="col-sm-12 col-xl-4 m-b-30">

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
<img src="../resources/img/buscarpaciente.png"/>
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
							
							
							<th>OrdenAtencion</th>							
							<th>Codhc</th>
							<th>Nombres</th>
							<th>Sexo</th>
							<th>Edad</th>
							<th>FechaHora</th>
							<th>Hora</th>
							<th>Estado</th>
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

</div>

<div id="styleSelector">
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
	


<script>
	
	$(document).ready(function() {
		  var fecha = new Date(); //Fecha actual
		  var mes = fecha.getMonth()+1; //obteniendo mes
		  var dia = fecha.getDate(); //obteniendo dia
		  var ano = fecha.getFullYear(); //obteniendo a�o
		  if(dia<10)
		    dia='0'+dia; //agrega cero si el menor de 10
		  if(mes<10)
		    mes='0'+mes //agrega cero si el menor de 10
		  document.getElementById('txtFechaInicio').value=ano+"-"+mes+"-"+dia;
		  document.getElementById('txtFechaFin').value=ano+"-"+mes+"-"+dia;
	
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
					{data : "estado_triaje"}
				//	,{data : "idordenAtencion"
						
					/*	,'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var 
							html = '<button class="btn btn-xs btn-primary" id="btnPageEditRow" data-codigo="' + data + '">ABRIR ATENCION</button>';
							
							return html;
						}*/
					//}
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
       
	});
	
	
	
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
            },
        })
	  }
	
	
	
	$( "#btnBuscar" ).click(function() {
		//	$('#modal-dialog').modal('show');
			//$('#stack1').modal('show')
			 LoadDataTableWithAjax()
			 
		});
	
	
	</script>
	
</body>
</html>