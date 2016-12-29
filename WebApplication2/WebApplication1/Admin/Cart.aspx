﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNevbar.master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication1.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Admin1" runat="server">

     
     <h2>&nbsp;<strong>Cart Database</strong></h2>
    <p>
        &nbsp;</p>
     <p>
        This page is meant to manage the Cart Database used in the store</p>
<p>
<p>
        You are able to edit and insert in new Cart informatiion to the Cart Database. 
        Please note that this is the only way to Directly modify the Cart Database. Click on View Cart Database to start.
        </p>
<p>


    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewUsers" runat="server" OnClick="btnViewUsers_Click" Text="View Cart Database" Width="188px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [cart]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [cart]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" />
                        <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                        <asp:BoundField DataField="UnitsToOrder" HeaderText="UnitsToOrder" SortExpression="UnitsToOrder" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333"/>
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <br />
                        <p style="color: #000000; font-size: x-large">Please use this Add to Cart</p>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="400px" GridLines="None" AllowPaging="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" />
                        <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                        <asp:BoundField DataField="UnitsToOrder" HeaderText="UnitsToOrder" SortExpression="UnitsToOrder" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                

            </div>
        </asp:View>
    </asp:MultiView>


</asp:Content>
