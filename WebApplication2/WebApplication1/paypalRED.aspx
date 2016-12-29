<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paypalRED.aspx.cs" Inherits="WebApplication1.paypalRED" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <!--redirect page for paypal form sendoff since forms can't be nested.-->

    <form id="form1" runat="server">
    <div style="margin:0 auto">
        <h3>Your Total<sub>$&nbsp;&nbsp;   </sub><asp:Label ID="aggPricelbl" runat="server" Text="Label"></asp:Label>
            <br />
            
            Please login to Paypal to continue transaction
        </h3>
        <hr />
    </div>
    </form>

    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
        <div style="margin: 0 auto">
                    <input type="hidden" name="cmd" value="_xclick" />
                    <input type="hidden" name="business" value="ipgroup9_biddle@yahoo.com" />
                    <input type="hidden" name="item_name" value="GymCart" />
                    <input type="hidden" name="currency_code" value="USD" />
                    <input type="hidden" name="amount" value='<%= Session["AggTotal"] %>' />
                    <!--check code behind, if failed, 0.00 will be charged-->
                    <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif"" name="submit" alt="Make payments with PayPal - it's fast, free and secure!" />
            </div>    
            </form> 
</body>
</html>
