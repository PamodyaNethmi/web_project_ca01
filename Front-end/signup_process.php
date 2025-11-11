<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');
require 'config.php';

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

    // Hash password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    try {
        // Check existing email
        $stmt = $conn->prepare("SELECT id FROM users WHERE email = ?");
        $stmt->execute([$email]);
        if ($stmt->rowCount() > 0) {
            sendResponse(false, "Email is already registered.");
        }

        // Insert user
        $stmt = $conn->prepare("INSERT INTO users (full_name, email, password) VALUES (?, ?, ?)");
        $result = $stmt->execute([$fullName, $email, $hashedPassword]);

        if ($result) {
            sendResponse(true, "Signup successful! You can now log in.");
        } else {
            // Show detailed SQL error (for debugging)
            $errorInfo = $stmt->errorInfo();
            sendResponse(false, "Database Insert Error: " . $errorInfo[2]);
        }
    } catch (PDOException $e) {
        sendResponse(false, "Database Error: " . $e->getMessage());
    }
} else {
    sendResponse(false, "Invalid request method.");
}
?>
