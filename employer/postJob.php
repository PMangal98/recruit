<?php

    session_start();
    require_once 'dbconnect.php';
    $errors = array();
    echo var_dump($_POST); 

    if ( empty($_POST['job_type']) ){
        array_push($errors,'job type is empty');
    }
    if ( empty($_POST['start_date']) ){
        array_push($errors,'start_date is empty');
    }
    if ( empty($_POST['end_date']) ){
        array_push($errors,'end_date is empty');
    }
    if ( empty($_POST['salary']) ){
        array_push($errors,'salary is empty');
    }
    if ( empty($_POST['location']) ){
        array_push($errors,'location is empty');
    }
    if ( empty($_POST['description']) ){
        array_push($errors,'description is empty');
    }
    $jobType = $_POST['job_type'];
    $stDate = $_POST['start_date'];
    $edDate = $_POST['end_date'];
    $salary = $_POST['salary'];
    $loc = $_POST['location'];
    $desc = $_POST['description'];
    $userId = $_SESSION['userId'];

    $sk1 = $_POST['skill1Id'];
    $sd1 = $_POST['skill1Duration'];
    $sk2 = $_POST['skill2Id'];
    $sd2 = $_POST['skill2Duration'];
    $sk3 = $_POST['skill3Id'];
    $sd3 = $_POST['skill3Duration'];
    $sk4 = $_POST['skill4Id'];
    $sd4 = $_POST['skill4Duration'];
    $sk5 = $_POST['skill5Id'];
    $sd5 = $_POST['skill5Duration'];

    $query = "INSERT INTO job(job_type, description, start_date, end_date, salary, location, employer_id)
	VALUES ( '$jobType' , '$desc' , '$stDate' , '$edDate' , '$salary',  '$loc' , '$userId' );";
        
    if ( count($errors)==0 ){
        mysqli_query($dbcon, $query);
        $query = "select last_insert_id() as last_id";
        $runQuery = mysqli_query($dbcon, $query);
        $temp = $runQuery->fetch_assoc();
        $jbId = $temp['last_id'];
        if ( empty($sk1) or empty($sd1) ){
            array_push($errors,'Skill1 not defined or duration not given');
        } else {
            $query = "insert into jobskill(job_id,skill_id,duration) values ( $jbId, $sk1, $sd1 );";
            echo $query;
            mysqli_query($dbcon, $query);
        }
        if ( empty($sk2) or empty($sd2) ){
            echo $query;
            array_push($errors,'Skill2 not defined or duration not given');
        } else {
            $query = "insert into jobskill(job_id,skill_id,duration) values ( $jbId, $sk2, $sd2 );";
            echo $query;
            mysqli_query($dbcon, $query);
        }
        if ( empty($sk3) or empty($sd3) ){
            array_push($errors,'Skill3 not defined or duration not given');
        } else {
            $query = "insert into jobskill(job_id,skill_id,duration) values ( $jbId, $sk3, $sd3 );";
            echo $query;
            mysqli_query($dbcon, $query);
        }
        if ( empty($sk4) or empty($sd4) ){
            array_push($errors,'Skill4 not defined or duration not given');
        } else {
            $query = "insert into jobskill(job_id,skill_id,duration) values ( $jbId, $sk4, $sd4 );";
            echo $query;
            mysqli_query($dbcon, $query);
        }
        if ( empty($sk5) or empty($sd5) ){
            array_push($errors,'Skill5 not defined or duration not given');
        } else {
            $query = "insert into jobskill(job_id,skill_id,duration) values ( $jbId, $sk5, $sd5 );";
            echo $query;
            mysqli_query($dbcon, $query);
        }
    }

    include ( 'errors.php ');
    header('location:home.php');

?>
