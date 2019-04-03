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
    printf("fetched&nbsp;row : ");
    session_start();
    $_SESSION['auth'] = 'true';
    $_SESSION['username'] = $row['username'];
    $query = "SELECT employee_id from employeeInfo WHERE username='{$userName}'";
    $runQuery = mysqli_query($dbcon, $query);
    $id_fetch = mysqli_fetch_assoc($runQuery);
    $_SESSION['id'] = $id_fetch['employee_id']; 
    echo $_SESSION['username'];
	header('location:../employee/home.php');
} else {
	header('location:logins.php');
}
?>