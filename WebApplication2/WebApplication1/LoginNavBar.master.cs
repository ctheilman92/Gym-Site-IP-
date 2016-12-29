using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Session["username"];
            string empname = (string)Session["empname"];
            string adminname = (string)Session["adminname"];

            if (Session["username"] != null)
            {
                lbluser.Text = username;
                linkLogout.Visible = true;
                awelcome.HRef = "User/ManageAccount.aspx";
            }
            else if (Session["empname"] != null)
            {
                lbluser.Text = empname;
                linkLogout.Visible = true;
                awelcome.HRef = "Employee/EmployeeHome.aspx";
            }
            else if (Session["adminname"] != null)
            {
                lbluser.Text = adminname;
                linkLogout.Visible = true;
                awelcome.HRef = "Admin/AdminHome.aspx";
            }
            else
            {
                awelcome.HRef = "";
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session.Abandon();

            lbluser.Text = " to our site!";

            //redirect to login page
            Response.Redirect("~/Home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["empname"] = null;
            Session["adminname"] = null;
            Session.Abandon();

            lbluser.Text = " to our site!";

            //redirect to login page
            Response.Redirect("~/Home.aspx");
        }
    }
}