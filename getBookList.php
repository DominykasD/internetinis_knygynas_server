<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM book";

mysqli_set_charset($conn, "utf8mb4");
$result = mysqli_query($conn, $sql);

while($row = mysqli_fetch_assoc($result))  
{  
    $response[] = $row;
}
echo json_encode(array("book"=>$response)); 

$conn->close();