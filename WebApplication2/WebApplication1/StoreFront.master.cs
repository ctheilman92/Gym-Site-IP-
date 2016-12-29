using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class StoreFront : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cartbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}