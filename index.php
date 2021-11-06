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
</head>
<body>
	<div class="div-welcome">
		<img src="images/logo.png" height="200"><br>
		<a href="Views/login.html"><button id="btn-login" style="margin-top: 7%;"> Login to your account </button></a>
	</div>
</body>
</html>