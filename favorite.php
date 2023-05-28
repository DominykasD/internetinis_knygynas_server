<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id']) && isset($_POST['book_id'])){
    $user_id = $_POST['user_id'];
    $book_id = $_POST['book_id'];
    $bookTitle = $_POST['bookTitle'];
    $bookImage = $_POST['bookImage'];
    $bookAuthor = $_POST['bookAuthor'];
    $bookPrice = $_POST['bookPrice'];

    mysqli_set_charset($conn, "utf8mb4");
    $sql = "INSERT INTO favorite (user_id, book_id, bookTitle, bookImage, bookAuthor, bookPrice)
    VALUES ('$user_id', '$book_id', '$bookTitle', '$bookImage', '$bookAuthor', '$bookPrice')";
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure";
    }
}