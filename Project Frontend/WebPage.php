<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    
    <title>Alif Foundation</title>
</head>
<body>

    <!-- HEADER -->

    <header>
        <div class="overlay">
    <h1 style="font-size: 50px;">Alif Foundation</h1>

    </header>

    <form class="donorForm" action="donor.php" method="POST">
        <h2>DONOR FORM:</h2>
        <hr style="height: 10px;">
        Assigned Donor ID: <input type="number" name="donorID"><br>
        Donor Name: <input type="text" name="fname"><br>
        Phone Number: <input type="text" name="phonenumber"><br>
        Date of Birth: <input type="date" name="dob"><br>
        National ID: <input type="text" name="nationalID"><br>
        Blood Group: <input type="text" name="bloodgroup"><br>
        Address: <input type="text" name="donor_address"><br>
        <input type="submit" value="INSERT">
    </form>

    <?php
$link = mysqli_connect("localhost", "root", "", "aliffoundation");

//$link = new mysqli("localhost", "root", "", "demo");
 
// Check connection
if ($link->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
 
 $sql = "SELECT * from donor";
 $queryResult= $link->query($sql);
 
 echo "<h1>ALL DONORS DATA:</h1>";

 echo "<div class=donorView>";

 echo "<table border=1>";
		echo "<tr>";
		echo "<th>DONOR ID</th>";
		echo "<th>Donor Name</th>";
		echo "<th>Phone Number</th>";
		echo "<th>Date of Birth</th>";
		echo "<th>National ID</th>";
        echo "<th>Blood Group</th>";
        echo "<th>Address</th>";
        echo "<th>Delete Record</th>";
        echo "<th>Update Record</th>";
		echo "</tr>";
 while ($result= $queryResult->fetch_assoc()){
	 echo "<tr>";
	 	echo "<td>".$result["donor_id"]."</td>";
		echo "<td>".$result["name"]."</td>";
		echo "<td>".$result["Phone_no"]."</td>";
		echo "<td>".$result["DOB"]."</td>";
        echo "<td>".$result["national_id"]."</td>";
        echo "<td>".$result["blood_group"]."</td>";
        echo "<td>".$result["address"]."</td>";
		echo "<td><a href='delete.php?Id=" . $result["donor_id"]. "'> <button style=padding:5px;>Delete</button> </a>";
        echo "<td><a href='update.php?Id=" . $result["donor_id"]. "'> <button style=padding:5px;>Update</button> </a>";
	    echo "</tr>";
 }
 echo "</table>";
 echo "</donorView>";

//  echo '
// <form action="" method="POST" class="deleteField">
//     Enter ID To Delete:
//     <input type="text" name="id"><br>
//     <input type="submit" name="delete" value="Delete">
// </form>';

// if(isset($_POST['delete']))
//     {
//         mysqli_query($link,"DELETE FROM `donor` WHERE `donor_id`='$_POST[id]';");
//     }

// if(isset($_POST['update']))
//     {
//         mysqli_query($link,"UPDATE `donor` SET `name`='$_POST[fname]',`Phone_no`='$_POST[phonenumber]',
//         `address`='$_POST[donor_address]',`blood_group`='$_POST[bloodgroup]',`national_id`='$_POST[nationalID]',,`DOB`='$_POST[dob]' WHERE `donor_id`='$_POST[donorID]';");
//     }

 mysqli_close($link);

//$link->close();
?>
    
    
</body>
</html>