<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="menuPrincipal.aspx.cs" Inherits="Dev_CarnitasLosMuchachos.menuPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<nav class="navbar navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-start text-bg-dark" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Menu</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>




<div id="divCardInfo" class="card-body small">
    <div class="row justify-content-center">
        <div class="col-sm-2 mb-3 mb-sm-0" data-bs-toggle="modal" data-bs-target="#modAgregarOrden">
            <div class="card text-bg-primary mb-3 btn btn-primary" style="max-width: 18rem;">
                <div class="card-header"><b>Agregar ordenes</b></div>
                <div class="card-body">
                    <i class="fa fa-file-text card-title"></i>
                </div>
            </div>
        </div>
        <div class="col-sm-2 mb-3 mb-sm-0" data-bs-toggle="modal" data-bs-target="#modEnProceso">
            <div class="card text-bg-success mb-3 btn" style="max-width: 18rem;">
                <div class="card-header"><b>Ordenes en proceso</b></div>
                <div class="card-body">
                    <h5 class="card-title">1</h5>
                </div>
            </div>
        </div>
        <div class="col-sm-2 mb-3 mb-sm-0">
            <div class="card text-bg-danger mb-3 btn" style="max-width: 18rem;">
                <div class="card-header"><b>Ordenes pendientes</b></div>
                <div class="card-body">
                    <h5 class="card-title">5</h5>
                </div>
            </div>
        </div>

        

    </div>
</div>




<div id="modAgregarOrden" class="modal fade" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"><b>Agregar</b></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


         <div class="row">


            <div class="col-md-4">
                <div class="form-group">
                    <label class="small mb-1" for="slcMesas"><b>No. de mesa</b></label>
                    <select id="slcMesas" class="input-container obligatorio" required>

                        <option value="">Selecciona...</option>
                        <option ng-model="slcMesas" value="{{x.COLABORADORID}}" ng-repeat="x in slcMesas">1</option>

                    </select>
                </div>
            </div>


            <div class="col-md-4">
                <div class="form-group">
                    <label class="small mb-1" for="slcMesas"><b>Tacos</b></label>
                    <input type="text" class="input-container" placeholder="Escribe la orden">
                </div>
            </div>




         </div>





        </div>  

      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success">Guardar</button>
      </div>
        
    
        </div>

    </div>

  </div>




<div id="modEnProceso" class="modal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <i class="fas fa-file-alt"></i>
        <h5 class="modal-title">Ordenes en proceso</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


<table id="example" class="table table-striped" style="width:100%">
        <thead>

            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>

        </thead>

        <tbody>

            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011-04-25</td>
                <td>$320,800</td>
            </tr>

        </tbody>

    </table>


      </div>

    </div>
  </div>
</div>




</asp:Content>
