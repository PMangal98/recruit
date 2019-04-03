<?php

    session_start();
    require_once 'dbconnect.php';
    $jobId = $_POST["jobId"];
    $eeId = $_POST['eeId'];
    $today = date("d/m/Y");
    $desc = $_POST['desc'];
    $query = "INSERT application(employee_id,job_id,appl_date,description) values ({$eeId},{$jobId},{$today},{$desc});";
    mysqli_query($dbcon,$query);
    echo 1;
?>
