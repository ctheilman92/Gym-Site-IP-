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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            bool found = false;


            if (txtusername.Text == "" || txtpassword.Text == "")
            {
                lbusername.Visible = true;
            }
            else
            {
                string user = txtusername.Text;
                string password = txtpassword.Text;

                SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "SELECT * FROM User_Tbl WHERE UserName = '" + user + "' AND passwd = '" + password +"'";
                cmd1.Connection = db;

                db.Open();

                Session["username"] = txtusername.Text;

                try
                {
                    using (SqlDataReader myReader = cmd1.ExecuteReader())
                        if (myReader.HasRows)
                            found = true;
                }
                catch
                {
                    lbusername.Text = "* The credentials you provided cannot be determined to be authentic.";
                    lbusername.Visible = true;
                }
                finally
                {
                    /*if (found)
                        Response.Redirect("Home.aspx");
                    else
                    {
                        lbusername.Text = "* The credentials you provided cannot be determined to be authentic.";
                        lbusername.Visible = true;
                    }
                    db.Close();*/

                    if (found)
                    {
                        //I'll need session UserID
                        string IDQUERY = "Select UserID from User_Tbl where UserName=@UserName";

                        SqlCommand getID = new SqlCommand(IDQUERY, db);
                        
                        getID.Parameters.AddWithValue("@UserName", user);

                        //this should work
                        //not sure why it wouldn't except an int
                        try
                        {
                            Session["UID"] = (Convert.ToInt32(getID.ExecuteScalar()));
                     
                        }
                        catch (Exception xerrr)
                        {
                            lbpassword.Text = xerrr.ToString();
                            lbpassword.Visible = true;
                        }
                        finally
                        {
                            db.Close();
                            //debug
                            //lbpassword.Text = "USERID: " + Session["UID"] + " && USERNAME: " + (string)Session["username"] + ".....";
                            //lbpassword.Visible = true;
                            Response.Redirect("Home.aspx");
                        }
                    }
                    else
                    {
                        lbusername.Text = "* The credentials you provided cannot be determined to be authentic.";
                        lbusername.Visible = true;
                    }
                } 

            }

        }
    }
}