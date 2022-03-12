<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DriversPage.aspx.cs" Inherits="kargo_tms.DriversPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="card">
        <div class="card-body">
            <div class="container float-left">
                <br />
               
                <br />
                <!-- Button trigger modal -->
                <asp:TextBox ID="driverName" runat="server" CssClass="form-control" placeholder="Driver Name"></asp:TextBox>
                <asp:TextBox ID="phoneNumber" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                <asp:TextBox ID="noIndukKtp" runat="server" CssClass="form-control" placeholder="NIK"></asp:TextBox>
               <%-- <asp:DropDownList ID="ddlLicenseType" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>
                <asp:TextBox ID="prodYear" runat="server" CssClass="form-control" placeholder="Production Year" type="Number"></asp:TextBox>--%>

                <br />
                 <asp:button id="btnSubmit" runat="server" type="button" Cssclass="btn btn-success mt-2 pl-3 pr-3 float-right" text="Add" onclick="btnSubmit_Click"/>
                <br />
                <br />

                                       <asp:HiddenField ID="hdnRejectID" runat="server" />
               <asp:HiddenField ID="hdnRejectEmail" runat="server" />

                <asp:GridView ID="dataTable" runat="server" CssClass="table table-hover table-striped" ShowHeaderWhenEmpty="True" AllowPaging="False" AutoGenerateColumns="False" GridLines="None" >
                        <Columns>
                            <asp:BoundField DataField="driver_id" HeaderText="ID" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="driver_name" HeaderText="Driver Name" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="Phone_number" HeaderText="Phone" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="id_card" HeaderText="ID Card" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="driver_license" HeaderText="License" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:BoundField DataField="status_desc" HeaderText="Status" HeaderStyle-CssClass="bg-success text-white" />
                                <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
         
                                    <asp:Button ID="btnmodalEdit" runat="server" Text="Edit" CssClass="btn btn-danger" data-toggle="modal" OnClientClick='<%#  "rejectID(\""+ Eval("driver_id") +"\", \""+ Eval("driver_name") +"\"); return false;" %>'  Width="90" />
                                </ItemTemplate>
                            </asp:TemplateField>
                     
                        </Columns>
                    </asp:GridView>




            </div>
        </div>
    </div>
    
             <div id ="modal"  style="display :none;">

                      <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control select2" Style="width: 100%;">
                </asp:DropDownList>

                      <asp:button id="btn_update" runat="server" type="button" Cssclass="btn btn-success mt-2 pl-3 pr-3 float-right" text="Update" onclick="btnUpdate_Click"/>
                </div>


<%--    <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        </div>--%>


    <script>
            $(function () {
                $("#<%= dataTable.ClientID %>").dataTable();


            });

        function rejectID(shipment_id, shipment_number) {

            $("#<%= hdnRejectID.ClientID%>").val(shipment_id);
            $("#<%= hdnRejectEmail.ClientID%>").val(shipment_number);

            $("#modal").css("display", "block");

            console.log(shipment_id);
            console.log(shipment_number);
        }


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
