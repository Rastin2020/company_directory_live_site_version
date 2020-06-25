<?php 

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$ID = $_POST["id"]; 

$sql = "DELETE FROM final_table WHERE id=".$ID;

$result = mysqli_query($conn, $sql);

$json_array = array();

while($row = mysqli_fetch_assoc($result)) {
    $json_array[] = $row;
}

echo json_encode($json_array);