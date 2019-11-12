<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es" >
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Login Page</title>
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
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/pages/data-table/css/buttons.dataTables.min.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" />
	  
	    <link rel="stylesheet"  href="<c:url value="/resources/css/jquery.toast.css" />">
		<link rel="stylesheet"  href="<c:url value="/resources/css/main.css" />">
		
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/style.css" rel="stylesheet" />
		<link href="https://colorlib.com//polygon/admindek/files/assets/css/widget.csss" rel="stylesheet" />

	</head>
<body >

<section class="login-block">

<div class="container-fluid">
<div class="row">
<div class="col-sm-12">

<form class="md-float-material form-material">
<div class="text-center">
<img src="https://www.empresasbanmedica.cl/wp-content/uploads/2015/11/sanna1.png" Style="width:300px;height: 200px" alt="logo.png">
</div>
<div class="auth-box card">
<div class="card-block">


<div class="row m-b-20">
<div class="col-md-12">
<h3 class="text-center txt-primary">Ingresar Cuenta</h3>
</div>
</div>

<div class="form-group form-primary">
<input type="text" name="user-name" id="txtUser" class="form-control" required="">
<span class="form-bar"></span>
<label class="float-label">Username</label>
</div>
<div class="form-group form-primary">
<input type="password" name="password" id="txtPass" class="form-control" required="">
<span class="form-bar"></span>
<label class="float-label">Password</label>
</div>
<div class="form-group form-primary">
<select id="txtTipo"  class="form-control form-control-success fill">
<!---->
<option value="0" ></option>
<option value="ENFERMERIA" >ENFERMERIA</option>
 <option value="GESTION SALUD" >GESTION SALUD</option>
  <option value="MEDICO" >MEDICO</option>
   <option value="INTERNISTA" >INTERNISTA</option>
</select>
</div>
<div class="row m-t-25 text-left">
<div class="col-12">
<div class="checkbox-fade fade-in-primary">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
<span class="text-inverse">Recordar Contraseña</span>
</label>
</div>

</div>
</div>
<div class="row m-t-30">
<div class="col-md-12">
<button type="button" id="btnLogin" class="btn waves-effect waves-light btn-primary">
<i class="icofont icofont-user-alt-3"></i>
LOGIN</button>

</div>
</div>

</div>
</div>
</form>







</div>

</div>

</div>



</section>
	<!-- begin #page-loader -->
	
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
	<script src="<c:url value="/resources/js/vanillatoasts.js"/>"></script>
	
		<script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>
	<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="9e074240f0b9d65a3dcc7a4f-|49" defer=""></script>

	
	
<script type="text/javascript">


	
		
        $('body').on('click', '#btnLogin', function (e) {		
			
			var user =$('#txtUser').val()
			var pass=$('#txtPass').val()
			var tipo=$('#txtTipo').val()
			$.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/Usuario/Login/"+user+","+pass+","+tipo,
                crossDomain: true,
                data:{},
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function (response) {  
                	
                	 if(response.status === true){
                		 
               			$(location).attr("href", "${pageContext.request.contextPath}/OrdenAtencion/Web");
               		}else{
               			alert("Usuario y/o Contraseña Erroneas")
               		// $.toast({
             		  // heading: 'Error',
             		   // text: 'Usuario y/o Contraseña Erroneas',
             		   //position: 'top-center',
             		   //icon: 'error'
               			
               		}
                },
               // error: OnErrorCall
            });
			
		});
		
		function validar() {
			var use = $("#inpUsuario").val();
			var pass = $("#inpPassword").val();
			if (use === '' || pass ==='') {
				$("#lol").text("Usuario/Password incorrectos");
				 
			}
				
			
		}
	
	</script>
	
</body>
</html>