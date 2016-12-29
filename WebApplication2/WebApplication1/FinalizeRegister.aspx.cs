using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mail = (string)Session["email"];

            txtemail.Text = mail;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string mail = (string)Session["email"];
            string pw = (string)Session["password"];


            ///bool validate = true;
            if (txtfirstname.Text == "" || txtlastname.Text == "" || txtusername.Text == "")
            {
                if (txtfirstname.Text == "") lbfirstname.Visible = true; else lbfirstname.Visible = false;
                if (txtlastname.Text == "") lblastname.Visible = true; else lblastname.Visible = false;
                if (txtusername.Text == "") lbusername.Visible = true; else { lbusername.Visible = false; }

            }
            else
            {

                Session["firstName"] = txtfirstname.Text;
                Session["lastName"] = txtlastname.Text;

                string fname = txtfirstname.Text;
                string lname = txtlastname.Text;
                string username = txtusername.Text;
                string paypal = txtpaypal.Text;

                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO User_Tbl (UserName, passwd, FirstName, LastName, Email, Paypal) VALUES ('" + username + "','" + pw + "','" + fname + "','" + lname + "','" + mail + "','" + paypal + "')";
                cmd.Connection = db;

                db.Open();

                try
                {
                    cmd.ExecuteNonQuery();

                }
                catch
                {
                    lbwarning.Visible = true;
                }
                finally
                {
                    db.Close();
                    Response.Redirect("Home.aspx");
                }


            }
        }
    }
}