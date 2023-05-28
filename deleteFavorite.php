<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['book_id']) && isset($_POST['user_id'])) {
    $book_id = $_POST['book_id'];
    $user_id = $_POST['user_id'];
    $sql = "DELETE FROM favorite WHERE user_id='$user_id' AND book_id='$book_id'";
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure";
    }
} else {
    echo "failure";
}
