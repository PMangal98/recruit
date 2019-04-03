<?php
require_once 'dbconnect.php';
$username_or_email = $_POST["username_or_email"];
$password = $_POST["password"];

$query1 = "SELECT username FROM recruit.loginInfo WHERE `username`='$username_or_email' AND `password`='$password'";

$result1 = mysqli_query($dbcon, $query1);
if($result1 == FALSE) {
    printf("error: %s\n", mysqli_error($dbcon));
    die("SQL query failed...");
}
$numResults1 = mysqli_num_rows($result1);
if($numResults1 == 1) {
    $row = mysqli_fetch_assoc($result1);
    session_start();
    $_SESSION['auth'] = 'true';
    $_SESSION['username'] = $row['username'];
	header('location:../employer/home.php');
} else {
	header('location:loginp.php');
}
?>