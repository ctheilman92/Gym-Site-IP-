<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="WebApplication1.ManageAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <h2><strong>Welcome to Your Management Page</strong></h2>
    <p>
        &nbsp;</p>
    <p>
        This side of the page is meant to help you manage your information</p>
<p>
       Please click view information to Begean &nbsp;</p>
<p>
    
    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewadminUsers" runat="server" OnClick="btnViewadminUsers_Click" Text="View Information" Width="188px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
   
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [User_Tbl] WHERE ([UserName] = @UserName)" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:SessionParameter Name="UserName" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [User_Tbl] WHERE ([UserName] = @UserName)" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:SessionParameter Name="UserName" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Paypal" HeaderText="Paypal" SortExpression="Paypal" />
                        <asp:BoundField DataField="MemberDaysleft" HeaderText="MemberDaysleft" SortExpression="MemberDaysleft" />
                        <asp:BoundField DataField="User_Messg" HeaderText="User_Messg" SortExpression="User_Messg" />
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
                        <p style="color: #000000; font-size: x-large">Please use this to Edit information 
                        </p>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="260px" GridLines="None" ForeColor="#333333" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Paypal" HeaderText="Paypal" SortExpression="Paypal" />
                        <asp:BoundField DataField="MemberDaysleft" HeaderText="MemberDaysleft" SortExpression="MemberDaysleft" />
                        <asp:BoundField DataField="User_Messg" HeaderText="User_Messg" SortExpression="User_Messg" />
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
