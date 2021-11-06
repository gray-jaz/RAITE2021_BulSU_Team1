<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/master.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>

<body>

    <nav>
        <div class="logo">
            <a href="index.php"><img class="img-logo" src="images/logo.png"></a>
        </div>

        <ul>
            <li class="active-menu">
                <a href="#">DASHBOARD</a>
            </li>
            <li>
                <a href="#">COVID TRACING</a>
            </li>
            <li>
                <a href="#">VACCINATION</a>
            </li>
            <li>
                <a href="#">CITIZENS</a>
            </li>
        </ul>

        <div class="nav-footer">
            <p><span class="far fa-user-circle" id="user-icon"></span>User-Account Name<p>
            <p id="position">SUPER ADMIN</p>
        </div>
    </nav>
    <div class="div-dashboard">
        <h1> Welcome to Dashboard </h1>

        <div class="info-boxes">
            <div id="qr" class="div-info-boxes">
                <h1 id="qr-ctzn">34</h1>
                <h4>Quarantined</h4>
            </div>
            <div id="rs" class="div-info-boxes">
                <h1 id="rs-ctzn">33</h1>
                <h4>Resolved</h4>
            </div>
            <div id="vc" class="div-info-boxes">
                <h1 id="vc-ctzn">32</h1>
                <h4>Vaccinated</h4>
            </div>
            <div id="nvc" class="div-info-boxes">
                <h1 id="nvc-ctzn">31</h1>
                <h4>Not Vaccinated</h4>
            </div>
        </div>

        <h2>Monthly Outputs</h2>
        <p style="margin-top: -15px;font-size:11px">Below is the graph for monthly results of covid-19 tracing and vaccination management.</p>

</body>

</html>