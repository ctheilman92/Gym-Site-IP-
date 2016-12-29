<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNevbar.master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="WebApplication1.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Admin1" runat="server">

    <h2><strong>Welcome to the User Management Page</strong></h2>
    <p>
        &nbsp;</p>
    <p>
        This side of the page is meant to help you manage users on the site</p>
<p>
        &nbsp;</p>
<p>
        <br />
        On User Infor you will find the User database in which you are able to edit and insert in new Users. 
        Please note that this is not the only way to manage User's employee's also have the ability to register new User's. Click on View Users to start.
        </p>
<p>
        &nbsp;</p>

    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewUsers" runat="server" OnClick="btnViewUsers_Click" Text="View Users" Width="188px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [User_Tbl] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Passwd] = @original_Passwd) OR ([Passwd] IS NULL AND @original_Passwd IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Paypal] = @original_Paypal) OR ([Paypal] IS NULL AND @original_Paypal IS NULL)) AND (([MemberDaysleft] = @original_MemberDaysleft) OR ([MemberDaysleft] IS NULL AND @original_MemberDaysleft IS NULL))" InsertCommand="INSERT INTO [User_Tbl] ([UserName], [Passwd], [FirstName], [LastName], [Email], [Paypal], [MemberDaysleft]) VALUES (@UserName, @Passwd, @FirstName, @LastName, @Email, @Paypal, @MemberDaysleft)" SelectCommand="SELECT [UserID], [UserName], [Passwd], [FirstName], [LastName], [Email], [Paypal], [MemberDaysleft] FROM [User_Tbl]" UpdateCommand="UPDATE [User_Tbl] SET [UserName] = @UserName, [Passwd] = @Passwd, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Paypal] = @Paypal, [MemberDaysleft] = @MemberDaysleft WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Passwd] = @original_Passwd) OR ([Passwd] IS NULL AND @original_Passwd IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Paypal] = @original_Paypal) OR ([Paypal] IS NULL AND @original_Paypal IS NULL)) AND (([MemberDaysleft] = @original_MemberDaysleft) OR ([MemberDaysleft] IS NULL AND @original_MemberDaysleft IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_Passwd" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Paypal" Type="String" />
                    <asp:Parameter Name="original_MemberDaysleft" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Paypal" Type="String" />
                    <asp:Parameter Name="MemberDaysleft" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Paypal" Type="String" />
                    <asp:Parameter Name="MemberDaysleft" Type="Int32" />
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_Passwd" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Paypal" Type="String" />
                    <asp:Parameter Name="original_MemberDaysleft" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [User_Tbl] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Passwd] = @original_Passwd) OR ([Passwd] IS NULL AND @original_Passwd IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([User_Messg] = @original_User_Messg) OR ([User_Messg] IS NULL AND @original_User_Messg IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL))" InsertCommand="INSERT INTO [User_Tbl] ([UserName], [Passwd], [FirstName], [User_Messg], [LastName]) VALUES (@UserName, @Passwd, @FirstName, @User_Messg, @LastName)" SelectCommand="SELECT [UserName], [Passwd], [FirstName], [User_Messg], [LastName], [UserID] FROM [User_Tbl]" UpdateCommand="UPDATE [User_Tbl] SET [UserName] = @UserName, [Passwd] = @Passwd, [FirstName] = @FirstName, [User_Messg] = @User_Messg, [LastName] = @LastName WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Passwd] = @original_Passwd) OR ([Passwd] IS NULL AND @original_Passwd IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([User_Messg] = @original_User_Messg) OR ([User_Messg] IS NULL AND @original_User_Messg IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_Passwd" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_User_Messg" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                     <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="User_Messg" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="User_Messg" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_UserName" Type="String" />
                    <asp:Parameter Name="original_Passwd" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_User_Messg" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Passwd" HeaderText="Passwd" SortExpression="Passwd" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Paypal" HeaderText="Paypal" SortExpression="Paypal" />
                        <asp:BoundField DataField="MemberDaysleft" HeaderText="MemberDaysleft" SortExpression="MemberDaysleft" />
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
                        <p style="color: #000000; font-size: x-large">Please use this to Add in New Users 
                        </p>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="260px" GridLines="None" ForeColor="#333333" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Passwd" HeaderText="Passwd" SortExpression="Passwd" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="User_Messg" HeaderText="User_Messg" SortExpression="User_Messg" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" InsertVisible="False" ReadOnly="True" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
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
