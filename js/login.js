$(document).ready(function() {

    $("#btn-submit").click(function() {
        var username = $("#username").val().trim();
        var password = $("#password").val().trim();

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