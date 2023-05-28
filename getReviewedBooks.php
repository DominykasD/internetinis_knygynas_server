<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['user_id'])){
    $user_id = $_POST['user_id'];
    mysqli_set_charset($conn, "utf8mb4");
    $sql = "SELECT * FROM book_rating WHERE user_id = '$user_id'";
    $result = mysqli_query($conn, $sql);
    $response = array();
    if(mysqli_num_rows($result) > 0)  
           {  
                while($row = mysqli_fetch_array($result))  
                {  
                    $response[] = $row;
                }  
           } 
    echo json_encode(array("books"=>$response));
}