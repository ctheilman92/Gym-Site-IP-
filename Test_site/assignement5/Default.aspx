<%@ Page Title="" Language="C#" MasterPageFile="~/Signup.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="assignement5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="banner">
						<div class="inner">
							
							<h2> ----Simply Cloud----</h2>
							<p>Please enter a UserName Below:
 &nbsp;<asp:TextBox ID="txtBoxUsername" runat="server" MaxLength="50" OnClick="this.value=''">username</asp:TextBox>
                            <asp:Label ID="lblUsernameOutput" runat="server" Text="* Field is required." ForeColor="Red" Visible="False"></asp:Label>
                            </p>
                            
                            <p>
                                <asp:Label ID="lblPassword" runat="server" Text="Please enter a Email Below:"></asp:Label>
                                &nbsp;<asp:TextBox ID="txtBoxEmail" runat="server" MaxLength="50" TextMode="Email" OnClick="this.value=''">email</asp:TextBox>
                                <asp:TextBox ID="txtBoxPassword" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
        <asp:Label ID="lblEmailOutput" runat="server" Text="* Field is required." ForeColor="Red" Visible="False"></asp:Label>
                            </p>
						    <br />
							<ul class="actions">
								<li><asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" BackColor="Red" /></li>
                                <li><asp:Label ID="lblLogin" runat="server" Text="Already have an account?"></asp:Label></li>
                                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Visible="False" />  
                                <li><asp:Button ID="btnLoginDisplay" runat="server" OnClick="btnLoginDisplay_Click" Text="Login" BackColor="Red" /></li>

							</ul>
						</div>
						<a href="#one" class="more scrolly">Experience the Net</a>
        
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetPassig4_2ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
					</section>
</asp:Content>
