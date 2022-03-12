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

                            <asp:HiddenField ID="hdnRejectID" runat="server" />
               <asp:HiddenField ID="hdnRejectEmail" runat="server" />

                <asp:GridView ID="dataTable" runat="server" CssClass="table table-hover table-striped" ShowHeaderWhenEmpty="True" AllowPaging="False" AutoGenerateColumns="False" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="Truck_ID" HeaderText="ID" HeaderStyle-CssClass="bg-success text-white" />
                        <asp:BoundField DataField="license_number" HeaderText="License Number" HeaderStyle-CssClass="bg-success text-white" />
                        <asp:BoundField DataField="type_desc" HeaderText="Type" HeaderStyle-CssClass="bg-success text-white" />
                        <asp:BoundField DataField="Plate_type" HeaderText="Plate Type" HeaderStyle-CssClass="bg-success text-white" />
                        <asp:BoundField DataField="Production_year" HeaderText="Production Year" HeaderStyle-CssClass="bg-success text-white" />
                        <asp:BoundField DataField="status_desc" HeaderText="Status" HeaderStyle-CssClass="bg-success text-white" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
         
                                    <asp:Button ID="btnmodalEdit" runat="server" Text="Edit" CssClass="btn btn-danger" data-toggle="modal" OnClientClick='<%#  "rejectID(\""+ Eval("Truck_ID") +"\", \""+ Eval("license_number") +"\"); return false;" %>'  Width="90" />
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



    </script>

    

</asp:Content>
