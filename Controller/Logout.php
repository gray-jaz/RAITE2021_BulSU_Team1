<?php
    session_start();
    unset($_SESSION["username"]);
    unset($_SESSION["citizen_id"]);
    unset($_SESSION["account_type"]);
    session_destroy();
?>