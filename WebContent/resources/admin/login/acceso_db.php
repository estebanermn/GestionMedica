 <?php

$serverName = "JCHAVEZ"; //serverName\instanceName
$connectionInfo = array("Database"=>"CSB_EMERGENCIA", "UID"=>"sa", "PWD"=>"LEOPOLDO2020", "CharacterSet"=>"UTF-8");
$con = sqlsrv_connect($serverName, $connectionInfo);

if($con){
	echo "<center><img src='../img/Gif-sanna.gif'></center>";
}else{
	echo "fallo conexion";
}
?> 

