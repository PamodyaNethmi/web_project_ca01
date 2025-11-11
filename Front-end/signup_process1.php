<?php
header('Content-Type: application/json');
require 'config1.php';

function sendResponse($success, $message) {
    echo json_encode(['success' => $success, 'message' => $message]);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $fullName = trim($_POST['fullName']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirmPassword'];

    if (empty($fullName) || empty($email) || empty($password) || empty($confirmPassword)) {
        sendResponse(false, "All fields are required.");
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        sendResponse(false, "Invalid email address.");
    }

    if ($password !== $confirmPassword) {
        sendResponse(false, "Passwords do not match.");
    }

    // Check if email already exists
    $stmt = $conn->prepare("SELECT id FROM users1 WHERE email = ?");
    $stmt->execute([$email]);

    if ($stmt->rowCount() > 0) {
        sendResponse(false, "Email is already registered.");
    }

    // Insert user (plain text password)
    $stmt = $conn->prepare("INSERT INTO users1 (full_name, email, password) VALUES (?, ?, ?)");
    $inserted = $stmt->execute([$fullName, $email, $password]);

    if ($inserted) {
        sendResponse(true, "Signup successful! You can now log in.");
    } else {
        sendResponse(false, "Signup failed. Please try again.");
    }
} else {
    sendResponse(false, "Invalid request method.");
}
?>
