<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['book_id'])){
    $book_id = $_POST['book_id'];
    $sql = "SELECT AVG(rating) AS AverageRating, Count(rating) AS NumberOfRatings, book_id FROM book_rating WHERE book_id = '$book_id'";
    
    mysqli_set_charset($conn, "utf8mb4");
    $result = mysqli_query($conn, $sql);
    $response = array();
    while($row = mysqli_fetch_assoc($result))  
    {  
        if($row['NumberOfRatings'] != 0) {
            echo $row['AverageRating'] . ", " . $row['NumberOfRatings'] . ", " . $row['book_id'];
        } else {
            echo "empty";
        }

    }
}

$conn->close();