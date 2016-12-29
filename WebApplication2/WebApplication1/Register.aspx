<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Register.</h2>
    <h4>Create a new account</h4>
    <hr />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [User_Tbl]"></asp:SqlDataSource>

    <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" TextMode="Email" Width="30%"/>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbemail" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>
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
        <asp:Label runat="server" CssClass="col-md-2 control-label">Confirm password</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtpassword2" TextMode="Password" CssClass="form-control" Width="30%" />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbpassword2" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>
        </div>
    </div>

    <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="Button1_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
</asp:Content>
