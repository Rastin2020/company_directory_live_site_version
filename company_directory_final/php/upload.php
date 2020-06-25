<?php 
 
//Enable error reporting.
error_reporting(E_ALL);
ini_set("display_errors", 1);

$id = $_POST["id"];

$name_without_extension = substr($_FILES["image"]["name"], 0, strpos($_FILES["image"]["name"], "."));
$name_without_extension_with_id = $name_without_extension.$id;

$target_dir = "../images/profile_pics/";
$target_file_find_extension = $target_dir . basename($_FILES["image"]["name"]);
$imageFileType = strtolower(pathinfo($target_file_find_extension,PATHINFO_EXTENSION));
$name_formatted = $name_without_extension_with_id.".".$imageFileType;
$target_file = $target_dir . $name_formatted; 
$uploadOk = 1;

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["image"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
}

// Check if file already exists
if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
    echo "The file ". $name_formatted. " has been uploaded.";
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}

$servername = "sql105.epizy.com";
$username = "epiz_26097287";
$password = "aeCkO2dURsX";
$dbname = "epiz_26097287_XXX";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

         // ---------------------------------------------- SQL QUERY PROCESS -------------------------------------------------

         $sql = "UPDATE final_table SET image = '".$name_formatted."' WHERE id=".$id;

         $result = mysqli_query($conn, $sql);

         $json_array = array();

         while($row = mysqli_fetch_assoc($result)) {
            $json_array[] = $row;
         }

   $redirectURL = "http://company-directory.epizy.com/"; // Which URL to redirect to once upload has been complete.

      // REDIRECT back to main page:
      header('Location: '.$redirectURL); 

?>