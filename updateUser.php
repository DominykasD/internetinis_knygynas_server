<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id']) && isset($_POST['name']) && isset($_POST['surname'])) {
    $user_id = $_POST['user_id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];

    $sql = "UPDATE user SET name = '$name' WHERE id = '$user_id'";
    $sql2 = "UPDATE user SET surname = '$surname' WHERE id = '$user_id'";
    mysqli_set_charset($conn, "utf8mb4");
    if ($conn->query($sql) === TRUE) {
        if ($conn->query($sql2) === TRUE) {
            echo "success";
        }
        else echo "failure";

    } else {
        echo "failure";
    }
}


$conn->close();