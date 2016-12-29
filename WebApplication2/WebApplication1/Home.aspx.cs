using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string username = (string)Session["username"];

            if (Session["username"] == null || Session["empname"] != null || Session["adminname"] != null)
            {
                toStore.HRef = "Login.aspx";
            }
        }
    }
}