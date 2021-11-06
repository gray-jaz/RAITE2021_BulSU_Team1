<?php
session_start();

require_once ("../Database/connection.php");

$table = "account";
$columns = ["username", "password", "name", "account_type", "citizen_id"];

//login
if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $result = $conn->query("SELECT * FROM $table WHERE username = '".$username."' AND password = '".$password."'");

    if($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $_SESSION["username"] = $row['username'];
            $_SESSION["account_type"] = $row['account_type'];

            if ($row['account_type'] == 0) {
                $_SESSION["citizen_id"] = $row['citizen_id'];
            }

            echo $row['account_type'];
        }
    } else {
        echo "Error: " . $conn->error;
    }

}