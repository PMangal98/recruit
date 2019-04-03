<?php
    session_start();
    require_once 'dbconnect.php';
?>
<html>

<head>

    <title>Portal</title>

    <link rel="stylesheet" href="../assets/css/bootstrap.css">

    <style type = "text/css">

        html{
            position:relative;
            min-height: 100%;
        }
        body{
            background-color: #CFECF7;
            margin-bottom: 40px;
        }
        #wrapper{
            position: relative;
            width:100%;
            min-height:100%;
        }
        .navbar-brand{
            font-weight: bold;
        }
        .navbar-brand:hover{
            color: skyblue;
        }
        .navbar-nav{
            margin: auto;
        }
        .topbar{
            float: right !important;
            margin: 0 !important;
        }        
        .col-centered{
            margin:auto;
        }        
        .profile-div{
            margin-top: 20px !important;
            max-width: 1000px;
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin: auto;
            box-shadow: 0 .125rem .25rem rgba(0,0,0,.075)!important;  
        }
        .cd-header{
            font-weight: bold;
            font-size: 18px;
        }
        .cd-body{
            font-size: 15px;          
        }
        .sml-headings{
            display: inline-block;
            color: #343A40;
            font-weight: 500;
        }
        .sml-ans{
            display: inline-block;
        }
        .btn-width{
            width: 100px;
        }
        .bottom-margin-forms{
            margin-bottom: 10px;
        }
        .user-info{
            font-size: 25px;
            margin-bottom: 5px;
        }
        .for-job{
            font-size:17px;
            margin-bottom: 5px;
        }
        .letter{
            font-size: 14px;
            margin-bottom: 5px;
        }
        .applications{
            padding: 40px !important;
        }
        .eeAppCard:hover{
            cursor: pointer;
        }
        .main-head{
            text-align: center;
            margin: 10px;
            padding-top: 10px;
        }
        .low-padding-btm{
            padding-bottom: 20px !important;
        }


    </style>

</head>
<body>

    <nav class = "navbar navbar-expand-md navbar-dark bg-primary">

        <a class = "navbar-brand" href = "#">RT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class = "collapse navbar-collapse" id = "navbarNav">

            <ul class = "navbar-nav">

                <li class = "nav-item">
                    <a class = "nav-link" href = "./home.php">Profile</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "./portal.php">Jobs Postings</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "#">Applications</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "./posted.php">Jobs Posted</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" href = "./logout.php">Logout</a>
                </li>

            </ul>

        </div>
    </nav>
    
    <div class="col col-12">
        <h2 class="main-head">Jobs Posted</h2>
        <div class="row p-3"> 
                <?php
                    $userId = $_SESSION['userId'];
                    $errors = array();
                    $query = "SELECT job_id,job_type, description, start_date, end_date, salary, location FROM job WHERE employer_id = '{$userId}'";
                    $runQuery = mysqli_query($dbcon, $query);
                    $numRows = mysqli_num_rows($runQuery);
                    while($appl_row = mysqli_fetch_assoc($runQuery)){
                        echo '<div class="col col-md-6">
                            <div class= "profile-div applications low-padding-btm" > 
                            <div class="user-info eeAppCard"> '.$appl_row["job_type"].'</div>
                            <div class="for-job"> Duration : '.$appl_row["start_date"].' | '.$appl_row["end_date"].'</div>
                            <div class="letter"> '.$appl_row["location"].' | '.$appl_row["salary"].'</div>
                            <div class="letter"> '.$appl_row["description"].' </div>
                            <div class="clearfix"></div></div>
                        </div>';
                    }
                ?>
            </div>
        </div>

</body>

<script src = "../assets/js/jquery.min.js"></script>
<script src = "../assets/js/popper.min.js"></script>
<script src = "../assets/js/bootstrap.js"></script>

<script type="text/javascript">

    $(".eeAppCard").click(function (){
            
        var id = $(this).attr('id');
        var redir = 'applicationUser.php?employee_userId=' + id;
        window.location.href = redir;

    });
    
</script>

</html>