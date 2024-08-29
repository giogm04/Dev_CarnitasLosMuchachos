<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dev_CarnitasLosMuchachos.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8, width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport" />
    <title>Login</title>

    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment-with-locales.min.js"></script>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/angular-animate.min.js"></script>
    <script src="Scripts/angular-aria.min.js"></script>
    <script src="Scripts/angular-material.min.js"></script>
    <script src="Scripts/api-check.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>
    <script src="Scripts/formly.js"></script>
    <%--<script src="Scripts/jquery.filedrop.js"></script>--%>
    <link href="Content/css/Style.css" rel="stylesheet" />
    
    <script src="Scripts/master.js"></script>
    <link href="Content/icon/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    
    <link href="Content/angular-material.min.css" rel="stylesheet" />
    <link href="Content/angular-material.layouts.min.css" rel="stylesheet" />
    <link href="Content/angular-material.layout-attributes.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">


    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            

<div class="container-fluid" ng-app="" ng-controller="" ng-cloak="">






<div class="wrapper bg-white body">

             <h1 class="text-center">Bienvenido</h1>








    <div class="row justify-content-center">
        
            <div class="col-md-6">
                <div class="form-group">
                    <label class="small mb-1" for="inUsuario"><b>Usario</b></label>               
                    <input type="text" id="inUsuario" class="input-container" placeholder="Escribe tu usuario"/>
                </div>
            </div>

    </div>


    <div class="row justify-content-center">

            <div class="col-md-6">
                <div class="form-group">
                    <label class="small mb-1" for="inPassword"><b>Contraseña</b></label>
                    <input type="password" id="inPassword" class="input-container" placeholder="Escribe tu contraseña"/>
                </div>
            </div>
    
    </div>

        <div class="panel-footer d-flex flex-column flex-md-row align-items-center justify-content-center justify-content-evenly mt-4 mb-0">
            <button type="button" class="btn btn-secondary mb-2 mb-md-0"><i class="fa fa-exclamation-circle"></i> ¿Olvidaste la contraseña?</button>
            <button type="button" class="btn btn-primary mb-2 mb-md-0">Ingresar <i class="fa fa-sign-in"></i></button>
        </div>


    <div class="form-group d-flex flex-column flex-md-row align-items-center mt-4 mb-0" style="justify-content:center !important;">
    <button type="button" class="btn btn-success mb-2 mb-md-0" data-bs-toggle="modal" data-bs-target="#modAgregarUsuarios"><i class="fa fa-user-plus"></i> Agregar usuarios</button>
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
                    <input type="text" id="inNousuario" class="input-container" placeholder="Escribe tu nombre de usuario" required="required"/>
                </div>
            </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label class="small mb-1" for="slcMesas"><b>Contraseña</b></label>
                    <input type="password" id="inPassword" class="input-container" placeholder="Escribe tu contraseña" />
                </div>
            </div>




         </div>





        </div>  

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="fa fa-ban"></i> Cancelar</button>
        <button type="button" class="btn btn-success"><i class="fa fa-save"></i> Guardar</button>
      </div>
        
    
        </div>

    </div>

  </div>






<div class="loader-container" style="display:none;">
    <div class="loader"></div>
</div>








</div>


        </div>
    </form>



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css" />  
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>



    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/datetime/1.5.2/js/dataTables.dateTime.min.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.2/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.2/js/select.dataTables.js"></script>



</body>
</html>
