using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Session["username"];

            if (Session["username"] != null || Session["empname"] != null || Session["adminname"] != null)
            {
                lbllogin.Visible = false;
                storeanchor.HRef = "Store.aspx";
                lblregister.Visible = false;
                alogin.HRef = "";
                aregister.HRef = "";
            }

            if (Session["username"] == null || Session["empname"] != null || Session["adminname"] != null)
            {
                storeanchor.HRef = "Login.aspx";
            }
        }

    }
}