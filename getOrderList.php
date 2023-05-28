<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id'])){
    $user_id = $_POST['user_id'];
    $sql = "SELECT id,
        user_id,
        order_number,
        date,
        status,
        cart,
        street,
        street_number,
        city,
		payment
        FROM orders WHERE user_id = '$user_id'";
    
    mysqli_set_charset($conn, "utf8mb4");
    $result = mysqli_query($conn, $sql);
    $response = array();

    while($row = mysqli_fetch_assoc($result))  
    {  
        $response[] = $row;

    }
    echo json_encode(array("orders"=>$response));
}