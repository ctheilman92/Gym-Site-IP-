using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace WebApplication1
{
    public partial class StoreWebForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //oid is not incremented
            if(Session["OID"] == null)
            {

            }

            if ((string)Session["username"] != null) {
                string username = (string)Session["username"];
            }

            if (Session["UID"] != null) {
                Int32 uidph = (Int32)Session["UID"];
            }
        }


        protected void AddToCart_Click(object sender, EventArgs e)
        {
            //GET USER SESSION STATE

            
            string username = (string)Session["username"];
            Int32 uidph = (Int32)Session["UID"];

            //get product ID from eval
            Button suppbutt = (Button)(sender);
            string getProdName = suppbutt.CommandArgument;

            SqlConnection connInv = new SqlConnection(AllInventorySqlDS.ConnectionString);
            SqlConnection connCart = new SqlConnection(CartSqlDS.ConnectionString);


            //INVENTORY SELECTION QUERIES
            string IDQuery = "select ProdID from Inventory where ProdName='" + getProdName + "'";
            //ASSIGN STRING VARIABLE THE PRODUCT ID OF BOUND DATA
            SqlCommand ProdIDCmd = new SqlCommand(IDQuery, connInv);

            bool cartItemExists;
            int selectProdID;
            int newUTO;

            try
            {

                connInv.Open();
                connCart.Open();



                selectProdID = (int)ProdIDCmd.ExecuteScalar();


                string selectcart = "select count(*) from cart where ProdName=@prodname AND UserID='"+Session["UID"]+"'";

                //scalar command to bool value, if already exists, add 1 to the unitsToOrder, else unitsToOrder is 1
                SqlCommand prodExists = new SqlCommand(selectcart, connCart);
                prodExists.Parameters.AddWithValue("@prodname", getProdName);
                //prodExists.Parameters.AddWithValue("@UID", Session["UID"]);

                try
                {
                    cartItemExists = ((int)prodExists.ExecuteScalar() > 0);

                    if (cartItemExists)     //increment units to order
                    {

                        //adding to total units to ord
                        string somequery = "SELECT [UnitsToOrder] FROM cart WHERE UserID='" + Session["UID"] + "' AND ProdName='" + getProdName + "'";
                        SqlCommand getUnits = new SqlCommand(somequery, connCart);
                        //getUnits.Parameters.AddWithValue("@prodname", getProdName);

                        try
                        {

                            newUTO = (int)getUnits.ExecuteScalar() + 1;
                            string updateUnits = "UPDATE cart SET UnitsToOrder=@UTO where ProdName='" + getProdName + "' AND UserID='" + Session["UID"] + "'";
                            SqlCommand updateCartRow = new SqlCommand(updateUnits, connCart);
                            //updateCartRow.Parameters.AddWithValue("@prodname", getProdName);
                            updateCartRow.Parameters.AddWithValue("@UTO", newUTO);

                            try
                            {
                                updateCartRow.ExecuteNonQuery();
                            }
                            catch
                            {
                                getListBox.Text = "*Couldn't update record. Apologies.";
                                getListBox.Visible = true;
                            }

                        }
                        catch (Exception incrementerr)
                        {
                            getListBox.Text = "ERROR INCREMENTING UNITS TO ORDER: DEBUG:+   GETPRODNAME =" + getProdName + " USERID =" + Session["UID"] + "   " + incrementerr.ToString();
                            getListBox.Visible = true;
                        }
                    }

                    else
                    {
                        newUTO = 1;
                        string cartQuery = "insert into cart (UserID, ProdID, ProdName, UnitsToOrder) values ('" + uidph + "', '" + selectProdID + "', '" + getProdName + "', '" + newUTO + "')";
                        SqlCommand insCartRow = new SqlCommand(cartQuery, connCart);


                        try
                        {
                            insCartRow.ExecuteNonQuery();
                            getListBox.Text = "success adding item to box";
                            getListBox.Visible = true;
                        }
                        catch (Exception ex2)
                        {
                            getListBox.Text = ex2.ToString();
                            getListBox.Visible = true;
                        }

                    }
                }
                catch (Exception chkerr)
                {
                    getListBox.Text = "COULDN'T CHECK IF ITEM EXISTS ALREADY: " + chkerr.ToString();
                    getListBox.Visible = true;
                }

            }
            catch (Exception ex)
            {
                //FOR DEBUG
                getListBox.Text = "Error in sql Execution:  " + ex.ToString();
                getListBox.Visible = true;
            }
            finally
            {
                connInv.Close();
                connCart.Close();
                //Response.Redirect("Store.aspx");
            }
        }






        protected void ViewProduct(object sender, EventArgs e)
        {
            //button obj passing commandarg that holds databound value
            Button btnVP = (Button)(sender);
            Session["ImageName"] = btnVP.CommandArgument;

            Response.Redirect("ProductPage.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }




        /*3 METHODS ARE EASY WORKAROUND TO DISPLAY CATEGORY TITLE
            -combine later*/
        protected void head2Proteins(object sender, EventArgs e)
        {

            CategorySelect.Text = "Proteins & Supplements";
            CategorySelect.Visible = true;
        }
        protected void head2Equip(object sender, EventArgs e)
        {
            CategorySelect.Text = "Fitness Equipment";
            CategorySelect.Visible = true;
        }
        protected void head2Apparel(object sender, EventArgs e)
        {
            CategorySelect.Text = "Clothes & Apparel";
            CategorySelect.Visible = true;
        }

        protected void SupplementsLV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}