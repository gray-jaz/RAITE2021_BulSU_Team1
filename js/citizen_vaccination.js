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

        if (category == "" || available_id_card == "" || category == "" || philhealth_no == "" || pregnant == "" || breastfeeding == "" || drug_allergy == "" || food_allergy == "" || pollen_allergy == "" || immunodeficiency_status == "" || comorbidity == "" || diagnose_with_covid == "") {
            Swal.fire({
                icon: 'error',
                title: 'Please enter all the fields.'
            })
        } else {


            console.log("HUYHUY");

            var vaccine_name = "";

            var today = new Date();
            var vaccine_first_date = new Date();
            var vaccine_second_date = new Date();

            vaccine_first_date = vaccine_first_date.setDate(today.getDate() + 7);
            vaccine_first_date = new Date(vaccine_first_date);

            console.log("first date" + vaccine_first_date);

            if (pregnant == "1") {
                vaccine_name = "Sinovac-CoronaVac";
            } else if (category == "3") {
                vaccine_name = "Johnson & Johnson";
            } else {
                //randomize for now!!! ONLY DON'T DO THIS just for prototype purposes
                vaccine_name = randomize();
                console.log("VACCINE NAME TEST = " + vaccine_name);
            }
            console.log("VACCINE NAME TEST = " + vaccine_name);
            var second_dose_text = "";


            switch (vaccine_name) {
                case "BioNTech, Pfizer":
                    vaccine_second_date.setDate(today.getDate() + 7 + 21);
                    second_dose_text = "<strong>Second dose</strong> is on " + vaccine_second_date.toDateString();
                    break;
                case "Sinovac-CoronaVac":
                    vaccine_second_date.setDate(today.getDate() + 7 + 28);
                    second_dose_text = "<strong>Second dose</strong> is on " + vaccine_second_date.toDateString();
                    break;
                case "Johnson & Johnson":
                    vaccine_second_date.setDate(null);
                    second_dose_text = "This is only one dose.";
                    break;
                case "Moderna":
                    vaccine_second_date.setDate(today.getDate() + 7 + 42);
                    second_dose_text = "<strong>Second dose</strong> is on " + vaccine_second_date.toDateString();
                    break;
                case "Oxford, AstraZeneca":
                    vaccine_second_date.setDate(today.getDate() + 7 + 56);
                    second_dose_text = "<strong>Second dose</strong> is on " + vaccine_second_date.toDateString();
                    break;
            }

            vaccine_second_date = new Date(vaccine_second_date * 1000);

            // var info = 'Your vaccine is ' + vaccine_name + ' and your first dose is on: ' + vaccine_first_date + (vaccine_second_date === null) ? '.' : ', while your second dose is on ' + vaccine_second_date;


            $.post("../../Controller/VaccinationController.php", {
                    category: category,
                    available_id_card: available_id_card,
                    philhealth_no: philhealth_no,
                    pregnant: pregnant,
                    breastfeeding: breastfeeding,
                    drug_allergy: drug_allergy,
                    food_allergy: food_allergy,
                    pollen_allergy: pollen_allergy,
                    immunodeficiency_status: immunodeficiency_status,
                    comorbidity: comorbidity,
                    diagnose_with_covid: diagnose_with_covid,
                    immunodeficiency_status: immunodeficiency_status,
                    comorbidity: comorbidity,
                    diagnose_with_covid: diagnose_with_covid,
                    vaccine_name: vaccine_name,
                    vaccine_first_date: vaccine_first_date,
                    vaccine_second_date: vaccine_second_date,
                    add: 'add'
                },
                function(data, status) {
                    if (status == "success") {
                        console.log("success test");
                        if (data == "ok") {
                            Swal.fire({
                                icon: 'success',
                                title: 'You have successfully been scheduled for vaccination!',
                                html: 'Your <strong>vaccine</strong> is ' + vaccine_name + '. <strong>First dose</strong> is on: ' + vaccine_first_date.toDateString() + '. ' + second_dose_text
                            }).then((result) => {
                                // window.location.href = "admin/index.html";
                            })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'You encountered an error, please try again later or contact your RHU for assistance.'
                            })

                            console.log(data);
                        }
                    }
                }
            );
        }
    });

});


function randomize() {
    var names = ["BioNTech, Pfizer", "Sinovac-CoronaVac", "Johnson & Johnson", "Moderna", "Oxford, AstraZeneca"];
    index = Math.floor(Math.random() * names.length);

    return names[index];
}