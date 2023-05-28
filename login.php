<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM user WHERE email = '$email'";
    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result) > 0) { 
        while($row = mysqli_fetch_array($result)) {
            if(password_verify($password, $row["password"])) { 
                $response[] = $row;
                echo json_encode(array("user"=>$response)); 
            } else {
                echo "failure";
            }  
        }  
    } else { 
        echo "failure";
   } 
}

$conn->close();