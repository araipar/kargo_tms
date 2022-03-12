<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrucksPage.aspx.cs" Inherits="kargo_tms.TrucksPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card">
        <div class="card-body">
            <div class="container float-left">
                <br />
               
                <br />
                <!-- Button trigger modal -->
                <asp:TextBox ID="licenseNumber" runat="server" CssClass="form-control" placeholder="License Number"></asp:TextBox>
                <asp:DropDownList ID="ddlLicenseType" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:TextBox ID="prodYear" runat="server" CssClass="form-control" placeholder="Production Year" type="Number"></asp:TextBox>

                <br />
                 <asp:button id="btnSubmit" runat="server" type="button" Cssclass="btn btn-success mt-2 pl-3 pr-3 float-right" text="Add" onclick="btnSubmit_Click"/>
                <br />
                <br />

               

                <asp:GridView ID="dataTable" runat="server" CssClass="table table-hover table-striped" ShowHeaderWhenEmpty="True" AllowPaging="False" AutoGenerateColumns="False" GridLines="None" >
                        <Columns>
                            <asp:BoundField DataField="Truck_ID" HeaderText="ID" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="license_number" HeaderText="License Number" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="type_desc" HeaderText="Type" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="Plate_type" HeaderText="Plate Type" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="Production_year" HeaderText="Production Year" HeaderStyle-CssClass="bg-success text-white" />
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



    <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalRejectLabel">Reject</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:HiddenField ID="hdnRejectID" runat="server" />
                        <asp:HiddenField ID="hdnRejectEmail" runat="server" />
                        <span>Reject Reason</span><br />
                        <asp:TextBox ID="txtRejectReason" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnReject" runat="server" OnClick="btnEdit_Click" CssClass="btn btn-danger" Text="Reject" />
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


    <script>
            $(function () {
                $("#<%= dataTable.ClientID %>").dataTable();


             });

   <%--         function editHazard(Channel_Code, Description, CIRCULATE, LICENSE, HAZARD_CLASS) {
                $("#<%= ddlChannel_Edit.ClientID %>").val(Channel_Code.split(",")).change();
                $("#<%= hdnChannel_Edit.ClientID %>").val(Channel_Code);
                $("#<%= ddlHazard_Edit.ClientID %>").val(HAZARD_CLASS.split(",")).change();
                $("#<%= hdnHazard_Edit.ClientID %>").val(HAZARD_CLASS);
                $("#<%= ddlCirculate_Edit.ClientID %>").val(CIRCULATE.split(",")).change();
                $("#<%= ddlLicense_Edit.ClientID %>").val(LICENSE.split(",")).change();
            }--%>



    </script>
</asp:Content>
