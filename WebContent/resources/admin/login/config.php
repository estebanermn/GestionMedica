<?php
//include('../libros/php/conexion.php');
include ('acceso_db.php');
session_start();

// Comprobamos si hay cookie, si está bien y le asignamos una sesión
// Esto quiere decir que si recordamos la contraseña nos auto loguee.
if(isset($_COOKIE['id_extreme'])) 
{
	$cookie = htmlentities($_COOKIE['id_extreme']);
	$cookie = explode("%",$cookie);
	$user = $cookie[0];
	$id = $cookie[1];
	$ip = $cookie[2];
	if ($HTTP_X_FORWARDED_FOR == "")
	{
		$ip2 = getenv(REMOTE_ADDR);
	}
	else
	{
		$ip2 = getenv(HTTP_X_FORWARDED_FOR);
	}
	if($ip == $ip2)
	{
		//$link = mysqli_connect($dbhost, $dbusername, $dbuserpass);
		//mysqli_select_db() or die('No se puede seleccionar la base de datos');
		$query = mysqli_query($con,"SELECT * FROM usuarios WHERE id_extreme='".$id."' and username='".$user."'") or die(mysql_error());
   		$row = mysqli_fetch_array($query);
   		if(isset($row['username'])) 
		{
		$_SESSION["s_username"] = $row['username'];
		$_SESSION["logeado"] = "SI";
   		}
		mysqli_close($link);
	}
}
?>