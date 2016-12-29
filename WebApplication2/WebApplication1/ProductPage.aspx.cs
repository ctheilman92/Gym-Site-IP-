using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ViewProdWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //may not need this here.
            string invSesh = (string)Session["ImageName"];

        }

        protected void ProductSqlDS_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //carry over session state of image name
            //assigning this to sql datasource
            e.Command.Parameters["@ImageName"].Value = (string)Session["ImageName"];

        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}