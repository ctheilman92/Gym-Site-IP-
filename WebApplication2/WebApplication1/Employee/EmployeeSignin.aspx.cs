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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "SELECT count(*) FROM Emp_Tbl WHERE emp_UserName='" + txtBoxUsername.Text + "' AND em_Passwd='" + txtBoxPassword.Text + "'";
            cmd.Connection = db;

            db.Open();
            try
            {
                int temp = Convert.ToInt32(cmd.ExecuteScalar());
                if (temp <= 0)
                {
                    lblUsernameOutput.Text = "* USERNAME PASSWORD NO GOOD!";
                    return;
                }
            }
            catch
            {
                lblUsernameOutput.Text = "An error while checking to DB!";
                lblUsernameOutput.Visible = true;
                return;
            }
            finally
            {
                db.Close();
            }
            Session["empname"] = txtBoxUsername.Text;
            //go ahead and redirect to the Admin page, this user has been authentacated
            Response.Redirect("/Employee/EmployeeHome.aspx");
        }

    }
}