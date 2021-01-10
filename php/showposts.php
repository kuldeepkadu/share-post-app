<?php
include 'database.php';
$posts = [];

$sql = "SELECT * FROM posts";
if($result = $mysqli->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
		$posts[$i]['id'] = $row['id'];
		$posts[$i]['title'] = $row['title'];
		$posts[$i]['description'] = $row['description'];
		$i++;
	}
	echo json_encode($posts);
}
else
{
	http_response_code(404);
}