using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class paypalRED : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aggPricelbl.Text = Convert.ToString(Session["AggTotal"]);
            //amountinput.Value = Convert.ToString(Session["AggTotal"]);
        }
    }
}