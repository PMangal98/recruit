<? php
    require_once "dbconnect.php";
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Match your skill</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../assets/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
	</head>

	<body style="height:auto;">
	<nav class = "navbar navbar-expand-md navbar-dark bg-dark">
		<a class = "navbar-brand" href = "#">Job Finder</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
		</button>
		<div class = "collapse navbar-collapse" id = "navbarNav">
		<ul class = "navbar-nav">
				<li class = "nav-item">
						<a class = "nav-link" href = "#">Home</a>
				</li>
				<li class = "nav-item">
						<a class = "nav-link" href = "about.php">About Us</a>
				</li>
		</ul>

</div>
</nav>

		<div class="main-body" style="margin:0; padding:0; height:650px;">
			<div class="container-fluid">
				<div class="row" style="height: 650px">
           <div id="seeker" class="col-md-6 col-sm-6 col-xs-0 content" onclick="openSeekerLogin()">
						<h1> I need a Job </h1>
					</div>

					<div id="poster" class="col-md-6 col-sm-6 col-xs-12 content" onclick="openPosterLogin()">
						<h1> I need employee </h1>
          </div>
        </div>
		</div>
		</div>
		<div class="main-body">
			<div class="container-fluid">
					
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="../assets/js/popper.min.js"></script>
		<script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.min.js"></script>
        
        <script type="text/javascript">
        
            function openSeekerLogin() {
                window.location="logins.php";
            }

            function openPosterLogin() {
                window.location="loginp.php";
            }

            function changeOpacity(i) {
                document.getElementById(i).style.opacity='1';
            }
        
        </script>
        
	</body>


</html>
