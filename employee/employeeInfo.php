<?php
    require_once 'dbconnect.php';
    $userName = $_SESSION['username'];
    $errors = array();
    $query = "SELECT  employee_id,employeeinfo.name as emplName,username,employeeinfo.email,employeeinfo.contact, dob FROM employeeinfo WHERE username = '$userName' ;";
    $runQuery = mysqli_query($dbcon, $query);
    $numRows = mysqli_num_rows($runQuery);
    if ( $numRows == 1 ){
        $row = $runQuery->fetch_assoc();
        $ans = $row['employee_id'];
        $_SESSION['userId'] = $row['employee_id'];
    } else {
        array_push($errors, 'User Id error_ No row returned');
    }
?>
