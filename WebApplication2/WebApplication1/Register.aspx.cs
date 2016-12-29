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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool found = false;

            bool hasUpperCaseLetter = false;
            bool hasLowerCaseLetter = false;
            bool hasDecimalDigit = false;

            foreach (char c in txtpassword.Text)
            {
                if (char.IsUpper(c)) hasUpperCaseLetter = true;
                else if (char.IsLower(c)) hasLowerCaseLetter = true;
                else if (char.IsDigit(c)) hasDecimalDigit = true;

            }


            if (txtemail.Text == "" || txtpassword.Text == "" || txtpassword2.Text == "")
            {

                if (txtemail.Text == "") lbemail.Visible = true; else lbemail.Visible = false;
                if (txtpassword.Text == "") lbpassword.Visible = true; else lbpassword.Visible = false;
                if (txtpassword2.Text == "") lbpassword2.Visible = true; else lbpassword2.Visible = false;
            }
            /// To check if the password match
            else if (txtpassword.Text != txtpassword2.Text)
            {
                lbpassword2.Text = "* Passwords do not match";
                lbpassword2.Visible = true;
            }
            else if (txtpassword.Text.Length < 8)
            {
                lbpassword2.Text = "* Passwords is too short. Password is required to be 8 characters long";
                lbpassword2.Visible = true;

            }
            else if (!hasUpperCaseLetter)
            {
                lbpassword2.Text = "* Password don't contain an Upper Case Character ";
                lbpassword2.Visible = true;
            }
            else if (!hasLowerCaseLetter)
            {
                lbpassword2.Text = "* Password don't contain an Lower Case Character ";
                lbpassword2.Visible = true;
            }
            else if (!hasDecimalDigit)
            {
                lbpassword2.Text = "* Password don't contain a digit ";
                lbpassword2.Visible = true;
            }
            else
            {
                lbpassword.Visible = false;
                lbpassword2.Visible = false;

                string email = txtemail.Text;
                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "SELECT * FROM User_Tbl WHERE Email = '" + email + "'";
                cmd1.Connection = db;

                Session["email"] = txtemail.Text;
                Session["password"] = txtpassword.Text;

                db.Open();

                try
                {
                    using (SqlDataReader myReader = cmd1.ExecuteReader())
                        if (myReader.HasRows)
                            found = true;
                }
                catch
                {
                    //lbusername.Text = "Found";
                    lbemail.Text = "* This email has already been used! ";
                    lbemail.Visible = true;
                }
                finally
                {
                    if (found)
                    {
                        lbemail.Text = "* This email has already been used! ";
                        lbemail.Visible = true;
                    }

                    else
                        Response.Redirect("FinalizeRegister.aspx");
                    db.Close();
                }
            }





        }
    }
}