<?php 

$servername = "localhost";
$username = "root";
$password = "temito19";
$dbname = "php";

$conn = mysqli_connect($servername, $username,$password,$dbname);

if ($conn)
{
	echo "Base Conectada";

}

else
{

echo "Error de Conexion!! ";

}


 ?>