<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dev_CarnitasLosMuchachos.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Login</title>

    <!-- Scripts and Stylesheets -->
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment-with-locales.min.js"></script>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/angular-animate.min.js"></script>
    <script src="Scripts/angular-aria.min.js"></script>
    <script src="Scripts/angular-material.min.js"></script>
    <script src="Scripts/api-check.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>
    <script src="Scripts/formly.js"></script>
    <link href="Content/css/Style.css" rel="stylesheet" />
    <script src="Scripts/master.js"></script>
    <link href="Content/icon/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/angular-material.min.css" rel="stylesheet" />
    <link href="Content/angular-material.layouts.min.css" rel="stylesheet" />
    <link href="Content/angular-material.layout-attributes.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="MyScripts/login.js"></script>
</head>
<body class="body">
    <!-- Single server form -->
    <form id="form1" runat="server">
        <div class="container-fluid" ng-app="moduloLoginUsuarios" ng-controller="controlLoginUsuarios" ng-cloak>
            <div class="wrapper bg-white">
                <h1 class="text-center">Bienvenido</h1>

                <!-- Login Inputs -->
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="small mb-1" for="inUsuario"><b>Usuario</b></label>
                            <input type="text" id="inUsuario" class="input-container" placeholder="Escribe tu usuario" required="required"/>
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="small mb-1" for="inPassword"><b>Contraseña</b></label>
                            <input type="password" id="inPasswordEntrar" class="input-container" placeholder="Escribe tu contraseña" autocomplete="off" required="required" />
                        </div>
                    </div>
                </div>

                <!-- Login Buttons -->
                <div class="panel-footer d-flex flex-column flex-md-row align-items-center justify-content-center justify-content-evenly mt-4 mb-0">
                    <button type="button" class="btn btn-secondary mb-2 mb-md-0"><i class="fa fa-exclamation-circle"></i> ¿Olvidaste la contraseña?</button>
                    <button type="submit" class="btn btn-primary mb-2 mb-md-0">Ingresar <i class="fa fa-sign-in"></i></button>
                </div>

                <div class="form-group d-flex flex-column flex-md-row align-items-center mt-4 mb-0" style="justify-content:center !important;">
                <button type="button" class="btn btn-success mb-2 mb-md-0" data-bs-toggle="modal" data-bs-target="#modAgregarUsuarios" ng-click="limpiarCamposAgregaUsuario();"><i class="fa fa-user-plus"></i> Agregar usuarios</button>
                </div>

            </div>






    <div id="modAgregarUsuarios" class="modal fade" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><b>Agregar usuarios</b></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" id="btnCerrarUsuario" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="small mb-1" for="inNousuario"><b>Nombre de usuario</b></label>
                                <input type="text" id="inNousuario" class="input-container obligatorio" placeholder="Escribe tu nombre de usuario" required="required" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group input-container">
                                <label class="small mb-1" for="slcMesas"><b>Contraseña</b></label>
                                <input type="password" id="inPasswordAgregaUsuario" class="obligatorio" placeholder="Escribe tu contraseña" autocomplete="off" required="required" />
                                <i id="togglePassword" class="fa fa-eye"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="fa fa-ban"></i> Cancelar</button>
                    <button type="button" class="btn btn-success" ng-click="agregarUsuarios();"><i class="fa fa-save"></i> Guardar</button>
                </div>
            </div>
        </div>
    </div>









        </div>
    </form>



    
    <!-- Load external scripts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</body>
</html>
