<!-- <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DriversPage.aspx.cs" Inherits="kargo_tms.DriversPage" %> -->
<!-- <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content> -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"></link>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <title>Drivers Page</title>
    </head>
    <body style="background-color:  #21325E;">
        <header>
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #F1D00A;">
              <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarExample01">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active">
                      <a class="fw-bold nav-link" aria-current="page" href="#">LMS</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#ship">Shipments</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Trucks</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Drivers</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
        </header>

        <section class="h-100 gradient-form">
            <div style="padding: 15px;">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addDriver">Add New Driver</button>
            </div>
            <div class="container py-5 h-100">
                <div class="row">
                <div class="col-12">
                    <table class="table table-hover" style="background-color: #6d78a6; color:aliceblue;">
                      <thead>
                        <tr>
                          <th scope="col">Driver Name</th>
                          <th scope="col">Phone Number</th>
                          <th scope="col">Created at</th>
                          <th scope="col">Status</th>
                          <th scope="col">Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">Jack</th>
                          <td>081230862555</td>
                          <td>12-08-2021</td>
                          <td>Active</td>
                          <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateDriver">Update</button>
                            <button type="button" class="btn btn-success">Delete</button>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">Nathan</th>
                          <td>081230862555</td>
                          <td>12-08-2021</td>
                          <td>Active</td>
                          <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateDriver">Update</button>
                            <button type="button" class="btn btn-success">Delete</button>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">Joe</th>
                          <td>081230862555</td>
                          <td>12-08-2021</td>
                          <td>Inactive</td>
                          <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateDriver">Update</button>
                            <button type="button" class="btn btn-success">Delete</button>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
            </div>
        </section>

        
        <!-- Add driver -->
        <div class="modal fade" id="addDriver" tabindex="-1" aria-labelledby="addDriverLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addDriverLabel">Add Driver</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row mb-3">
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="driver_name">Driver Name</label>
                                <input type="name" id="driver_name" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="friver_phone">Phone Number</label>
                                <input type="phone" id="phone_number" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="create_at">Created At</label>
                                <input type="create" id="created_at" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="driver_status">Status</label>
                                <input type="status" id="status" class="form-control validate"></input>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Add Data</button>
                </div>
                </div>
            </div>
        </div>

        <!-- Update Driver -->
        <div class="modal fade" id="updateDriver" tabindex="-1" aria-labelledby="updateDriverLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateDriverLabel">Update Driver</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row mb-3">
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="driver_name">Driver Name</label>
                                <input type="name" id="driver_name" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="friver_phone">Phone Number</label>
                                <input type="phone" id="phone_number" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="create_at">Created At</label>
                                <input type="create" id="created_at" class="form-control validate"></input>
                            </div>
                            <div class="md-form mb-3">
                                <label data-error="wrong" data-success="right" for="driver_status">Status</label>
                                <input type="status" id="status" class="form-control validate"></input>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Update</button>
                </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
