<html>
<head>
<link rel="stylesheet" href="Style.css"> 
<title>2.Oldal</title>
</head>
<table id="Lekérés">
<tbody>
<tr>
<td><?php	
	$dbconnect=mysqli_connect('localhost:3308','root','','projekt');
   $sql = "SELECT * FROM tárgyak WHERE katid='$_GET[id]'";
   $result = mysqli_query($dbconnect,$sql);
   $resultcheck=mysqli_num_rows($result);
   if($resultcheck >0)
   {
	   while($row=mysqli_fetch_assoc($result))
	   {
		   echo  "<a href='3,oldal.php?id=".$row['id']."><input type='button'</a>Név: ".$row['neve']." Helye a múzeumban: ".$row['helye']." Leírás: ".$row['leiras']."<br>";
		   
	   }
   }
	?>	
</tr>
</tbody>
</table>
<div><a href="1,oldal.php"><button>Vissza a kategóriákhoz!</button></a></div>
</html>