<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Login.</h2>
    <h4>See your Membership</h4>
    <hr />

    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Username</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtusername" CssClass="form-control" Width="30%"/>
             &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbusername" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>               
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Password</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" CssClass="form-control" Width="30%"/>
             &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbpassword" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>               
        </div>
    </div>

    
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button_Click" />
            <br />
            <br />
                 Admin? <a href="/Admin/AdminSignin.aspx">click here</a> <br />
                 Employee? <a href="/Employee/EmployeeSignin.aspx">click here</a> <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwoleFrogConnectionString(NEW-PC) %>" SelectCommand="SELECT * FROM [User_Tbl]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
    </div>


</asp:Content>
