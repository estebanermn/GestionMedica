<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="es" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es">
<!--<![endif]-->
	<head>
	<meta charset="utf-8" />
	<title>Color Admin | 500 Error Interno</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<jsp:include page="includeBaseCSS.jsp"/>  
	
	</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin error -->
        <div class="error">
            <div class="error-code m-b-10">500</div>
            <div class="error-content">
                <div class="error-message">Error Interno :( ...</div>
                <div class="error-desc m-b-30">                    
                    ${message}
                </div>
                <div>
                    <a href="../" class="btn btn-success p-l-20 p-r-20">Go Home</a>
                </div>
            </div>
        </div>
        <!-- end error -->
        
        <!-- begin theme-panel -->
		<jsp:include page="includePanel.jsp"/>
        <!-- end theme-panel -->
        
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
		
	<jsp:include page="includeBaseJS.jsp"/>

	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>