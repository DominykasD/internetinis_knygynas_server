<?php

$conn = new mysqli("localhost", "root", "", "internetinis_knygynas");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$title = $_POST['title'];
$category = $_POST['category'];
$pages = $_POST['pages'];
$description = $_POST['description'];
$price = $_POST['price'];
$image = $_POST['image'];
$available_quantity = $_POST['available_quantity'];
$publisher = $_POST['publisher'];
$rating = $_POST['rating'];
$number_of_ratings = $_POST['number_of_ratings'];
$author = $_POST['author'];
$year = $_POST['year'];
$ISBN = $_POST['ISBN'];
$format = $_POST['format'];
$language = $_POST['language'];
$status = $_POST['status'];

mysqli_set_charset($conn, "utf8mb4");
$sql = "INSERT INTO favorite (title, category, description, image, available_quantity, publisher, 
    rating, number_of_ratings, author, year, ISBN, format, language, status)
VALUES ('$title', '$category', '$description', '$image', '$available_quantity', '$publisher', '$rating',
    '$number_of_ratings', '$author', '$year', '$ISBN', '$format', '$language', '$status')";
if ($conn->query($sql) === TRUE) {
    echo "success";
} else {
    echo "failure";
}
