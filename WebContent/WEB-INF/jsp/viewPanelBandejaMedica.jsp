<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
    
<html lang="en">	
    <head>
        <title>Bandeja Medica</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
         <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-all.min.css" />">
         <link id="themeStyleSheet" rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-print-all.min.css"/>">
         <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-default.min.css" />">
        
		<link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/font-family-en.min.css" />">
        
        <!-- TOAST -->
        <link rel="stylesheet"  href="<c:url value="/resources/css/jquery.toast.css" />">
        
          
              <!-- PARA REPORTE 
          <link href="https://cdn.datatables.net/buttons/1.6.0/css/buttons.dataTables.min.css" rel="stylesheet" />-->
        
         <link href="https://cdn.datatables.net/buttons/1.6.0/css/buttons.dataTables.min.css"  rel="stylesheet"/>
        

         <!--  TOAST --> 
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all-locale-en.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp.min.js"/>"></script>
        
        <!-- TOAST -->
        <script src="<c:url value="/resources/js/jquery.toast.js"/>"></script>
          
          
          
          
          
    </head>
    <body class="sidebar-active">
        <div id="oneTimeOverlay" style="position: fixed;width: 100%;height: 100%;top: 0px;left: 0;right: 0;bottom: 0;background-color: rgba(255,255,255,1);z-index: 1000000;cursor: wait;">Loading ...</div>
        <nav class="main-javatmp-navbar navbar fixed-top my-0 py-0 flex-nowrap">
           <a class="text-center navbar-brand mr-auto d-none d-md-flex align-items-stretch" href="#">
                <img src="../resources/img/logosanna.png">
            </a> 
            <ul class="main-navbar-menu nav ml-auto align-self-stretch flex-nowrap">
                <li class="nav-item dropdown mega-on-sm d-flex align-items-stretch">
                   
                    <div class="dropdown-menu dropdown-menu-extender">
                        <div class="dropdown-menu-header clearfix">
                            <i class="fa fa-lg fa-fw fa-envelope"></i>5 Messages
                            <a actionType="ajax-model"
                               href="pages/custom-pages/inbox/ajax/ajax-compose-message.html"
                               data-actionable-options='{"size":"modal-lg", "title": "Loading Compose Message .."}'
                               class="float-right small">
                                Create New Message
                            </a>
                        </div>
                        <div class="dropdown-menu-content scroll-content">
                            <div class="list-group list-group-flush">
                                <a actionType="ajax-model"
                                   href="pages/custom-pages/inbox/ajax/ajax-view-message.html"
                                   class="list-group-item list-group-item-action">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="float-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet adipis dolor sit elit ipsum dolor sit elit ...</div>
                                </a>
                                <a actionType="ajax-model"
                                   href="pages/custom-pages/inbox/ajax/ajax-view-message.html"
                                   class="list-group-item list-group-item-action">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="float-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet adipis dolor sit elit ipsum dolor sit elit ...</div>
                                </a>
                                <a actionType="ajax-model"
                                   href="pages/custom-pages/inbox/ajax/ajax-view-message.html"
                                   class="list-group-item list-group-item-action">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="float-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet adipis dolor sit elit ipsum dolor sit elit ...</div>
                                </a>
                                <a actionType="ajax-model"
                                   href="pages/custom-pages/inbox/ajax/ajax-view-message.html"
                                   class="list-group-item list-group-item-action">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="float-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet adipis dolor sit elit ipsum dolor sit elit ...</div>
                                </a>
                                <a actionType="ajax-model"
                                   href="pages/custom-pages/inbox/ajax/ajax-view-message.html"
                                   class="list-group-item list-group-item-action">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="float-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet adipis dolor sit elit ipsum dolor sit elit ...</div>
                                </a>
                            </div>
                        </div>
                        <div class="dropdown-menu-footer">
                            <a actionType="ajax-model"
                               href="pages/custom-pages/inbox/ajax/ajax-inbox-messages.html"
                               data-actionable-options='{"size":"modal-lg"}'
                               class="" alt="Read All Messages">
                                <strong>Read All Messages</strong>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown mega-on-sm d-flex align-items-stretch">
                    
                    <div class="dropdown-menu dropdown-menu-extender">
                        <div class="dropdown-menu-header">
                            <i class="fa fa-lg fa-tasks"></i>
                            6 Tasks
                            <span class="float-right">
                                <i class="fa fa-fw fa-lg fa-cog"></i>
                            </span>
                        </div>
                        <div class="dropdown-menu-content scroll-content">
                            <div class="list-group list-group-flush">
                                <a class="list-group-item list-group-item-action" href="#">
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="float-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="float-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="float-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="float-right text-muted">20% Complete</span>
                                        </p>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div>
                                        <p>
                                            <strong>Task 5</strong>
                                            <span class="float-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <p>
                                        <strong>Task 6</strong>
                                        <span class="float-right text-muted">10% Complete</span>
                                    </p>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar bg-danger" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                            <span class="sr-only">10% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <p>
                                        <strong>Task 7</strong>
                                        <span class="float-right text-muted">90% Complete</span>
                                    </p>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar bg-success" role="progressbar"
                                             aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="dropdown-menu-footer">
                            <a class="" href="#" alt="Read All Messages">
                                <strong>See All Tasks</strong>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown mega-on-sm d-flex align-items-stretch">
                 
                    <ul class="dropdown-menu dropdown-menu-extender">
                        <li>
                            <a class="dropdown-item clearfix" href="#">
                                <!--<span class="float-left">-->
                                <i class="fa fa-fw fa-lg fa-comment"></i>New Comment
                                <!--</span>-->
                                <span class="float-right small">
                                    6 minutes ago
                                </span>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item clearfix" href="#">
                                <span class="float-left">
                                    <i class="fab fa-fw fa-lg fa-twitter"></i>3 New Followers
                                </span>
                                <span class="float-right small">
                                    6 minutes ago
                                </span>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item clearfix" href="#">
                                <span class="float-left">
                                    <i class="fa fa-fw fa-lg fa-envelope"></i>Message Sent
                                </span>
                                <span class="float-right small">
                                    6 minutes ago
                                </span>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item clearfix" href="#">
                                <span class="float-left">
                                    <i class="fa fa-fw fa-lg fa-tasks"></i>New Task
                                </span>
                                <span class="float-right small">
                                    6 minutes ago
                                </span>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item text-center" href="#">
                                <strong>See All Alerts</strong>
                            </a>
                        </li>
                    </ul>
                </li>
                
                <h5>
                 <small class="d-flex"> ${descTipo} :</small>
                
				<span id="nombreCompleto"  class="d-none d-md-inline">${sessionNombreCompleto}</span>
			
			<input type="text" class="form-control" id="UsuarioCreacion" value="${sessionNombre}" hidden="true" >
       
                	</h5>
                	
                	
                	
                <li class="nav-item dropdown">
                    <a class="line-height-1 d-flex align-items-center h-100 text-left nav-link dropdown-toggle" data-toggle="dropdown" href="#">
                        <img class="logo-image rounded-circle mr-1" src="../resources/img/admin.png" alt=""/>
                        <span class="d-none d-md-inline" >
                            <small class="d-flex">Bienvenido,</small>
                          ${sessionNombre}
                        </span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li>
                            <a class="dropdown-item" href="#"><i class="fa fa-lg fa-fw fa-user"></i>User Profile</a>
                        </li>
