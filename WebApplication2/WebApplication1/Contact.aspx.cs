using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Net;


namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //If the user clicks on the "transmit" button, and email is sent to the administration
        //The email and credentials are selected by querying the email and password fields of the 'Admin' user
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sMsg = txtContact.Text;
            string sSender = txtEmail.Text;

            try
            {
                MailMessage mailMSG = new MailMessage();

                mailMSG.From = new MailAddress("Customer Contact");

                mailMSG.To.Add("Habihirwe6@yahoo.com");

                mailMSG.Subject = "Swole Frog customer contact";

                            mailMSG.Body = sMsg;
                            mailMSG.Body += "\n\n";
                            mailMSG.Body += "Sender: " + sSender + " \n\n";


                            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

                            smtp.EnableSsl = true;

                            smtp.Send(mailMSG);
                    }
                        catch
                        {

                        }

            lblconfirm.Visible = true;

        }




    }
    }
     