<?php 

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$ID = $_POST["id"]; 
$firstname = "'".$_POST["firstname"]."'"; 
$lastname = "'".$_POST["lastname"]."'"; 
$email = "'".$_POST["email"]."'"; 
$dept = "'".$_POST["dept"]."'"; 
$location = "'".$_POST["location"]."'"; 

$sql = "UPDATE final_table
SET firstName = ". $firstname .", lastName = ". $lastname .", email = ". $email .", department = ". $dept .", location = ". $location ."
WHERE id = ".$ID;

$result = mysqli_query($conn, $sql);

$json_array = array();

while($row = mysqli_fetch_assoc($result)) {
    $json_array[] = $row;
}

echo json_encode($json_array);