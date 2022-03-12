<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="kargo_tms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div class="vh-100 w-100 pt-5" style="position: fixed;">
            <div class="container">
     
                <div class="card card-login mx-auto mt-5 border-0 shadow">
                    <div class="card-header text-center bg-epm-green01 text-white">
                        Silahkan Pilih Role anda :

                        <asp:RadioButton ID="rdTransporter" runat="server" Text="Transporter" GroupName="role" />  
                        <asp:RadioButton ID="rdShipper" runat="server" Text="Shipper" GroupName="role" />  
      

                    </div>

                    <div class="card-body">
            
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </div>
        </div>


    </form>

        </center>
</body>
</html>
