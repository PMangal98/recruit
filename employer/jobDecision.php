<?php

    session_start();
    require_once 'dbconnect.php';
    $setVal= $_POST["type"];
    $jobId = $_POST["jobId"];
    $eeId = $_POST['eeId'];
    $query = "UPDATE application SET status = $setVal WHERE job_id = $jobId AND employee_id = $eeId;";
    mysqli_query($dbcon,$query);
    echo 1;
?>
