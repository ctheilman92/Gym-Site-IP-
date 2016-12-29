using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;


namespace WebApplication1
{
    public partial class CartWebForm : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null)
                Response.Redirect("Login.aspx");

            //populate a list view
            //subtotal needed.
            //use select sum(price_column). sql DS has param @UID

            string sumQuery = "SELECT SUM([Price] * [UnitsToOrder]) FROM CartViewData WHERE UserID=@UID";
            SqlConnection sumcon = new SqlConnection(CartInvUserViewDS.ConnectionString);
            SqlCommand getsum = new SqlCommand(sumQuery, sumcon);
            getsum.Parameters.AddWithValue("UID", Session["UID"]);
            try
            {
                //subtotal save to page & to session state;
                sumcon.Open();
                lblSubtotal.Text = Convert.ToString(getsum.ExecuteScalar());
                Session["AggTotal"] = Convert.ToString(getsum.ExecuteScalar());

            }
            catch (Exception x)
            {
                lblSubtotal.Text += x.ToString();
            }
            finally
            {
                sumcon.Close();
            }


        }

        protected void DeleteItem(object sender, EventArgs e)
        {
            //DONE
            //get product ID from eval
            Button suppbutt = (Button)(sender);
            string getProdName = suppbutt.CommandArgument;

            string Deletequery = "DELETE FROM cart WHERE ProdName=@prodname AND UserID=@UID";
            SqlConnection delcon = new SqlConnection(CartInvUserViewDS.ConnectionString);
            SqlCommand del = new SqlCommand(Deletequery, delcon);
            del.Parameters.AddWithValue("@prodname", getProdName);
            del.Parameters.AddWithValue("@UID", Session["UID"]);

            try
            {
                delcon.Open();
                del.ExecuteNonQuery();
                errChk.Text = "item deleted";
                errChk.Visible = true;


            }
            catch (Exception ex)
            {
                errChk.Text = ex.ToString();
                errChk.Visible = true;
            }
            finally
            {
                delcon.Close();
                Response.Redirect("cart.aspx");

            }

        }


        protected void Checkout(object sender, EventArgs e)
        {
            //if session state not set. do random number
            //RANDOM OID SELECT WORKS
            if (Session["OID"] == null)
            {
                bool foundOID = true;
                Random rndOrderID = new Random();
                Int32 OIDPH = ((Int32)rndOrderID.Next(1, 256));

                //query if this number is used in database already.

                string oidQuery = "SELECT count(*) FROM Orders WHERE OrderID=@OID";
                SqlConnection ordconn = new SqlConnection(DSOrders.ConnectionString);
                SqlCommand chkOID = new SqlCommand(oidQuery, ordconn);
                chkOID.Parameters.AddWithValue("@OID", OIDPH);

                //this section should be working. hopefully. 
                //attach this to store.aspx for the checkout button as well. or on page load.
                while (foundOID)
                {
                    try
                    {
                        ordconn.Open();
                        foundOID = ((int)chkOID.ExecuteScalar() > 0);

                    }
                    catch (Exception ex)
                    {
                        errChk.Text = ex.ToString();
                        errChk.Visible = true;
                    }
                    finally
                    {
                        ordconn.Close();
                    }

                }
                //if the random OID isn't in the db. store ass session state
                if (!foundOID)
                    Session["OID"] = Convert.ToInt32(OIDPH);


                Response.Redirect("Finalize_Checkout.aspx");
                //debug
                //errChk.Text = "FOUND SESSION" + Session["OID"].ToString();
                //errChk.Visible = true;
            }

        }

        protected void PayPalredirectbtn_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["AggTotal"] == null)
                Response.Redirect("Store.aspx");
            else
                Response.Redirect("paypalRED.aspx");
        }

        protected void CartLV_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if(string.Equals(e.CommandName, "cmdUpdateUTO"))
            {
                SqlConnection cartcon = new SqlConnection(CartInvUserViewDS.ConnectionString);


                //get textbox item UTO
                TextBox UTOTEXTBOX = (TextBox)e.Item.FindControl("UTOtxt");
                Label getProdName = (Label)e.Item.FindControl("lblProdName");

                //if field set to 0. delete item
                if (UTOTEXTBOX.Text == "0")
                {
                    string Deletequery = "DELETE FROM cart WHERE ProdName=@prodname AND UserID=@UID";
                    SqlConnection delcon = new SqlConnection(CartInvUserViewDS.ConnectionString);
                    SqlCommand del = new SqlCommand(Deletequery, delcon);
                    del.Parameters.AddWithValue("@prodname", getProdName.Text);
                    del.Parameters.AddWithValue("@UID", Session["UID"]);

                    try
                    {
                        delcon.Open();
                        del.ExecuteNonQuery();
                        errChk.Text = "item deleted";
                        errChk.Visible = true;


                    }
                    catch (Exception ex)
                    {
                        errChk.Text = ex.ToString();
                        errChk.Visible = true;
                    }

                        delcon.Close();
                        Response.Redirect("cart.aspx");

                }



                string updateCMD = "UPDATE cart SET UnitsToOrder='"+UTOTEXTBOX.Text+"' WHERE ProdName='"+getProdName.Text+"'";
                SqlCommand updateRecord = new SqlCommand(updateCMD, cartcon);

                try
                {
                    cartcon.Open();
                    updateRecord.ExecuteNonQuery();
                    //CartInvUserViewDS.UpdateCommand = updateCMD;

                    //debug (WORKS) 
                    //errChk.Text = "debug: UTOTEXTBOX: " + UTOTEXTBOX.Text + " && PRODNAME: " + getProdName.Text;
                    //errChk.Visible = true;
                }
                catch (Exception err)
                {
                    errChk.Text = err.ToString();
                    errChk.Visible = true;
                }
                finally
                {
                    cartcon.Close();
                    Response.Redirect("cart.aspx");
                }

            }

        }
    }
}