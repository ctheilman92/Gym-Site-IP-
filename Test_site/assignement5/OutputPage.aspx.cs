using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignement5
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Session["Username"];
            Label2.Text = username + " Thank you for registation everything has gonna well!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/secondPage.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Landing.aspx");
        }
    }
}