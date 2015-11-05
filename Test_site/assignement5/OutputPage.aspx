<%@ Page Title="" Language="C#" MasterPageFile="~/Signup.Master" AutoEventWireup="true" CodeBehind="OutputPage.aspx.cs" Inherits="assignement5.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width:130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="two" class="wrapper alt style2">
						<section class="spotlight">
							<div class="image"><img src="images/pic01.jpg" alt="" /></div><div class="content">
								<h2>Signup confirmation </h2><br />
								<p><asp:Label ID="Label2" runat="server" ></asp:Label></p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="images/pic02.jpg" alt="" /></div><div class="content">
								<h2>Whats Next?</h2><br />
								<p>Now that you are registed with this account you can fully enjoy what this site has to offer.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="images/pic03.jpg" alt="" /></div><div class="content">
								<h2>New User<br /></h2>
								<p>Feel free to make more than one user otherwise please press continue!</p>
							</div>
						</section>
                        <br />
        
            <table style="width:160%;">
            <tr class="auto-style1">
                <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New User" BackColor="#2B343D" ForeColor="White" /></td>
                <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Continue to Site" BackColor="#242B33" ForeColor="White" /></td>

            </tr>
                </table>
    
        


	</section>
</asp:Content>
