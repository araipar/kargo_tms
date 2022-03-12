using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kargo_tms
{
    public partial class TrucksPage : System.Web.UI.Page
    {

        DatabaseGetSet queryData = new DatabaseGetSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadDdls();
                loadTruck();
            }

        }

        private void loadDdls()
        {
            ddlType.Items.Clear();
            ddlLicenseType.Items.Clear();

            ddlLicenseType.Items.Add(new ListItem("Black", "Black"));
            ddlLicenseType.Items.Add(new ListItem("Yellow", "Yellow"));



            DataTable dt = queryData.DbQuerySelect("select * from tbl_truck_type");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlType.Items.Add(new ListItem(dt.Rows[i]["type_desc"].ToString(), dt.Rows[i]["truck_type_id"].ToString()));
                }
            }


            dt = queryData.DbQuerySelect("select * from [Kargo].[dbo].[tbl_truck_status]");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ddlStatus.Items.Add(new ListItem(dt.Rows[i]["status_desc"].ToString(), dt.Rows[i]["truck_status_id"].ToString()));

                }

            }
        }

        private void loadTruck()
        {
            var dt = new DataTable();
            dt = queryData.DbQuerySelect("select tt.* , ttt.type_desc,tts.status_desc from tbl_trucks tt,tbl_truck_type ttt,tbl_truck_status tts where tt.truck_type = ttt.truck_type_id and tt.status = tts.truck_status_id");

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

            string sb = "INSERT INTO [dbo].[tbl_trucks]" +
        "           ([license_number]" +
        "           ,[truck_type]" +
        "           ,[plate_type]" +
        "           ,[production_year]" +
        "           ,[status]" +
        "           ,[kir])" +
        "     VALUES" +
        "           ('"+ licenseNumber.Text + "'" +
        "           ,'"+ ddlType.SelectedValue + "'" +
        "           ,'"+ddlLicenseType.SelectedValue+"'" +
        "           ,'"+prodYear.Text +"'" +
        "           ,1" +
        "           ,1)";

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


        protected void btnEdit_Click(object sender, EventArgs e)
        {

            string sb = "INSERT INTO [dbo].[tbl_trucks]" +
        "           ([license_number]" +
        "           ,[truck_type]" +
        "           ,[plate_type]" +
        "           ,[production_year]" +
        "           ,[status]" +
        "           ,[kir])" +
        "     VALUES" +
        "           ('" + licenseNumber.Text + "'" +
        "           ,'" + ddlType.SelectedValue + "'" +
        "           ,'" + ddlLicenseType.SelectedValue + "'" +
        "           ,'" + prodYear.Text + "'" +
        "           ,1" +
        "           ,1)";

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


        protected void btnUpdate_Click(object sender, EventArgs e)
        {


            string sb = "UPDATE [dbo].[tbl_trucks]" +
            "   SET [status] = '" + ddlStatus.SelectedValue + "'" +
            " WHERE truck_id = '" + hdnRejectID.Value + "'";



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
    }
}