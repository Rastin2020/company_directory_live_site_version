<?php 

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$query = $_POST["queryInput"];

echo $query;

if ($query == "") {
    
    $sql = "SELECT * FROM final_table
    ORDER BY lastName ASC";

    $result = mysqli_query($conn, $sql);

    $json_array = array();

    while($row = mysqli_fetch_assoc($result)) {
        $json_array[] = $row;
    }

    echo json_encode($json_array);

}