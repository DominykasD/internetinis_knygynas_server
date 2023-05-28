<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT
    f.id,
    f.user_id,
    f.book_id,
    f.bookTitle,
    f.bookImage,
    f.bookAuthor,
    f.bookPrice,
    b.number_of_ratings,
    b.available_quantity,
    b.publisher,
    b.year,
    b.pages,
    b.ISBN,
    b.format,
    b.language,
    b.description,
    b.rating
    FROM favorite f
    INNER JOIN book b ON f.book_id = b.id";
mysqli_set_charset($conn, "utf8mb4");
$result = mysqli_query($conn, $sql);
$response = array();
while($row = mysqli_fetch_assoc($result))  
{  
    $response[] = $row;
}
echo json_encode(array("favorite"=>$response)); 

$conn->close();