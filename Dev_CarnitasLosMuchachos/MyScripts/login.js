﻿console.log("exportaciones cambiar precios");

var app = angular.module("moduloExCambioPrecios", ['formly', 'ngAria', 'ngAnimate', 'ngMaterial']);

app.controller('controlExCambioPrecios', function ($scope, $http, $mdToast, formlyVersion, $mdDialog, $timeout, $q) {

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


            Swal.fire({
                title: '¿Desea guardar el registro?',
                showCancelButton: true,
                confirmButtonColor: '#28a745',
                cancelButtonColor: '#dc3545',
                confirmButtonText: 'Aceptar',
                cancelButtonText: `Cancelar`,
            }).then((result => {


                if (result.isConfirmed) {



                    $(".mainLoader");
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


                                        $(".mainLoader").show();


                                    }

                                }))


                                $("#btnCerrarUsuario").click();



                            }
                        }, function (error) {

                            console.log("error en agregar usuarios");
                            console.log(error)

                        });


                } else if (result.isDenied) {
                    Swal.fire('Se cancela proceso', '', 'info')
                }


            }))



        }









        $scope.limpiarFiltros = function () {


            $("#dtClientes").val("");
            $("#intPedido").val("");
            $("#intVendedor").val("");
            $("#divPedidosCancelados").hide();


        }























    });

})




