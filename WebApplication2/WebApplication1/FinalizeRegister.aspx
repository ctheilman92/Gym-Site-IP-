<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="FinalizeRegister.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register.</h2>
    <h4>Create a new account</h4>
    <hr />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [User_Tbl]"></asp:SqlDataSource>
    
    <div class="form-group">
        <asp:Label runat="server"  CssClass="col-md-2 control-label">Email</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" TextMode="Email" Width="30%" ReadOnly="true"/>
        </div>
    </div>

    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Username</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtusername" CssClass="form-control" Width="30%"/>
            <asp:Label ID="lbusername" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>

        </div>
    </div>
        
    <div class="form-group">
        <asp:Label runat="server"  CssClass="col-md-2 control-label">First Name</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtfirstname"  CssClass="form-control" Width="30%"/>
            <asp:Label ID="lbfirstname" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>

        </div>
    </div>

    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Last Name</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtlastname"  CssClass="form-control" Width="30%"/>
            <asp:Label ID="lblastname" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>

        </div>
    </div>

    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Paypal ID</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="txtpaypal"  CssClass="form-control" Width="30%"/>
            <asp:Label ID="lbpaypal" runat="server" ForeColor="#CC0000" Text="* This field is required" Visible="False"></asp:Label>

        </div>
    </div>

    <p> &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbwarning" runat="server" ForeColor="#CC0000" Text="* Register failed! Please try again." Visible="False"></asp:Label></p>
      <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="Button1_Click" Text="Next" CssClass="btn btn-default" />
            </div>
      </div>
</asp:Content>
