<?php
session_start();

require_once("../Database/connection.php");

$table = "vaccination";
$columns = ["category", "available_id_card", "philhealth_no", "pregnant", "breastfeeding", "drug_allergy", "food_allery", "pollen_allery", "immunodeficiency_status", "comorbidity", "diagnose_with_covid", "vaccine_name", "vaccine_first_date", "vaccine_second_date",  "citizen_id"];


if (isset($_POST["add"])) {
    $category = $_POST['category'];
    $available_id_card = $_POST['available_id_card'];
    $philhealth_no = $_POST['philhealth_no'];
    $pregnant = $_POST['pregnant'];
    $breastfeeding = $_POST['breastfeeding'];
    $drug_allergy = $_POST['drug_allergy'];
    $food_allergy = $_POST['food_allergy'];
    $pollen_allergy = $_POST['pollen_allergy'];
    $immunodeficiency_status = $_POST['immunodeficiency_status'];
    $comorbidity = $_POST['comorbidity'];
    $diagnose_with_covid = $_POST['diagnose_with_covid'];
    $vaccine_name = $_POST['vaccine_name'];
    $vaccine_first_date = $_POST['vaccine_first_date'];
    $vaccine_second_date = $_POST['vaccine_second_date'];
    $citizen_id = $_SESSION["citizen_id"];

    $values = "$category, '$available_id_card', '$philhealth_no', '$pregnant', '$breastfeeding', $drug_allergy, $food_allergy, $pollen_allergy, $immunodeficiency_status, '$comorbidity', $diagnose_with_covid, '$vaccine_name', '$vaccine_first_date', '$vaccine_second_date', '$citizen_id'";

    if($conn->query("INSERT into $table (" . implode(', ', $columns) . ") VALUES (" . $values . ")")) {
        echo "ok";
    } else {
        echo "$conn->error";
    }
    
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
