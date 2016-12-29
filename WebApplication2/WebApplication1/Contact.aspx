<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact</h2>
    <hr />
    <br />
    <div id="contactParagraph">
        <p>
            Stumble upon a bug?
        </p>
        <p>
            Issues with registration?
        </p>
        <p>
            Just want to leave a message?
        </p>
        <p>
            Let us know.
        </p>
    </div>
    <br />
    <asp:TextBox ID="txtContact" runat="server" Height="244px" Width="100%" TextMode="MultiLine" CssClass="txtStd">

    </asp:TextBox>
    
    <p>
        <br />
        Email (optional):
    </p>
<asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Email" TextMode="Email" Width="100%" CssClass="txtStd" ></asp:TextBox>
<br />
<br />
<div class="col-md-5"></div>
<div class="col-md-4"><asp:Button ID="Button1" runat="server" CssClass="btn btn-default" OnClick="Button1_Click" Text="Transmit" Width="40%"/></div>
<div class="col-md-3">
    <asp:Label ID="lblconfirm" runat="server" Text="MESSAGE SENT!" Visible="false"></asp:Label></div>


</asp:Content>
