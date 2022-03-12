using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kargo_tms
{
    public partial class ShipmentPage : System.Web.UI.Page
    {
        DatabaseGetSet queryData = new DatabaseGetSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadDdls();
                loadDriver();
            }

        }

        private void loadDdls()
        {
            ddlDestination.Items.Clear();
            ddlOrigin.Items.Clear();


            DataTable dt = queryData.DbQuerySelect("select * from tbl_district");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlOrigin.Items.Add(new ListItem(dt.Rows[i]["district_name"].ToString(), dt.Rows[i]["district_id"].ToString()));
                }

            }

            dt = queryData.DbQuerySelect("select * from tbl_district_goal");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlDestination.Items.Add(new ListItem(dt.Rows[i]["district_name"].ToString(), dt.Rows[i]["district_id"].ToString()));

                }

            }
        }
        private void loadDriver()
        {
            var dt = new DataTable();

            string sb = "   select tbl_shipment.shipment_id,tbl_shipment.shipment_number,tbl_shipment.loading_date,tbl_trucks.license_number,tbl_driver.driver_name ,tbl_district.district_name as origin,tbl_district_goal.district_name as Destination, tbl_shipment_status.status_desc from tbl_shipment left join tbl_trucks" +
"   on tbl_shipment.truck_id = tbl_trucks.truck_id left join tbl_driver on tbl_shipment.driver_id = tbl_driver.driver_id left join tbl_district on tbl_shipment.origin =tbl_district.district_id" +
"   left join tbl_district_goal on tbl_shipment.destination = tbl_district_goal.district_id left join tbl_shipment_status on tbl_shipment.status = tbl_shipment_status.shipment_status_id";


            dt = queryData.DbQuerySelect(sb);

            dataTable.DataSource = dt;
            dataTable.DataBind();
            if (dataTable.Rows.Count > 0)
            {
                //Adds THEAD And TBODY Section.
                dataTable.HeaderRow.TableSection = TableRowSection.TableHeader;

                //Adds TH element in Header Row.  
                dataTable.UseAccessibleHeader = true;

                //Adds TFOOT section. 
                dataTable.FooterRow.TableSection = TableRowSection.TableFooter;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string sb = "INSERT INTO [dbo].[tbl_shipment]" +
          "           ([truck_id]" +
          "           ,[driver_id]" +
          "           ,[origin]" +
          "           ,[destination]" +
          "           ,[loading_date]" +
          "           ,[status])" +
          "     VALUES" +
          "           ('0'" +
          "           ,'0'" +
          "           ,'"+ddlOrigin.SelectedValue+"'" +
          "           ,'"+ddlDestination.SelectedValue+"'" +
          "           ,getDate()" +
          "           ,'1')";


            if (!queryData.DbQueryInsert(sb))
            {
                Response.Write("<script language=\"javascript\">alert('User Insert Gagal (Duplikat)');</script>");
                return;

            }
            else
            {
                Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
            }



        }


        //protected void btnEdit_Click(object sender, EventArgs e)
        //{

        //    string sb = "INSERT INTO [dbo].[tbl_trucks]" +
        //"           ([license_number]" +
        //"           ,[truck_type]" +
        //"           ,[plate_type]" +
        //"           ,[production_year]" +
        //"           ,[status]" +
        //"           ,[kir])" +
        //"     VALUES" +
        //"           ('" + licenseNumber.Text + "'" +
        //"           ,'" + ddlType.SelectedValue + "'" +
        //"           ,'" + ddlLicenseType.SelectedValue + "'" +
        //"           ,'" + prodYear.Text + "'" +
        //"           ,1" +
        //"           ,1)";

        //    if (!queryData.DbQueryInsert(sb))
        //    {
        //        Response.Write("<script language=\"javascript\">alert('User Insert Gagal (Duplikat)');</script>");
        //        return;

        //    }
        //    else
        //    {
        //        Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        //    }



        //}
    }
}