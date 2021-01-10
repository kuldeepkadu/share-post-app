<?php
include_once("database.php");
$postdata = file_get_contents("php://input");

session_start();
$email = $_SESSION["email"];

if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata);

//$js_code = 'console.log(' . json_encode($postdata, JSON_HEX_TAG) . ');';
//echo $js_code;

$title = mysqli_real_escape_string($mysqli, trim($request->title));
$description = mysqli_real_escape_string($mysqli, trim($request->description));

$sql = "INSERT INTO posts(title,description) VALUES ('$title', '$description')";

// $mysqli->query($sql);

if ($mysqli->query($sql) === TRUE) {
$authdata1 = [
'title' => $title,
'description' => $description,
'Id' => mysqli_insert_id($mysqli)
];
echo json_encode($authdata1);

}
}

?>