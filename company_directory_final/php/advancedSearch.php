<?php 

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$firstname = $_POST["firstName"]; 
$lastname = $_POST["lastName"]; 
$email = $_POST["email"]; 
$dept = $_POST["dept"]; 
$location = $_POST["location"]; 

$queries = array(
    "firstName" => $firstname,
    "lastName" => $lastname,
    "email" => $email,
    "department" => $dept,
    "location" => $location
);

$usedQueries = [];

foreach ($queries as $key => $value) {
    
    if($value != "") {
        $usedQueries[$key] = $value;
    }

}

$sqlSearch = "";

foreach ($usedQueries as $key => $value) {
    $sqlSearch.="".$key."= '".$value."' AND ";
}

$sqlSearchFormatted = preg_replace('/\W\w+\s*(\W*)$/', '$1', $sqlSearch);

$sql = "SELECT * FROM final_table 
WHERE ".$sqlSearchFormatted."";

$result = mysqli_query($conn, $sql);

$json_array = array();

while($row = mysqli_fetch_assoc($result)) {
    $json_array[] = $row;
}

echo json_encode($json_array);