<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dev_CarnitasLosMuchachos.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div class="container-fluid" ng-app="" ng-controller="" ng-cloak="">



<div class="wrapper bg-white">



     <h1 class="text-center">Bienvenido</h1>





    <div class="row justify-content-center">
        
            <div class="col-md-6">
                <div class="form-group">
                    <label class="small mb-1" for="inUsuario"><b>Usario</b></label>               
                    <input type="text" id="inUsuario" class="input-container" placeholder="Escribe tu usuario">
                </div>
            </div>

    </div>


    <div class="row justify-content-center">

            <div class="col-md-6">
                <div class="form-group">
                    <label class="small mb-1" for="inPassword"><b>Contraseña</b></label>
                    <input type="password" id="inPassword" class="input-container" placeholder="Escribe tu contraseña">
                </div>
            </div>
    
    </div>

    <button type="button" class="btn btn-primary">Entrar</button>

</div>




</div>



</asp:Content>