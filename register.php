<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['email']) && isset($_POST['name']) && isset($_POST['surname']) && isset($_POST['password'])){
    $email = $_POST['email'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $password = $_POST['password'];
    $password = password_hash($password, PASSWORD_DEFAULT);
    $sql = "INSERT INTO internetinis_knygynas.user (email, name, surname, password) 
    VALUES ('$email', '$name', '$surname', '$password')";
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure " . $conn->error;
    }
}

$conn->close();