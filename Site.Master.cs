using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kargo_tms
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["role"] == "transporter")
                {
                    spL.Visible = false;

                }
                else {
                    tpL.Visible = false;
                    dpL.Visible = false;
                }
            }

        }
    }
}