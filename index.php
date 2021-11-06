<?php session_start();

if(isset($_SESSION["username"])) {
    if ($_SESSION["account_type"] == 1) {
        //admin
        header('Location: views/admin/index.html');
    }
    else if ($_SESSION["account_type"] == 0) {
        //citizen
        header('Location: views/citizen/index.html');
    }
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> RHU - CTVMS </title>
	<link rel="stylesheet" type="text/css" href="css/welcome.css">
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<a href="#" style="text-decoration: none;color: #ffffff;" data-toggle="modal" data-target="#exampleModalLong"><i><p class="covid-info">&nbsp;&nbsp;&nbsp;&nbsp;Is contact tracing and vaccine important?</p></i></a>
	<div class="div-welcome">
		<img src="images/logo.png" height="200"><br>
		<a href="Views/login.html"><button id="btn-login" style="margin-top: 7%;"> Login to your account </button></a>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLongTitle">Is Contact Tracing and Vaccination Important?</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <p align="justify"> Contact tracing is the process of identifying, assessing, and managing people who have been exposed to a disease to prevent onward transmission. When systematically applied, contact tracing will break the chains of transmission of COVID-19 and is an essential public health tool for controlling the virus. 
	        <br><br>
			Contact tracing for COVID-19 requires identifying people who may have been exposed to COVID-19 and following them up daily for 14 days from the last point of exposure. 

			<br><br><i>While...</i><br><br>
			Vaccines mimic the virus or bacteria that causes disease and triggers the body’s creation of antibodies. These antibodies will provide protection once a person is infected with the actual disease-causing virus or bacteria.
			<br><br>
			Vaccines differ in their composition and how they trigger the immune response to create antibodies. These antibodies protect the body from microorganisms and serve as protection once a person gets infected with disease. Vaccines can be inactivated, weakened or killed copies of the whole or part of the virus or bacteria, or genetic product (like mRNA vaccines) that creates protein copies without causing disease.
			</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>