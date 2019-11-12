<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

<div style="position: relative;">

<nav  class="navbar header-navbar pcoded-header"  >
<div class="navbar-wrapper">
<div class="navbar-logo">
<a href="#">
  
<img src="../resources/img/logosanna.png">  
</a>

<!-- <a class="mobile-menu" id="mobile-collapse" href="#!"> 
<i class="feather icon-menu icon-toggle-right"></i>
</a>-->
<a class="mobile-options waves-effect waves-light">
<i class="feather icon-more-horizontal"></i>
</a>
</div>
<div class="navbar-container container-fluid">
<ul class="nav-left">
<li class="header-search">
<div class="main-search morphsearch-search">
<div class="input-group">
<span class="input-group-prepend search-close">
<i class="feather icon-x input-group-text"></i>
</span>
<input type="text" class="form-control" placeholder="Enter Keyword">

</div>
</div>
</li>
<li>

</li>
</ul>
<ul class="nav-right">

<!-- 
<li class="header-notification">
<div class="dropdown-primary dropdown">
<div class="dropdown-toggle" data-toggle="dropdown">
<i class="feather icon-bell"></i>
<span class="badge bg-c-red">5</span>
</div>
<ul class="show-notification notification-view dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
<li>
<h6>NOTIFICACIONES</h6>
<label class="label label-danger">NUEVO</label>
</li>

</ul>
</div>
</li>
-->


<li class="header-notification">
<div class="dropdown-primary dropdown">
<div class="displayChatbox dropdown-toggle" data-toggle="dropdown">

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

<!-- 
<h5 id="descripTipo" >${descTipo} :
<span id="nombreCompleto"  class="text-c-green m-l-10">${sessionNombreCompleto}</span>
</h5> -->

<img src="../resources/img/admin.png">
<span id="UsuarioCreacion" >${sessionNombre}</span>

<i class="feather icon-chevron-down"></i>
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
</div>
</body>
</html>