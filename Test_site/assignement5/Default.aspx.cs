using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace assignement5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtBoxUsername.Text == null || txtBoxUsername.Text == "" || txtBoxUsername.Text == "username")
            {
                lblUsernameOutput.Text = "*Bro this Field is required.";
                lblUsernameOutput.Visible = true;
                return;
            }
            if (txtBoxEmail.Text == null || txtBoxEmail.Text == "" || txtBoxEmail.Text == "email")
            {
                txtBoxEmail.Text = "* Bro this Field is required.";
                txtBoxEmail.Visible = true;
                return;
            }

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT count(*) FROM \"User\" WHERE User_Username='" + txtBoxUsername.Text + "'";
            cmd.Connection = db;

            db.Open();
            try
            {
                int temp = Convert.ToInt32(cmd.ExecuteScalar());
                if (temp > 0)
                {
                    lblUsernameOutput.Text = "* Sorry Bro but that user is already taken";
                    lblUsernameOutput.Visible = true;
                    return;
                }
            }
            catch
            {

                lblEmailOutput.Text = "An error while checking to DB!";
                lblEmailOutput.Visible = true;
                db.Close();
                return;
            }
            finally
            {
                db.Close();
            }
            Session["Username"] = txtBoxUsername.Text;
            Session["Email"] = txtBoxEmail.Text;
            Response.Redirect("/Secondpage.aspx");
        }

             protected void btnLoginDisplay_Click(object sender, EventArgs e)
        {
            txtBoxEmail.Text = "Password";
            btnSubmit.Visible = false;
            btnLoginDisplay.Visible = false;
            lblLogin.Visible = false;
            btnLogin.Visible = false;
            txtBoxEmail.Visible = false;
            btnLogin.Visible = true;
            lblPassword.Text = "Password";
            txtBoxPassword.Visible = true;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtBoxUsername.Text == null || txtBoxUsername.Text == "" || txtBoxUsername.Text == "username")
            {
                lblUsernameOutput.Text = "* Field is required.";
                lblUsernameOutput.Visible = true;
                return;
            }
            if (txtBoxEmail.Text == null || txtBoxEmail.Text == "" || txtBoxEmail.Text == "email")
            {
                txtBoxEmail.Text = "* Field is required.";
                txtBoxEmail.Visible = true;
                return;
            }

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT count(*) FROM \"User\" WHERE User_Username='" + txtBoxUsername.Text + "' AND User_Password='" + txtBoxPassword.Text + "'";
            cmd.Connection = db;

            db.Open();
            try
            {
                int temp = Convert.ToInt32(cmd.ExecuteScalar());
                if (temp <= 0)
                {
                    lblUsernameOutput.Text = "* USERNAME PASSWORD NO GOOD! Count =" +temp;
                    lblUsernameOutput.Visible = true;
                    return;
                }
            }
            catch
            {
                lblEmailOutput.Text = "An error while checking to DB!";
                lblEmailOutput.Visible = true;
                db.Close();
                return;
            }
            finally
            {
                db.Close();
            }

            lblUsernameOutput.Visible = false;
            Session["Username"] = txtBoxUsername.Text;
            //go ahead and redirect to a page, this user has been authentacated
            Response.Redirect("/Landing.aspx");
        }
    }
}