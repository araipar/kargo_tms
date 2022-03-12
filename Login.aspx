<!-- <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="kargo_tms.Login" %> -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"></link>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <title>Login Page</title>
</head>
<body style="background-color: #3E497A;">
    <form id="form1" runat="server">
        <section class="h-100 gradient-form" style="background-color: #3E497A;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card" style="border-radius: 1rem; background-color: #F1D00A;">
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="card-body p-5">
                                    <div class="mb-md-5 mt-md-4 pb-5">
                                        <h2 class="fw-bold mb-2 text-uppercase text-center">Login Page</h2>
                                        <p class="text-center">Please choose your role</p>
                                        <div class="form-check mb-2">
                                            
                                            <asp:RadioButton ID="rdTransporter" runat="server" Text="Transporter" GroupName="role" />
                                            <asp:RadioButton ID="rdShipper" runat="server" Text="Shipper" GroupName="role" />

               
                                        </div>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
