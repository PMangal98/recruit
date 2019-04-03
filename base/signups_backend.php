<?php
require_once 'dbconnect.php';
$username = $_POST["username_or_email"];
$password = $_POST["password"];
$email = $_POST["email"];
$name  = $_POST["name"];
$contact = $_POST["contact"];
$dob = $_POST["dob"];

$query = "INSERT INTO loginInfo (username, password) VALUES ('{$username}', '{$password}')";
$result = mysqli_query($dbcon, $query);
if($result == FALSE) {
    printf("error: %s\n", mysqli_error($dbcon));
    die("SQL query failed...");
}
$query = "INSERT INTO employeeinfo (username, name, email, contact, dob) VALUES ('{$username}', '{$name}', '{$email}', '{$contact}', '{$dob}')";
$result = mysqli_query($dbcon, $query);
if($result == FALSE) {
    printf("error: %s\n", mysqli_error($dbcon));
    die("SQL query failed...");
}
    session_start();
    $_SESSION['auth'] = 'true';
    $_SESSION['username'] = $username;
	header('location:home.php');
?>