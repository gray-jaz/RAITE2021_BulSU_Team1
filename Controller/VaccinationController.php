<?php
session_start();

require_once("../Database/connection.php");

$table = "vaccination";
$columns = ["id", "category", "available_id_card", "vaccine_name", "vaccine_first_date", "vaccine_second_date", "philhealth_no", "pregnant", "breastfeeding", "drug_allergy", "food_allery", "pollen_allery", "immunodeficiency_status", "comorbidity", "diagnose_with_covid", "citizen_id"];



if(isset($_POST["save"])) {
    
    

}
























// //login
// if (isset($_POST['username'])) {
//     $username = $_POST['username'];
//     $password = $_POST['password'];

//     $result = $conn->query("SELECT * FROM $table WHERE username = '" . $username . "' AND password = '" . $password . "'");

//     if ($result->num_rows > 0) {
//         while ($row = $result->fetch_assoc()) {
//             $_SESSION["username"] = $row['username'];
//             $_SESSION["account_type"] = $row['account_type'];

//             if ($row['account_type'] == 0) {
//                 $_SESSION["citizen_id"] = $row['citizen_id'];
//             }

//             echo $row['account_type'];
//         }
//     } else {
//         echo "Error: " . $conn->error;
//     }
// }
