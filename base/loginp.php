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


	<body class="body">
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
				<li class = "nav-item">
						<a class = "nav-link" href = "signupp.php">SignUp</a>
				</li>
				<li class = "nav-item">
						<a class = "nav-link" href = "index.php">Not a employer</a>
				</li>
		</ul>

</div>
</nav>

		<!-- <center>
			<a href = "login.php">Login</a><br><br>
			<a href = "signup.php">Signup</a>
		</center> -->

		<div class="main-body">
			<div class="container-fluid">
				<div id="logins-parent" class="row" style="float:float-right;">
					<div id="login-container" class="col-md-4 col-sm-12 col-xs-12 content">
					<center>	
						<form class="login-form" action="loginp_backend.php" method="POST">
							<h1 id="heading"> One Step Away </h1>
							<input class="form-field" type="text" name="username_or_email" placeholder="Username/email"><br>
							<input class="form-field" type="password" name="password" placeholder="Password">
							<p id="termscondition">By loggin in, you are agreeing to our ters and contidion.</p>
							<button class="submit-button" name="Submit">Login</button>
							<br>
							<br>
							<p style="color: white;">
								Not a memeber?<br><a href="signups.php" class="links">wanna join ?</a>
							</p>	
						</form>
					</center> 
					</div>
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="../assets/js/popper.min.js"></script>
		<script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.min.js"></script>
	</body>


</html>
