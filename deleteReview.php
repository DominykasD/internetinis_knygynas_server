<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['id'])) {
    $id = $_POST['id'];
    $sql = "DELETE FROM book_rating WHERE  id='$id'";
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure";
    }
} else {
    echo "failure";
}
