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
    public partial class BillShipWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null)
                Response.Redirect("Login.aspx");




            SqlConnection shipcon = new SqlConnection(ShippingSqlDS.ConnectionString);
            SqlConnection billcon = new SqlConnection(BillingSqlDS.ConnectionString);



            //check if shipping & billing for userID already exists
            //if so populate fields on pageload & set read-only
            string chkifBill = "SELECT count(*) FROM Billing WHERE UserID=@UID";
            string chkifShip = "SELECT count(*) FROM Shipping WHERE UserID=@UID";
            bool shipExists;
            bool billExists;
            SqlCommand shiprowchk = new SqlCommand(chkifShip, shipcon);
            shiprowchk.Parameters.AddWithValue("@UID", Session["UID"]);
            SqlCommand billrowchk = new SqlCommand(chkifBill, billcon);
            billrowchk.Parameters.AddWithValue("@UID", Session["UID"]);



            try
            {
                billcon.Open();
                shipcon.Open();
                shipExists = ((int)shiprowchk.ExecuteScalar() > 0);
                billExists = ((int)billrowchk.ExecuteScalar() > 0);

                //if shipping data for user
                if (shipExists)
                {
                    //use data reader to read through items 0-6 are columns
                    string queryShipping = "SELECT [FirstName], [LastName], [Street], [City], [State], [zip] FROM [Shipping] WHERE ([UserID] = @UID)";
                    SqlCommand getShippingrow = new SqlCommand(queryShipping, shipcon);
                    getShippingrow.Parameters.AddWithValue("@UID", Session["UID"]);

                    try
                    {

                        SqlDataReader shiprdr = getShippingrow.ExecuteReader();

                        while (shiprdr.Read())
                        {
                            shipFNTextBox.Text = shiprdr["FirstName"].ToString();
                            shipFNTextBox.ReadOnly = true;
                            shipLNTextBox.Text = shiprdr["LastName"].ToString();
                            shipLNTextBox.ReadOnly = true;
                            shipStreetTextBox.Text = shiprdr["Street"].ToString();
                            shipStreetTextBox.ReadOnly = true;
                            shipCityTextBox.Text = shiprdr["City"].ToString();
                            shipCityTextBox.ReadOnly = true;
                            shipStateDDL.SelectedValue = shiprdr["State"].ToString();
                            shipStateDDL.Enabled = false;
                            shipZipTextBox.Text = shiprdr["zip"].ToString();
                            shipZipTextBox.ReadOnly = true;
                        }

                        //debug
                        ErrChk.Text = "Shipping Already in Database for user...........";
                        ErrChk.Visible = true;

                    }
                    catch (Exception rderr)
                    {
                        ErrChk.Text = "SHIPPING READ ERROR: " + rderr.ToString();
                        ErrChk.Visible = true;
                    }
                    finally
                    {
                        shipcon.Close();
                    }
                }

                if (billExists)
                {
                    string queryBill = "SELECT [FirstName], [LastName], [CCType], [CCNumber], [CVV], [Street], [City], [State], [zip] FROM [Billing] WHERE ([UserID] = @UID)";
                    SqlCommand getBillrow = new SqlCommand(queryBill, billcon);
                    getBillrow.Parameters.AddWithValue("@UID", Session["UID"]);

                    try
                    {

                        SqlDataReader billrdr = getBillrow.ExecuteReader();

                        while (billrdr.Read())
                        {
                            RadioSameAs.Enabled = false;
                            BillFNTextBox.Text = billrdr["FirstName"].ToString();
                            BillFNTextBox.ReadOnly = true;
                            BillLNTextBox.Text = billrdr["LastName"].ToString();
                            BillLNTextBox.ReadOnly = true;
                            CCTypeDDL.SelectedValue = billrdr["CCType"].ToString();
                            CCTypeDDL.Enabled = false;
                            CCNumTextBox.Text = billrdr["CCNumber"].ToString();
                            CCNumTextBox.ReadOnly = true;
                            CVVTextBox.Text = billrdr["CVV"].ToString();
                            CVVTextBox.ReadOnly = true;
                            BillStreetTextBox.Text = billrdr["Street"].ToString();
                            BillStreetTextBox.ReadOnly = true;
                            BillCityTextBox.Text = billrdr["City"].ToString();
                            BillCityTextBox.ReadOnly = true;
                            BillStatesDDL.SelectedValue = billrdr["State"].ToString();
                            BillStatesDDL.Enabled = false;
                            BillZipTextBox.Text = billrdr["zip"].ToString();
                            BillZipTextBox.ReadOnly = true;
                        }

                        //debug
                        ErrChk.Text += "Billing Already in Database for user...........";
                        ErrChk.Visible = true;

                    }
                    catch (Exception rderr)
                    {
                        ErrChk.Text = "BILLING READ ERROR: " + rderr.ToString();
                        ErrChk.Visible = true;
                    }
                    finally
                    {
                        billcon.Close();
                    }
                }
            }
            catch (Exception err)
            {
                ErrChk.Text = "ERROR CHECKING FOR MATCHES: " + err.ToString();
                ErrChk.Visible = true;
            }
            finally
            {
                shipcon.Close();
                billcon.Close();
            }
        }


        protected void RadioSameAs_CheckedChanged(object sender, EventArgs e)
        {
            //copy contents from billing to shipping
            shipFNTextBox.Text = BillFNTextBox.Text;
            shipLNTextBox.Text = BillLNTextBox.Text;
            shipStreetTextBox.Text = BillStreetTextBox.Text;
            shipCityTextBox.Text = BillCityTextBox.Text;
            shipZipTextBox.Text = BillZipTextBox.Text;
            shipStateDDL.SelectedValue = BillStatesDDL.SelectedValue;

        }

        protected void ClearShipBtn_Click(object sender, EventArgs e)
        {
            shipFNTextBox.Text = "";
            shipFNTextBox.ReadOnly = false;
            shipLNTextBox.Text = "";
            shipLNTextBox.ReadOnly = false;
            shipCityTextBox.Text = "";
            shipCityTextBox.ReadOnly = false;
            shipStreetTextBox.Text = "";
            shipStreetTextBox.ReadOnly = false;
            shipZipTextBox.Text = "";
            shipZipTextBox.ReadOnly = false;
            shipStateDDL.SelectedValue = null;
            shipStateDDL.Enabled = true;
        }

        protected void ClearBillBtn_Click(object sender, EventArgs e)
        {
            BillFNTextBox.Text = "";
            BillFNTextBox.ReadOnly = false;
            BillLNTextBox.Text = "";
            BillLNTextBox.ReadOnly = false;
            BillCityTextBox.Text = "";
            BillCityTextBox.ReadOnly = false;
            BillStreetTextBox.Text = "";
            BillStreetTextBox.ReadOnly = false;
            BillZipTextBox.Text = "";
            BillZipTextBox.ReadOnly = false;
            BillStatesDDL.SelectedValue = null;
            BillStatesDDL.Enabled = true;
            CCNumTextBox.Text = "";
            CCNumTextBox.ReadOnly = false;
            CVVTextBox.Text = "";
            CVVTextBox.ReadOnly = false;
            CCTypeDDL.SelectedValue = null;
            CCTypeDDL.Enabled = true;
            RadioSameAs.Checked = false;
        }

        protected void FinalizeBtn_Click(object sender, EventArgs e)
        {
            //objectives.
            //add shipping 

            if (Page.IsValid)
            {
                SqlConnection shipcon = new SqlConnection(ShippingSqlDS.ConnectionString);
                SqlConnection billcon = new SqlConnection(BillingSqlDS.ConnectionString);
                SqlConnection ordercon = new SqlConnection(OrdersSqlDS.ConnectionString);
                SqlConnection cartcon = new SqlConnection(cartByUserSqlDS.ConnectionString);
                SqlConnection invcon = new SqlConnection(InventorySqlDS.ConnectionString);


                //check if shipping & billing for userID already exists
                string chkifBill = "SELECT count(*) FROM Billing WHERE UserID=@UID";
                string chkifShip = "SELECT count(*) FROM Shipping WHERE UserID=@UID";
                bool shipExists;
                bool billExists;
                shipcon.Open();
                billcon.Open();
                SqlCommand shiprowchk = new SqlCommand(chkifShip, shipcon);
                shiprowchk.Parameters.AddWithValue("@UID", Session["UID"]);
                SqlCommand billrowchk = new SqlCommand(chkifBill, billcon);
                billrowchk.Parameters.AddWithValue("@UID", Session["UID"]);

                try
                {

                    shipExists = ((int)shiprowchk.ExecuteScalar() > 0);
                    billExists = ((int)billrowchk.ExecuteScalar() > 0);

                    //if no shipping data for user
                    if (!shipExists)
                    {
                        string insertShip = "insert into Shipping (UserID, FirstName, LastName, Street, City, State, zip) values (@UID, @FN, @LN, @Street, @City, @State, @zip)";
                        SqlCommand insertshipcmd = new SqlCommand(insertShip, shipcon);
                        insertshipcmd.Parameters.AddWithValue("@UID", Session["UID"]);
                        insertshipcmd.Parameters.AddWithValue("@FN", shipFNTextBox.Text);
                        insertshipcmd.Parameters.AddWithValue("@LN", shipLNTextBox.Text);
                        insertshipcmd.Parameters.AddWithValue("@Street", shipStreetTextBox.Text);
                        insertshipcmd.Parameters.AddWithValue("@City", shipCityTextBox.Text);
                        insertshipcmd.Parameters.AddWithValue("@State", shipStateDDL.SelectedValue);
                        insertshipcmd.Parameters.AddWithValue("@zip", shipZipTextBox.Text);

                        try
                        {
                            insertshipcmd.ExecuteNonQuery();
                        }
                        catch (Exception shiperr)
                        {
                            ErrChk.Text = shiperr.ToString();
                            ErrChk.Visible = true;
                        }

                    }
                    else
                    {
                        ErrChk.Text = "Shipping information already exists";
                        ErrChk.Visible = true;
                    }

                    if (!billExists)
                    {
                        string insertBilling = "insert into Billing (UserID, FirstName, LastName, CCType, CCNumber, CVV, Street, City, State, zip) values (@UID, @FN, @LN, @CCTYPE, @CCNUM, @CVV, @Street, @City, @State, @zip)";
                        SqlCommand insertBillCmd = new SqlCommand(insertBilling, shipcon);
                        insertBillCmd.Parameters.AddWithValue("@UID", Session["UID"]);
                        insertBillCmd.Parameters.AddWithValue("@FN", BillFNTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@LN", BillLNTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@Street", BillStreetTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@City", BillCityTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@State", BillStatesDDL.SelectedValue);
                        insertBillCmd.Parameters.AddWithValue("@zip", BillZipTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@CCTYPE", CCTypeDDL.SelectedValue);
                        insertBillCmd.Parameters.AddWithValue("@CCNUM",CCNumTextBox.Text);
                        insertBillCmd.Parameters.AddWithValue("@CVV", CVVTextBox.Text);

                        try
                        {
                            insertBillCmd.ExecuteNonQuery();
                        }
                        catch (Exception shiperr)
                        {
                            ErrChk.Text = shiperr.ToString();
                            ErrChk.Visible = true;
                        }
                    }
                    else
                    {
                        ErrChk.Text = "Billing information already exists";
                        ErrChk.Visible = true;
                    }
                }
                catch (Exception err)
                {
                    ErrChk.Text = err.ToString();
                    ErrChk.Visible = true;
                }
                

                //next insert Order
                //get sum of items to order
                string OIDPH = Convert.ToString(Session["OID"]);
                string SUBTOTALPH = (string)Session["AggTotal"];
                int TotalUnits;
                string GetSumUnits = "SELECT SUM(UnitsToOrder) FROM cart WHERE UserID=@UID";
                SqlCommand sumunitscmd = new SqlCommand(GetSumUnits, cartcon);
                sumunitscmd.Parameters.AddWithValue("@UID", Session["UID"]);

                try
                {
                    cartcon.Open();
                    TotalUnits = ((int)sumunitscmd.ExecuteScalar());

                    double aggtotal = Convert.ToDouble((string)Session["AggTotal"]);
                    double taxed = Math.Round(aggtotal + (aggtotal * .0825), 2);
                    string strcalctax = Convert.ToString(taxed);

                    //insert new order
                    string newOrder = "insert into Orders (OrderID, Total, ItemsOrdered) values (' "+ Session["OID"] + "', '"+ strcalctax +"', '"+TotalUnits+"')";
                    SqlCommand OrderNow = new SqlCommand(newOrder, ordercon);
                    //OrderNow.Parameters.AddWithValue("@OID", OIDPH);
                    //OrderNow.Parameters.AddWithValue("@Subtotal", SUBTOTALPH);
                    //OrderNow.Parameters.AddWithValue("@UTO", TotalUnits);

                    try
                    {
                        ordercon.Open();
                        OrderNow.ExecuteNonQuery();
                        ErrChk.Text = "Success Adding order.";
                        ErrChk.Visible = true;
                    }
                    catch (Exception ordererr)
                    {
                        ErrChk.Text = "ORDER ERROR: " + ordererr.ToString();
                        ErrChk.Visible = true;
                    }
                    
                }
                catch (Exception uniterr)
                {
                    ErrChk.Text = "ERROR GETTING TOTAL UNITS: " + uniterr.ToString();
                    ErrChk.Visible = true;
                }
                





                //Reduce total units of each product ordered from inventory
                string cartquery = "SELECT [ProdName], [UnitsToOrder] FROM [cart] WHERE ([UserID] = @UID)";
                SqlCommand cartresults = new SqlCommand(cartquery, cartcon);
                cartresults.Parameters.AddWithValue("@UID", Session["UID"]);
                

                try
                {
                    invcon.Open();
                    SqlDataReader cartrdr = cartresults.ExecuteReader();
                    while (cartrdr.HasRows)
                    {
                        while (cartrdr.Read())
                        {
                            string prodname = cartrdr["ProdName"].ToString();
                            int cartUTO = (int)cartrdr["UnitsToOrder"];

                            string getTotalUnits = "SELECT [Units] FROM Inventory WHERE ProdName='" + prodname + "'";
                            SqlCommand invUnits = new SqlCommand(getTotalUnits, invcon);
                            try
                            {
                                int totalUnits = ((int)invUnits.ExecuteScalar());
                                int newUnits = (cartUTO - totalUnits);



                                //UPDATE cart SET UnitsToOrder='"+UTOTEXTBOX.Text+"' WHERE ProdName='"+getProdName.Text+"'"
                                string updateinv = "UPDATE Inventory SET Units='" + newUnits + "' WHERE ProdName='" + prodname + "'";
                                SqlCommand updateunitsof = new SqlCommand(updateinv, invcon);

                                try
                                {
                                    updateunitsof.ExecuteNonQuery();
                                    ErrChk.Text += "\n    --INVENTORY UPDATED EFFECTIVELY--";
                                    ErrChk.Visible = true;
                                }
                                catch (Exception updatex)
                                {
                                    ErrChk.Text = "FAILED TO UPDATE UNITS: " + updatex.ToString();
                                    ErrChk.Visible = true;
                                }

                            }
                            catch (Exception unitsex)
                            {
                                ErrChk.Text = "COULDN'T RETRIEVE UNITS FROM INVENTORY: " + unitsex.ToString();
                                ErrChk.Visible = true;
                            }

                            //do this for any set of items in cart
                            cartrdr.NextResult();
                        }
                    }
                }
                catch (Exception carterr)
                {
                    ErrChk.Text = "ERROR SELECTING FROM CART: " + carterr.ToString();
                    ErrChk.Visible = true;
                }
                finally
                {
                    cartcon.Close();
                }
                
                



                //delete cart for the user
                string delcart = "DELETE FROM cart WHERE UserID=@UID";
                SqlCommand clearcart = new SqlCommand(delcart, cartcon);
                clearcart.Parameters.AddWithValue("@UID", Session["UID"]);

                try
                {
                    cartcon.Open();
                    clearcart.ExecuteNonQuery();
                    ErrChk.Text += "--USER CART CLEARED--";
                    ErrChk.Visible = true;
                }
                catch (Exception clearex)
                {

                    ErrChk.Text = "CART WAS NOT CLEARED!: " + clearex.ToString();
                    ErrChk.Visible = true;
                    
                }
                finally
                {
                    ordercon.Close();
                    shipcon.Close();
                    billcon.Close();
                    invcon.Close();
                    cartcon.Close();
                }


            }
        }
    }
}