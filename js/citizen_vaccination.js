$(document).ready(function() {

    $("#btn-submit").click(function() {

        var category = $("#category").find(":selected").text();
        var available_id_card = $('#category').find(":selected").text();
        var philhealth_no = $("#philhealth_no").val().trim();
        var pregnant = $("input[name='pregnant']:checked").val();
        var breastfeeding = $("input[name='breastfeeding']:checked").val();
        var drug_allergy = $("input[name='drug_allergy']:checked").val();
        var food_allergy = $("input[name='food_allergy']:checked").val();
        var pollen_allergy = $("input[name='pollen_allergy']:checked").val();
        var immunodeficiency_status = $("input[name='immunodeficiency_status']:checked").val();
        var comorbidity = $("#comorbidity").val().trim();
        var diagnose_with_covid = $("input[name='diagnose_with_covid']:checked").val();



























        if (username == "" || password == "") {
            Swal.fire({
                icon: 'error',
                title: 'Please enter all the fields.'
            })
        } else {
            $.post("../Controller/UserController.php", {
                    username: username,
                    password: password
                },
                function(data, status) {
                    if (status == "success") {
                        console.log("success test");
                        if (data == 1) {
                            Swal.fire({
                                icon: 'success',
                                title: 'You have successfully login admin!'
                            }).then((result) => {
                                window.location.href = "admin/index.html";
                            })
                        } else if (data == 0) {
                            Swal.fire({
                                icon: 'success',
                                title: 'You have successfully login citizen!'
                            }).then((result) => {
                                window.location.href = "citizen/index.html";
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Your username or password might be incorrect.'
                            })

                            console.log(data);
                        }
                    }
                }
            );
        }
    });

});