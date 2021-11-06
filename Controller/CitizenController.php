<?php
session_start();

require_once ("../Database/connection.php");

$table = "citizen";
$columns = ["id", "fname", "mname", "lname", "house_address", "barangay", "municipality", "province", "sex", "birthdate", "contact_no", "email", "vaccination_status", "covid_status", "covid_status_reported", "quarantine_end_date"];

//login
if (isset($_GET)) {
    
    $result = $conn->query("SELECT * FROM $table");

    if($result->num_rows > 0) {
        
        echo "<table class='table-data'>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Sex</th>
                <th>Birthdate</th>
                <th>Contact No.</th>
                <th>Email</th>
                <th>Vaccination Status</th>
                <th>Covid Status</th>
                <th>Covid Status Reported</th>
                <th>Quarantined End Date</th>
            </tr>";
        
        while ($row = $result->fetch_assoc()) {

            $vax_status = $row['vaccination_status'] == 1 ? "Vaccinated" : "Not vaccinated";
            $vax_status = $row['covid_status'] == 1 ? "Vaccinated" : "Not vaccinated";
            $covid_status = "";

            switch($row['covid_status']) {
                case 1:
                    $covid_status = "Suspected";
                    break;
                    case 2:
                        $covid_status = "Quarantined but not confirmed";
                        break;
                        case 3:
                            $covid_status = "Quarantined and positive";
                            break;
                            case 0:
                                $covid_status = "Good";
                                break;
            }

            echo "<tr>
                <td>".$row['id']."</td>
                <td>".$row['fname'] . " " . $row['mname'] . " " . $row['lname']."</td>
                <td>".$row['house_address']. $row['barangay'] . $row['municipality'] . $row['province'] . "</td>
                <td>".$row['sex']."</td>
                <td>".$row['birthdate']."</td>
                <td>".$row['contact_no']."</td>
                <td>".$row['email']."</td>
                <td>".$vax_status."</td>
                <td>".$covid_status."</td>
                <td>".$row['covid_status_reported']."</td>
                <td>".$row['quarantine_end_date']."</td>
            </tr>";
        }

        echo "</table>";
    } else {
        // echo "Error: " . $conn->error;
    }

}