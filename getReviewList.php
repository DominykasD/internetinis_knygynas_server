<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT 
    b1.id,
    b1.user_id,
    b1.book_id,
    b1.createdAt,
    b1.updatedAt,
    b1.rating,
    b1.comment,
    u1.name,
    u1.surname
    FROM book_rating b1
    LEFT OUTER JOIN user u1 ON b1.user_id = u1.id";
mysqli_set_charset($conn, "utf8mb4");
$result = mysqli_query($conn, $sql);
$response = array();
while($row = mysqli_fetch_assoc($result))  
{  
    $response[] = $row;
}
echo json_encode(array("review"=>$response)); 

$conn->close();