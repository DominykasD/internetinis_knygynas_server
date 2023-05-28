<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id']) && isset($_POST['book_id'])){
    $user_id = $_POST['user_id'];
    $book_id = $_POST['book_id'];
    $createdAt = $_POST['createdAt'];
    $updatedAt = $_POST['updatedAt'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    mysqli_set_charset($conn, "utf8mb4");
    $sql = "INSERT INTO book_rating (user_id, book_id, createdAt, updatedAt, rating, comment)
    VALUES ('$user_id', '$book_id', '$createdAt', '$updatedAt', '$rating', '$comment')";
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure";
    }
}