<html>

<head>

<link rel="stylesheet" href="style.css">

<?php
    $conn= new mysqli("localhost", "root", "", "aliffoundation");

    // Check connection
    if ($conn->connect_error) {
        echo "Connection Error";
    }

    $id=$_GET['Id'];
    
    $q="SELECT * FROM donor where donor_id='$id'";

    // echo "ID = ". $id;
    
    $queryResult= $conn->query($q);
    $result= $queryResult->fetch_assoc();
    $conn->close();
    ?>
</head>

<body>


<form class="donorForm" action="updateform.php" method="POST">
        <h2>UPDATE DONOR DATA:</h2>
        <hr style="height: 10px;">
        <input type="hidden" name="donorID" value="<?php echo $result["donor_id"];?>"><br>
        Donor Name: <input type="text" name="fname" value="<?php echo $result["name"];?>"><br>
        Phone Number: <input type="text" name="phonenumber" value="<?php echo $result["Phone_no"];?>"><br>
        Address: <input type="text" name="donor_address" value="<?php echo $result["address"];?>"><br>
        <input type="submit" name="update" value="UPDATE">
    </form>
</body>

</html>