<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <title>Menu de Emergencia</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
 
       <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-all.min.css" />">
         <link id="themeStyleSheet" rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-plugins-print-all.min.css"/>">
         <link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/javatmp-default.min.css" />">
        
		<link rel="stylesheet"  href="<c:url value="/resources/admin/assets/dist/css/font-family-en.min.css" />">
       
    </head>
    
    <body class="sidebar-active">
        <div id="oneTimeOverlay" style="position: fixed;width: 100%;height: 100%;top: 0px;left: 0;right: 0;bottom: 0;background-color: rgba(255,255,255,1);z-index: 1000000;cursor: wait;">Loading ...</div>
        
        
        
        <jsp:include page="../jsp/PanelNorteBanMedEmergencia.jsp" flush="true"/>
        
  <!-- panel bandeja medica norte emergencia -->
        
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
                           
                            <li>
                                <a href="../admin/ListadoAtenciones.php">
                                    <i class="fa fa-lg fa-fw fa-home"></i>
                                    Home
                                </a>
                            </li>
<!--                            <li>
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
                                    CONSULTA EXTERNA
                                </a>
                             
                                        <ul aria-expanded="true">
                                            <li>
                                                <a href="../admin/ENFERMEDADACTUAL.php">
                                                    
                                                     <i class="far fa-lg fa-fw fa-file-alt"></i>
                                                    Bandeja Ambulatoria
                                                </a>
                                            </li>
                                        </ul>
                            </li>
                            
                            <li>
                                <a class="has-arrow" href="#">
                                    <i class="far fa-lg fa-fw fa-lightbulb"></i>
                                    CONSULTA EMERGENCIA
                                </a>
                             
                                        <ul aria-expanded="true">
                                            <li>
                                                <a href="../OrdenAtencion/WebListBandMedicaEmerg">
                                                    
                                                     <i class="far fa-lg fa-fw fa-file-alt"></i>
                                                    Bandeja Emergencia
                                                </a>
                                                
                                            </li>
                                        </ul>
                            </li>
                            
                            
                        </ul>
                    </div>
                    
                    
                </div>
            </div>
        </div>
        



         <script async="" src="https://www.google-analytics.com/analytics.js"></script>
        
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp-plugins-all-locale-en.min.js"/>"></script>
        <script src="<c:url value="/resources/admin/assets/dist/js/javatmp.min.js"/>"></script>
       
        <script type="text/javascript">
        jQuery(function ($) {
            var defaults = {};
            index.init(defaults);
        });
        </script>
       <script type="text/javascript">
            jQuery(function ($) {
                $("#oneTimeOverlay").remove();
            });
        </script>
    </body>
</html>