<?php
$conn= new mysqli("localhost", "root", "", "aliffoundation");

// Check connection
if ($conn->connect_error) {
   echo "cConnection Error";

}
$donor_name = $_POST['fname'];
$donor_id = $_POST['donorID'];
$phone_number = $_POST['phonenumber'];
$address = $_POST['donor_address'];

// $q="UPDATE record SET first_name='$f_name', last_name='$l_name', email='$email' where id='$id'";

echo "ID = ". $donor_id;

$q = "UPDATE donor SET name='$donor_name', Phone_no='$phone_number', address='$address' WHERE donor_id='$donor_id'";


if($conn->query($q) == TRUE)
{
	
	header("location:WebPage.php");
	$conn->close();
}
else
{
	echo $conn->error;
	$conn->close();
}



?>