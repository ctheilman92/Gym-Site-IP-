<%@ Page Title="" Language="C#" MasterPageFile="~/Signup.Master" AutoEventWireup="true" CodeBehind="Secondpage.aspx.cs" Inherits="assignement5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="one" class="wrapper style1 special">
						<div class="inner">
							<header class="major">
								<h2>Welcome to the Registration Page<br /></h2>
								<br />
								<p>
                                    <asp:Label ID="Label2" runat="server" Text="Username: " style="color: white"></asp:Label>
&nbsp;<br />
        <asp:TextBox ID="UsernameOutput" runat="server" ReadOnly="True"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Email: " style="color: white"></asp:Label><br />
        <asp:TextBox ID="EmailOutput" runat="server" ReadOnly="True"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="First Name: " style="color: white"></asp:Label>
        <asp:TextBox ID="txtBoxFName" runat="server"></asp:TextBox>
        <asp:Label ID="lblFirst" runat="server" ForeColor="Red" Text="* This Field is Required" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Last Name: " style="color: white"></asp:Label>
        <asp:TextBox ID="txtBoxLName" runat="server"></asp:TextBox>
        <asp:Label ID="lblLast" runat="server" ForeColor="Red" Text="* This Field is Required" Visible="False"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Country: " style="color: white"></asp:Label>
        <asp:DropDownList ID="countryList" runat="server">
            <asp:ListItem>America</asp:ListItem>
            <asp:ListItem>Mexico</asp:ListItem>
            <asp:ListItem>Canda</asp:ListItem>
            <asp:ListItem Value="Panama"></asp:ListItem>
            <asp:ListItem Value="Jamaica"></asp:ListItem>
        </asp:DropDownList>
        <br /><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Password: " style="color: white"></asp:Label>
       
        <asp:TextBox ID="txtBoxPassword1" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblPass1" runat="server" ForeColor="Red" Text="* This Field is Required" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="letterStart" runat="server" ForeColor="Red" Text="Password Must Start With a Letter" Visible="False"></asp:Label>
        <asp:RegularExpressionValidator ID="passwordReqValidation" runat="server" ControlToValidate="txtBoxPassword1" ErrorMessage="Password must, be atleast 8 digits, start with a letter, and include atleast 1 capital and 1 number" ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[A-Z])\w{8,25}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Repeat Password: " style="color: white"></asp:Label>
        <br />
        <asp:TextBox ID="txtBoxPassword2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblPass2" runat="server" ForeColor="Red" Text="* Passwords must match" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSignup" runat="server" OnClick="btnSignup_Click" Text="Signup"  BackColor="#00FFCC" />
        <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetPassig4_2ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnStartover" runat="server" OnClick="btnStartover_Click" Text="Start Over"  BackColor="Red" />



								</p>
							</header>
							<ul class="icons major">
								<li><span class="icon fa-diamond major style1"><span class="label">Lorem</span></span></li>
								<li><span class="icon fa-heart-o major style2"><span class="label">Ipsum</span></span></li>
								<li><span class="icon fa-code major style3"><span class="label">Dolor</span></span></li>
							</ul>
						</div>
					</section>
    
</asp:Content>
