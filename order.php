<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id']) && isset($_POST['orderNumber']) && isset($_POST['date']) && isset($_POST['status']) && isset($_POST['cart']) && isset($_POST['street']) && isset($_POST['street_number']) && isset($_POST['city'])  && isset($_POST['payment'])) {
    $user_id = $_POST['user_id'];
    $orderNumber = $_POST['orderNumber'];
    $date = $_POST['date'];
    $status = $_POST['status'];
	$cart = $_POST['cart'];
    $street = $_POST['street'];
    $street_number = $_POST['street_number'];
    $city = $_POST['city'];
	$payment = $_POST['payment'];

    $sql = "INSERT INTO `orders`(`user_id`, `order_number`, `date`, `status`, `cart`, `street`, `street_number`, `city`, `payment`) 
     VALUES ('$user_id', '$orderNumber', '$date', '$status', '$cart', '$street', '$street_number', '$city', '$payment')";
    
    mysqli_set_charset($conn, "utf8mb4");
    if ($conn->query($sql) === TRUE) {
        echo "success";
    } else {
        echo "failure";
    }
}


$conn->close();