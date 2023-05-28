<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_POST['id'];
$updatedAt = $_POST['updatedAt'];
$rating = $_POST['rating'];
$comment = $_POST['comment'];

if(isset($_POST['id']) && isset($_POST['updatedAt']) && isset($_POST['rating']) && isset($_POST['comment'])) {
    $id = $_POST['id'];
    $updatedAt = $_POST['updatedAt'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    $sql = "UPDATE book_rating SET updatedAt = '$updatedAt' WHERE id = '$id'";
    $sql2 = "UPDATE book_rating SET rating = '$rating' WHERE id = '$id'";
    $sql3 = "UPDATE book_rating SET comment = '$comment' WHERE id = '$id'";
    mysqli_set_charset($conn, "utf8mb4");

    if ($conn->query($sql) === TRUE) {
        if ($conn->query($sql2) === TRUE) {
            if ($conn->query($sql3) === TRUE) {
                echo "success";
            }
            else {
                echo "failure";
            }
        }
        else echo "failure";

    } else {
        echo "failure";
    }
} else {
    echo "SET ERROR";
    echo $id;
    echo $updatedAt;
    echo $rating;
    echo $comment;
}


$conn->close();