using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kargo_tms
{
    public partial class DriversPage : System.Web.UI.Page
    {

            DatabaseGetSet queryData = new DatabaseGetSet();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!Page.IsPostBack)
                {
                    //loadDdls();
                    loadDriver();
                }

            }

            //private void loadDdls()
            //{
            //    ddlType.Items.Clear();
            //    ddlLicenseType.Items.Clear();

            //    ddlLicenseType.Items.Add(new ListItem("Black", "Black"));
            //    ddlLicenseType.Items.Add(new ListItem("Yellow", "Yellow"));



            //    DataTable dt = queryData.DbQuerySelect("select * from tbl_truck_type");
            //    if (dt.Rows.Count > 0)
            //    {
            //        for (int i = 0; i < dt.Rows.Count; i++)
            //        {
            //            ddlType.Items.Add(new ListItem(dt.Rows[i]["type_desc"].ToString(), dt.Rows[i]["truck_type_id"].ToString()));
            //        }
            //    }
            //}

            private void loadDriver()
            {
                var dt = new DataTable();
                dt = queryData.DbQuerySelect("    select td.* , tds.status_desc from tbl_driver td,tbl_driver_status tds where td.status = tds.driver_status_id");

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

            string sb = "INSERT INTO [dbo].[tbl_driver]" +
            "           ([driver_name]" +
            "           ,[phone_number]" +
            "           ,[created_at]" +
            "           ,[id_card]" +
            "           ,[driver_license]" +
            "           ,[status])" +
            "     VALUES" +
            "           ('"+driverName.Text+"'" +
            "           ,'"+phoneNumber.Text+"'" +
            "           ,GETDATE()" +
             "           ,'" + noIndukKtp.Text + "'" +
            "           ,'B'" +
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
