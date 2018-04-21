<?php 
include ("conec.php");

$query = "INSERT INTO estudiantes VALUES ('67', 'Edgar Ivan', 'UGM_MINA')";
$datos = mysqli_query ($conn,$query);

if ($datos)
{
	echo "Datos ingresados correctamente";
}

else
{
	echo " Los datos ya existen";
}
 ?>

