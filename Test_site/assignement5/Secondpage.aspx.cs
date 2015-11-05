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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Session["Username"];
            string email = (string)Session["Email"];
            UsernameOutput.Text = username;
            EmailOutput.Text = email;
            lblFirst.Visible = false;
            lblLast.Visible = false;
            lblPass1.Visible = false;
            lblPass2.Visible = false;
            letterStart.Visible = false;
            lblError.Visible = false;
        }
        protected void btnStartover_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            bool exit = false;
            if (txtBoxFName.Text == "")
            {
                lblFirst.Visible = true;
                exit = true;
            }
            if (txtBoxLName.Text == "")
            {
                lblLast.Visible = true;
                exit = true;
            }
            if (txtBoxPassword1.Text == "")
            {
                lblPass1.Visible = true;
                exit = true;
            }
            else if (!Char.IsLetter(txtBoxPassword1.Text[1]))
            {
                letterStart.Visible = true;
                exit = true;
            }
            if (txtBoxPassword2.Text == "" || txtBoxPassword2.Text != txtBoxPassword1.Text)
            {
                lblPass2.Visible = true;
                exit = true;
            }



            if (exit) { return; }



            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = ("INSERT INTO \"User\" (User_Username, User_Password, User_Email, User_FName, User_LName, User_Country) VALUES ('" + UsernameOutput.Text + "', '" + txtBoxPassword1.Text + "', '" + EmailOutput.Text + "', '" + txtBoxFName.Text + "', '" + txtBoxLName.Text + "', '" + countryList.SelectedValue + "')");
            cmd.Connection = db;

            db.Open();
            try
            {
                cmd.ExecuteNonQuery();
                exit = true;

            }
            catch
            {

                lblError.Text = "An error while writing to DB!";
                return;
            }
            finally
            {
                db.Close();
            }
            if (exit) { Response.Redirect("/OutputPage.aspx"); }

        }

    }
}