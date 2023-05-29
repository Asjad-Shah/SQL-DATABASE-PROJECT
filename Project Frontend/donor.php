<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "aliffoundation");

//$link = new mysqli("localhost", "root", "", "demo");
 
// Check connection
if ($link->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
 
$donor_name = $_POST['fname'];
$donor_id = $_POST['donorID'];
$phone_number = $_POST['phonenumber'];
$dob = $_POST['dob'];
$national_id = $_POST['nationalID'];
$blood_group = $_POST['bloodgroup'];
$address = $_POST['donor_address'];
 
// attempt insert query execution
$sql = "INSERT INTO donor (name, donor_id, Phone_no, DOB, national_id, blood_group, address) 
VALUES ('$donor_name', '$donor_id', '$phone_number', '$dob', '$national_id', '$blood_group', '$address')";

if($link->query($sql)== TRUE)
	echo header("location:WebPage.php");
else
  echo "ERROR!";

/*
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 */
 
// close connection
mysqli_close($link);

//$link->close();
?>