
<?php
$link= new mysqli("localhost", "root", "", "aliffoundation");

// Check connection
if ($link->connect_error) 
{
   echo "Connection Error";
}

$Id = $_GET['Id'];

echo "ID = " . $Id;

$q = "delete from donor where donor_id ='$Id'";

// $q="delete from donor where donor_id";

if($link->query($q) == TRUE)
{
	echo header("location:WebPage.php");
	// echo "Sucess!";
}
else
{
	echo "ERROR!";
}
$link->close();


?>