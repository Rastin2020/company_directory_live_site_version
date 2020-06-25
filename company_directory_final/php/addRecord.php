<?php 

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$firstname = "'".$_POST["firstname"]."'"; 
$lastname = "'".$_POST["lastname"]."'"; 
$email = "'".$_POST["email"]."'"; 
$dept = "'".$_POST["dept"]."'"; 
$location = "'".$_POST["location"]."'"; 
$default_image = "'profile.png'";


$sql = "INSERT INTO final_table(firstName, lastName, email, department, location, image) 
VALUES (".$firstname.", ".$lastname.", ".$email.", ".$dept.", ".$location.", ".$default_image.")";

$result = mysqli_query($conn, $sql);

$json_array = array();

while($row = mysqli_fetch_assoc($result)) {
    $json_array[] = $row;
}

echo json_encode($json_array);