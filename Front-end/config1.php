<?php
// config1.php
$host = "localhost";
$db_name = "global_vision_university1";
$username = "root";  // your MySQL username
$password = "";      // your MySQL password

try {
    $conn = new PDO("mysql:host=$host;dbname=$db_name;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>


