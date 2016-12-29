<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="EmployeeSignin.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
    Employee Login Page  
    </h2>
    <h4>Login to start managing your website.</h4>
     <hr />
    <table style="width:100%;">
        <tr>
            <td class="auto-style8">Username:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtBoxUsername" CssClass="form-control" runat="server" Width="324px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* This Field Is Required" ForeColor="Red" ControlToValidate="txtBoxUsername"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtBoxPassword" CssClass="form-control" runat="server" TextMode="Password" Width="324px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* This Field Is Required" ForeColor="Red" ControlToValidate="txtBoxPassword"></asp:RequiredFieldValidator>
             </td>
            
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
    
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-default" Text="Login" OnClick="btnLogin_Click" Height="46px" Width="83px" />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Emp_Tbl]"></asp:SqlDataSource>
    
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblUsernameOutput" ForeColor="Red" runat="server"></asp:Label>
            </td>
        </tr>
    </table> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
