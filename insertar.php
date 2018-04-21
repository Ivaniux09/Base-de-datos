<?php 
include ("conec.php") ;
error_reporting(0);
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<h1>Bienvenido</h1>

<form action="" method="GET">
ID # <input type = "text" name = "id" value = "" /><br><br>
NAME <input type="text" name="studenname" value=""/><br><br>
CLASS <input type="text" name="class" value=""/><br><br>
<input type="submit" name="submit" value="Guardar"> 

 </form>

 <?php 

if ($_GET['submit'])
	{
		$id = $_GET['id'];
		$name = $_GET['studenname'];
		$cl = $_GET['class'];

			if ($id!="" && $name!="" && $cl!="") {
				
				$query = "INSERT INTO estudiantes VALUES ('$id', '$name', '$cl')";

				$datos = mysqli_query($conn, $query);

					 if ($datos) 
					 {
					 	# code...
					 	echo "Datos Ingresados en la Base de Datos";
					 }

					 else
					 	{
					 		echo "error";
					 	}

			}

	}


  ?>
</body>
</html>