<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNevbar.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Admin1" runat="server">

         <h2><strong>Welcome to the Admin management side</strong></h2>
    <p>
        &nbsp;</p>
         <p>
        This side of the page is meant to help you manage Admin users</p>
<p>
        &nbsp;</p>
<p>
        <br />
        On Admin Infor you will find the Admin database in which you are able to edit and insert in new Admin users. 
        Please note that this is the only way to manage Admin user's.
         </p>
<p>
    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewadminUsers" runat="server" OnClick="btnViewadminUsers_Click" Text="View Admin Users" Width="188px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [Admin_Tbl] WHERE [AdminID] = @original_AdminID AND (([Admin_Username] = @original_Admin_Username) OR ([Admin_Username] IS NULL AND @original_Admin_Username IS NULL)) AND (([Admin_Passwd] = @original_Admin_Passwd) OR ([Admin_Passwd] IS NULL AND @original_Admin_Passwd IS NULL)) AND (([Admin_FirstName] = @original_Admin_FirstName) OR ([Admin_FirstName] IS NULL AND @original_Admin_FirstName IS NULL)) AND (([Admin_LastName] = @original_Admin_LastName) OR ([Admin_LastName] IS NULL AND @original_Admin_LastName IS NULL)) AND (([Admin_Email] = @original_Admin_Email) OR ([Admin_Email] IS NULL AND @original_Admin_Email IS NULL))" InsertCommand="INSERT INTO [Admin_Tbl] ([Admin_Username], [Admin_Passwd], [Admin_FirstName], [Admin_LastName], [Admin_Email]) VALUES (@Admin_Username, @Admin_Passwd, @Admin_FirstName, @Admin_LastName, @Admin_Email)" SelectCommand="SELECT [AdminID], [Admin_Username], [Admin_Passwd], [Admin_FirstName], [Admin_LastName], [Admin_Email] FROM [Admin_Tbl]" UpdateCommand="UPDATE [Admin_Tbl] SET [Admin_Username] = @Admin_Username, [Admin_Passwd] = @Admin_Passwd, [Admin_FirstName] = @Admin_FirstName, [Admin_LastName] = @Admin_LastName, [Admin_Email] = @Admin_Email WHERE [AdminID] = @original_AdminID AND (([Admin_Username] = @original_Admin_Username) OR ([Admin_Username] IS NULL AND @original_Admin_Username IS NULL)) AND (([Admin_Passwd] = @original_Admin_Passwd) OR ([Admin_Passwd] IS NULL AND @original_Admin_Passwd IS NULL)) AND (([Admin_FirstName] = @original_Admin_FirstName) OR ([Admin_FirstName] IS NULL AND @original_Admin_FirstName IS NULL)) AND (([Admin_LastName] = @original_Admin_LastName) OR ([Admin_LastName] IS NULL AND @original_Admin_LastName IS NULL)) AND (([Admin_Email] = @original_Admin_Email) OR ([Admin_Email] IS NULL AND @original_Admin_Email IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_AdminID" Type="Int32" />
                    <asp:Parameter Name="original_Admin_Username" Type="String" />
                    <asp:Parameter Name="original_Admin_Passwd" Type="String" />
                    <asp:Parameter Name="original_Admin_FirstName" Type="String" />
                    <asp:Parameter Name="original_Admin_LastName" Type="String" />
                    <asp:Parameter Name="original_Admin_Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Admin_Username" Type="String" />
                    <asp:Parameter Name="Admin_Passwd" Type="String" />
                    <asp:Parameter Name="Admin_FirstName" Type="String" />
                    <asp:Parameter Name="Admin_LastName" Type="String" />
                    <asp:Parameter Name="Admin_Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Admin_Username" Type="String" />
                    <asp:Parameter Name="Admin_Passwd" Type="String" />
                    <asp:Parameter Name="Admin_FirstName" Type="String" />
                    <asp:Parameter Name="Admin_LastName" Type="String" />
                    <asp:Parameter Name="Admin_Email" Type="String" />
                    <asp:Parameter Name="original_AdminID" Type="Int32" />
                    <asp:Parameter Name="original_Admin_Username" Type="String" />
                    <asp:Parameter Name="original_Admin_Passwd" Type="String" />
                    <asp:Parameter Name="original_Admin_FirstName" Type="String" />
                    <asp:Parameter Name="original_Admin_LastName" Type="String" />
                    <asp:Parameter Name="original_Admin_Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT [AdminID], [Admin_Username], [Admin_Passwd] FROM [Admin_Tbl]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Admin_Tbl] WHERE [AdminID] = @original_AdminID AND (([Admin_Username] = @original_Admin_Username) OR ([Admin_Username] IS NULL AND @original_Admin_Username IS NULL)) AND (([Admin_Passwd] = @original_Admin_Passwd) OR ([Admin_Passwd] IS NULL AND @original_Admin_Passwd IS NULL))" InsertCommand="INSERT INTO [Admin_Tbl] ([Admin_Username], [Admin_Passwd]) VALUES (@Admin_Username, @Admin_Passwd)" UpdateCommand="UPDATE [Admin_Tbl] SET [Admin_Username] = @Admin_Username, [Admin_Passwd] = @Admin_Passwd WHERE [AdminID] = @original_AdminID AND (([Admin_Username] = @original_Admin_Username) OR ([Admin_Username] IS NULL AND @original_Admin_Username IS NULL)) AND (([Admin_Passwd] = @original_Admin_Passwd) OR ([Admin_Passwd] IS NULL AND @original_Admin_Passwd IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_AdminID" Type="Int32" />
                    <asp:Parameter Name="original_Admin_Username" Type="String" />
                    <asp:Parameter Name="original_Admin_Passwd" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Admin_Username" Type="String" />
                    <asp:Parameter Name="Admin_Passwd" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Admin_Username" Type="String" />
                    <asp:Parameter Name="Admin_Passwd" Type="String" />
                    <asp:Parameter Name="original_AdminID" Type="Int32" />
                    <asp:Parameter Name="original_Admin_Username" Type="String" />
                    <asp:Parameter Name="original_Admin_Passwd" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="AdminID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="AdminID" HeaderText="AdminID" InsertVisible="False" ReadOnly="True" SortExpression="AdminID" />
                        <asp:BoundField DataField="Admin_Username" HeaderText="Admin_Username" SortExpression="Admin_Username" />
                        <asp:BoundField DataField="Admin_Passwd" HeaderText="Admin_Passwd" SortExpression="Admin_Passwd" />
                        <asp:BoundField DataField="Admin_FirstName" HeaderText="Admin_FirstName" SortExpression="Admin_FirstName" />
                        <asp:BoundField DataField="Admin_LastName" HeaderText="Admin_LastName" SortExpression="Admin_LastName" />
                        <asp:BoundField DataField="Admin_Email" HeaderText="Admin_Email" SortExpression="Admin_Email" />
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
                        <p style="color: #000000; font-size: x-large">Please use this to Add in New Admin 
                        </p>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="AdminID" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="260px" GridLines="None" ForeColor="#333333" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Admin_Username" HeaderText="Admin_Username" SortExpression="Admin_Username" />
                        <asp:BoundField DataField="Admin_Passwd" HeaderText="Admin_Passwd" SortExpression="Admin_Passwd" />
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