<!--                        <li>
                            <a class="dropdown-item" href="#"><i class="fa fa-lg fa-fw fa-tasks"></i>User Tasks</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="far fa-lg fa-fw fa-calendar-alt"></i>User Calendar</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="fa fa-lg fa-fw fa-inbox"></i>User Inbox</a>
                        </li>-->
<!--                        <li>
                            <a class="dropdown-item" href="#"><i class="fa fa-lg fa-fw fa-cog"></i>Settings</a>
                        </li>
                        <li class="dropdown-divider"></li>-->
<!--                        <li>
                            <a class="dropdown-item" href="#"><i class="fa fa-lg fa-fw fa-square"></i>Lock Screen</a>
                        </li>-->
                        <li>
                            <a class="dropdown-item" href="Logout">
                                <i class="fa fa-lg fa-fw fa-sign-out-alt"></i>
                                Cerrar Sesion
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <button class="navbar-toggler sidebar-toggler-button my-1 ml-1 align-self-center" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 m-0 p-0">
                    <div class="sidebar scroll-content">
                        <div class="sidebar-shortcut-button text-center m-1">
                        </div>
                        <div class="sidebar-menu-filter-form mx-2 my-1">
                            <form autocomplete="off" class="search-menu-form">
                                                          </form>
                        </div>
                          <ul class="metismenu">
                           
                        <!--<li>
                                <a class="has-arrow" href="#">
                                    <i class="far fa-lg fa-fw fa-object-group"></i>
                                    Themes
                                </a>
                                <ul>
                                    <li>
                                        <a href="pages/themes/buildin.html">
                                            JavaTMP Build-in Themes
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages/themes/bootswatch.html">
                                            Bootswatch Free Themes
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pages/themes/devexpress-bs4-themes.html">
                                            DevExpress Themes for Bootstrap 4
                                        </a>
                                    </li>
                                </ul>
                            </li>-->
                           
                            <li>
                                <a class="has-arrow" href="#">
                                    <i class="far fa-lg fa-fw fa-lightbulb"></i>
                                    ATENCION EMERGENCIA
                                </a>
                             
                                        <ul aria-expanded="true">
                                            <li>
                                                <a href="../OrdenAtencion/WebListAtenEmergencia">
                                                    
                                                     <i class="far fa-lg fa-fw fa-file-alt"></i>
                                                    Bandeja Emergencia
                                                </a>
                                            </li>
                                        </ul>
                            </li>
                            
                            <li>
                                <a class="has-arrow" href="#">
                                    <i class="far fa-lg fa-fw fa-lightbulb"></i>
                                    REPORTES
                                </a>
                             
                                        <ul aria-expanded="true">
                                            <li>
                                                <a href="../ItemNivelCumplReport/WebReporteEmergencia">
                                                    
                                                     <i class="far fa-lg fa-fw fa-file-alt"></i>
                                                   Nivel Percentil de Cumplimiento
                                                </a>
                                                
                                            </li>
                                            
                                            <li>
                                                <a href="../ItemEmergencia/WebReporteEmergencia">
                                                    
                                                     <i class="far fa-lg fa-fw fa-file-alt"></i>
                                                 Reporte Emergencia
                                                </a>
                                                
                                            </li>
                                        </ul>
                            </li>
                            
                            
                        </ul>
                    </div>
                   <div class="main-content">
                        <div class="main-breadcrumb-bar d-flex flex-row shadow">
                            <ol class="breadcrumb"></ol>
                            <div class="breadcrumb-submenu d-flex align-items-center pr-1 justify-content-end">
                                <a class="min-tools-button mr-1 font-size-15">
                                    <i class="fa fa-sync-alt faa-spin animated-hover line-height-base"></i>
                                </a>
                            </div>
                            
                            
                            
                        </div>
                        <div class="main-body-content-container"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-footer-bar">
            <div class="footer-content">
                <a href="http://www.javatmp.com" target="_blank"><span>&copy; 2018 javatmp.com</span></a>
            </div>
        </div>
    

        
        
        <!--  -->
        
        
        <!-- PARA REPORTE 
        <script src="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"></script>
         <script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
          <script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"></script>
          <script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"></script>
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>-->
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
         <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"></script>
          <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"></script>
          
           
        
        <script type="text/javascript">
            jQuery(function ($) {
                var defaults = {};
                index.init(defaults);
            });
        </script>
        <!-- You could put here Your google analytics script tag -->        <script type="text/javascript">
            jQuery(function ($) {
                $("#oneTimeOverlay").remove();
            });
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