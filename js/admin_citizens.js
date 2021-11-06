$.get("../../Controller/CitizenController.php",
    function(data, status) {
        if (status == "success") {
            $("#display").html(data);
        }
    }
);