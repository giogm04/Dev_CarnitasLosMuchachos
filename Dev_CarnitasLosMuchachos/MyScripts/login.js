console.log("login usuarios");

var app = angular.module("moduloLoginUsuarios", ['formly', 'ngAria', 'ngAnimate', 'ngMaterial']);

app.controller('controlLoginUsuarios', function ($scope, $http, $mdToast, formlyVersion, $mdDialog, $timeout, $q) {

    $(document).ready(function () {



        //$scope.ObtenerUserId = function () {

        //    var arr = window.parent.document.getElementsByTagName("iframe");
        //    /*console.log(arr)*/
        //    var usuario = "";
        //    $.each(arr, function (i, fr) {

        //        if ($(fr).prop("id") === "mainFrame") {
        //            //console.log($(fr).prop("src").split("?")[1].split("=")[1])
        //            usuario = $(fr).prop("src").split("?")[1].split("&")[0].split("=")[1]
        //            // $(fr).prop("src", "../../Dev_DashboardClientes/dashboard.aspx?userid=" + usuario)
        //        }
        //    });


        //    return usuario;
        //    /*console.log(usuario);*/

        //}





        $scope.agregarUsuarios = function () {

            /*console.log("guardar usuarios");*/

            /*var idUser = $scope.ObtenerUserId();*/

            if ($scope.datosObligarios() == true) {


                Swal.fire({
                    title: '¿Desea guardar el registro?',
                    showCancelButton: true,
                    confirmButtonColor: '#28a745',
                    cancelButtonColor: '#dc3545',
                    confirmButtonText: 'Aceptar',
                    cancelButtonText: `Cancelar`,
                }).then((result => {


                    if (result.isConfirmed) {



                        $(".loader-container").show();
                        var obj = new Object();
                        obj.noUsuario = $("#inNousuario").val(),
                            obj.password = $("#inPassword").val();



                        $http({
                            method: "POST"
                            , async: true
                            , url: window.location.pathname + "/agregarUsuarios"
                            , data: obj
                        }).
                            then(function
                                (success) {
                                data = success.data;

                                var mensaje = $.parseJSON(data.d);

                                if (data == "Ya existe el registro") {
                                    Swal.fire('Existen usuarios con estos datos', '', 'info')
                                } else if (data == 0) {
                                    Swal.fire('Ocurrio un problema', '', 'info')
                                } else {


                                    Swal.fire({
                                        icon: 'success',
                                        confirmButtonColor: '#28a745',
                                        confirmButtonText: 'Aceptar',
                                        title: 'Datos guardados',
                                        text: '' + mensaje + ''
                                    }).then((result => {

                                        if (result.isConfirmed) {





                                        }

                                    }))


                                    $("#btnCerrarUsuario").click();
                                    $(".loader-container").hide();


                                }
                            }, function (error) {

                                console.log("error en agregar usuarios");
                                console.log(error)

                            });


                    } else if (result.isDenied) {
                        Swal.fire('Se cancela proceso', '', 'info')
                    }


                }))



            } else {



                const Toast = Swal.mixin({
                    toast: true,
                    position: "top",
                    showConfirmButton: false,
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                    }
                });
                Toast.fire({
                    icon: "warning",
                    iconColor: "red",
                    title: "Faltas datos por capturar"
                });



            }





        }




        $scope.datosObligarios = function () {
            var exito = true;
            var controlesObligatorio = $(".obligatorio");
            var ncontroles = controlesObligatorio.length;
            for (var i = 0; i < ncontroles; i++) {
                if (controlesObligatorio[i].value == "") {
                    exito = false;
                    controlesObligatorio[i].parentNode.classList.add("was-validated1");
                }
                else {
                    $(controlesObligatorio[i]).parent().removeClass("was-validated1").addClass("is-valid1");
                
                }
            }

            return exito;
        }




        $scope.limpiarCamposAgregaUsuario = function () {


            $("#inNousuario").val("");
            $("#inPasswordAgregaUsuario").val("");

            $(".was-validated1").removeClass("was-validated1");

        }



        $(document).on("click", "#togglePassword", function (e) {
            var passwordInput = $("#inPasswordAgregaUsuario");
            var icon = this;

            // Obtener el elemento de entrada directamente y verificar su tipo
            if (passwordInput.attr("type") === "password") {
                passwordInput.attr("type", "text");
                $(icon).removeClass("fa-eye").addClass("fa-eye-slash");
            } else {
                passwordInput.attr("type", "password");
                $(icon).removeClass("fa-eye-slash").addClass("fa-eye");
            }
        });



















    });

})




