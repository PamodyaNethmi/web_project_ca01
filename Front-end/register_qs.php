<?php
header('Content-Type: application/json');
require 'config2.php'; // DB connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $fullName = trim($_POST['fullName']);
    $studentID = trim($_POST['studentID']);
    $email = trim($_POST['email']);
    $field = trim($_POST['field']);
    $phone = trim($_POST['phone']);

    if (empty($fullName) || empty($studentID) || empty($email)) {
        echo json_encode(['success'=>false,'message'=>'Full Name, Student ID, and Email are required.']);
        exit;
    }

    $stmt = $conn->prepare("INSERT INTO qs_workshop (full_name, student_id, email, field, phone) VALUES (?, ?, ?, ?, ?)");
    $inserted = $stmt->execute([$fullName,$studentID,$email,$field,$phone]);

    if ($inserted) {
        echo json_encode(['success'=>true,'message'=>'Registration successful!']);
    } else {
        echo json_encode(['success'=>false,'message'=>'Registration failed. Try again.']);
    }
} else {
    echo json_encode(['success'=>false,'message'=>'Invalid request method.']);
}
?>
