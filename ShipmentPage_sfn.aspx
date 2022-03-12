<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShipmentPage_sfn.aspx.cs" Inherits="kargo_tms.ShipmentPage_sfn" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"></link>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Shipments Page</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
        <div class="container-fluid">
        <a class="navbar-brand" href="#">LMS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
            <a class="nav-link" href="#">Trucks</a>
            <a class="nav-link" href="#">Drivers</a>
            <a class="nav-link" href="#">Shipments</a>  
            </div>
        </div>
        </div>
    </nav>
    <div class="container">
        <div class="row mb-2">
            <div class="col-md-7"></div>
            <div class="col-md-2 text-center">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">Add Shipment</button>
            </div>
            <div class="col-md-2">
                <input type="email" class="form-control" id="shipmentSearch" placeholder="Search...">
            </div>
            <div class="col-1">
                <button type="button" class="btn btn-light">Go!</button>
            </div>
        </div>
        <div class="row card">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Shipment</th>
                        <th scope="col">License</th>
                        <th scope="col">Driver's Name</th>
                        <th scope="col">Origin</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Loading Date</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td>DO-722947</td>
                    <td>B 4922 UTT</td>
                    <td>Budi</td>
                    <td>Jakarta</td>
                    <td>Surabaya</td>
                    <td>21 Agustus 2021</td>
                    <td>Created</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Action
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#allocateModal" href="#">Allocate Shipment</a></li>
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#statusModal" href="#">Update Status</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>DO-722947</td>
                    <td>B 4922 UTT</td>
                    <td>Budi</td>
                    <td>Jakarta</td>
                    <td>Surabaya</td>
                    <td>21 Agustus 2021</td>
                    <td>Created</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Action
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#allocateModal" href="#">Allocate Shipment</a></li>
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#statusModal" href="#">Update Status</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>DO-722947</td>
                    <td>B 4922 UTT</td>
                    <td>Budi</td>
                    <td>Jakarta</td>
                    <td>Surabaya</td>
                    <td>21 Agustus 2021</td>
                    <td>Created</td>
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Action
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#allocateModal" href="#">Allocate Shipment</a></li>
                                <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#statusModal" href="#">Update Status</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
<!-- Add Modal -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="addModalLabel">Add Shipment</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form>
                <div class="row mb-3">
                    <label for="origin" class="col-sm-4 col-form-label">Origin</label>
                    <div class="col-sm-8">
                        <select class="form-select" aria-label="Default select example">
                            <option value="" selected disabled>Choose district of origin...</option>
                            <option value="1">Jakarta</option>
                            <option value="2">Semarang</option>
                            <option value="3">Surabaya</option>
                            </select>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="destination" class="col-sm-4 col-form-label">Destination</label>
                    <div class="col-sm-8">
                        <select class="form-select" aria-label="Default select example">
                            <option value="" selected disabled>Choose destination district...</option>
                            <option value="1">Jakarta</option>
                            <option value="2">Semarang</option>
                            <option value="3">Surabaya</option>
                            </select>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save</button>
        </div>
        </div>
    </div>
</div>

<!-- Allocate Modal -->
<div class="modal fade" id="allocateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="allocateModalLabel">Allocate Shipment</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form>
                <div class="row mb-3">
                    <label for="truck" class="col-sm-4 col-form-label">Truck</label>
                    <div class="col-sm-8">
                        <select class="form-select" aria-label="Default select example">
                            <option value="" selected disabled>Choose Truck...</option>
                            <option value="1">Truck 1</option>
                            <option value="2">Truck 2</option>
                            <option value="3">Truck 3</option>
                            </select>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="driver" class="col-sm-4 col-form-label">Destination</label>
                    <div class="col-sm-8">
                        <select class="form-select" aria-label="Default select example">
                            <option value="" selected disabled>Choose Driver...</option>
                            <option value="1">Driver 1</option>
                            <option value="2">Driver 2</option>
                            <option value="3">Driver 3</option>
                            </select>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Allocate</button>
        </div>
        </div>
    </div>
</div>

<!-- Update Status Modal -->
<div class="modal fade" id="statusModal" tabindex="-1" aria-labelledby="statusModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="statusModalLabel">Allocate Shipment</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form>
                <div class="row mb-3">
                    <label for="truck" class="col-sm-4 col-form-label">Status</label>
                    <div class="col-sm-8">
                        <select class="form-select" aria-label="Default select example">
                            <option value="" selected disabled>Choose Status...</option>
                            <option value="1">Ongoing to Origin</option>
                            <option value="2">At Origin</option>
                            <option value="3">Ongoing to Destination</option>
                            <option value="4">At Destination</option>
                            <option value="5">Completed</option>
                        </select>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Update Status</button>
        </div>
        </div>
    </div>
</div>

</body>
</html>