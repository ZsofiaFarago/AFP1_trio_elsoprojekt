<html>
<head>
<link rel="stylesheet" href="Style.css"> 
<title>3.Oldal</title>
</head>
<?php
$dbconnect=mysqli_connect('localhost:3308','root','','projekt');
$sql = "SELECT * FROM tárgyak WHERE ID='$_GET[id]'";
$result = mysqli_query($dbconnect,$sql);
$resultcheck=mysqli_num_rows($result);  
   if($resultcheck >0)
   {
	   while($row=mysqli_fetch_assoc($result))
	   {
		   echo
"<table id=3table>
<tbody>
<tr>
<td id='kep'><img src='img/".$row['kep']."'</td>
<td>
<table>
<tr><td><br>".$row['neve']."<br></td></tr>
<tr><td><br>".$row['leiras']."<br></td></tr>
<tr><td><br>".$row['helye']."<br></td></tr></tr>
</table>
</td>
</tr>
</tbody>
</table>"  ;
	   }
   }  
?>
<?php
 echo "<a href='1,oldal.php'><button>Vissza a kategóriákhoz!</button></a>";
?>
<?php
$dbconnect=mysqli_connect('localhost:3308','root','','projekt');
$sql = "SELECT * FROM tárgyak WHERE ID='$_GET[id]'";
$result = mysqli_query($dbconnect,$sql);
$resultcheck=mysqli_num_rows($result);  
if($resultcheck >0)
   {
	   while($row=mysqli_fetch_assoc($result))
	   {
		  echo "<a href='2,oldal.php?id=".$row['katid']."'><button>Vissza az előző kategóriához!</button></a>";
	   }
   }  
?>
</html>