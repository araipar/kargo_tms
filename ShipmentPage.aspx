<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShipmentPage.aspx.cs" Inherits="kargo_tms.ShipmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="card">
        <div class="card-body">
            <div class="container float-left">
                <br />
               
                <br />
                <!-- Button trigger modal -->
    <%--            <asp:TextBox ID="driverName" runat="server" CssClass="form-control" placeholder="Driver Name"></asp:TextBox>
                <asp:TextBox ID="phoneNumber" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                <asp:TextBox ID="noIndukKtp" runat="server" CssClass="form-control" placeholder="NIK"></asp:TextBox>--%>
                <asp:DropDownList ID="ddlOrigin" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlDestination" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:TextBox ID="txtDateFrom" type="date" runat="server" autocomplete="off" CssClass="form-control"></asp:TextBox>

                <br />
                 <asp:button id="btnSubmit" runat="server" type="button" Cssclass="btn btn-success mt-2 pl-3 pr-3 float-right" text="Add" onclick="btnSubmit_Click"/>
                <br />
                <br />

               

                <asp:GridView ID="dataTable" runat="server" CssClass="table table-hover table-striped" ShowHeaderWhenEmpty="True" AllowPaging="False" AutoGenerateColumns="False" GridLines="None" >
                        <Columns>
                            <asp:BoundField DataField="shipment_id" HeaderText="ID" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="shipment_number" HeaderText="Driver Name" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="license_number" HeaderText="Phone" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="driver_name" HeaderText="ID Card" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="origin" HeaderText="License" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="destination" HeaderText="Status" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="status_desc" HeaderText="Status" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
         
                                    <asp:Button ID="btnmodalEdit" runat="server" Text="Edit" CssClass="btn btn-danger" data-toggle="modal" data-target="#modalEdit"  Width="90" />
                                </ItemTemplate>
                            </asp:TemplateField>
                     
                        </Columns>
                    </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
