<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNevbar.master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplication1.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Admin1" runat="server">

     <h2>&nbsp;<strong>Welcome to Employee Home</strong></h2>
    <p>
        &nbsp;</p>
     <p>
        This side of the page is meant to help you manage Employee users</p>
<p>
<p>
        On Employee info you will find the Employee database in which you are able to edit and insert in new employee's. 
        Please note that this is the only way to manage employee's. Click on View Emloyees to start.
        </p>
<p>


    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewUsers" runat="server" OnClick="btnViewUsers_Click" Text="View Employees" Width="188px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [Emp_Tbl] WHERE [emp_ID] = @original_emp_ID AND (([emp_UserName] = @original_emp_UserName) OR ([emp_UserName] IS NULL AND @original_emp_UserName IS NULL)) AND (([em_Passwd] = @original_em_Passwd) OR ([em_Passwd] IS NULL AND @original_em_Passwd IS NULL)) AND (([em_FirstName] = @original_em_FirstName) OR ([em_FirstName] IS NULL AND @original_em_FirstName IS NULL)) AND (([em_LastName] = @original_em_LastName) OR ([em_LastName] IS NULL AND @original_em_LastName IS NULL)) AND (([em_Email] = @original_em_Email) OR ([em_Email] IS NULL AND @original_em_Email IS NULL))" InsertCommand="INSERT INTO [Emp_Tbl] ([emp_UserName], [em_Passwd], [em_FirstName], [em_LastName], [em_Email]) VALUES (@emp_UserName, @em_Passwd, @em_FirstName, @em_LastName, @em_Email)" SelectCommand="SELECT [emp_ID], [emp_UserName], [em_Passwd], [em_FirstName], [em_LastName], [em_Email] FROM [Emp_Tbl]" UpdateCommand="UPDATE [Emp_Tbl] SET [emp_UserName] = @emp_UserName, [em_Passwd] = @em_Passwd, [em_FirstName] = @em_FirstName, [em_LastName] = @em_LastName, [em_Email] = @em_Email WHERE [emp_ID] = @original_emp_ID AND (([emp_UserName] = @original_emp_UserName) OR ([emp_UserName] IS NULL AND @original_emp_UserName IS NULL)) AND (([em_Passwd] = @original_em_Passwd) OR ([em_Passwd] IS NULL AND @original_em_Passwd IS NULL)) AND (([em_FirstName] = @original_em_FirstName) OR ([em_FirstName] IS NULL AND @original_em_FirstName IS NULL)) AND (([em_LastName] = @original_em_LastName) OR ([em_LastName] IS NULL AND @original_em_LastName IS NULL)) AND (([em_Email] = @original_em_Email) OR ([em_Email] IS NULL AND @original_em_Email IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_emp_ID" Type="Int32" />
                    <asp:Parameter Name="original_emp_UserName" Type="String" />
                    <asp:Parameter Name="original_em_Passwd" Type="String" />
                    <asp:Parameter Name="original_em_FirstName" Type="String" />
                    <asp:Parameter Name="original_em_LastName" Type="String" />
                    <asp:Parameter Name="original_em_Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="emp_UserName" Type="String" />
                    <asp:Parameter Name="em_Passwd" Type="String" />
                    <asp:Parameter Name="em_FirstName" Type="String" />
                    <asp:Parameter Name="em_LastName" Type="String" />
                    <asp:Parameter Name="em_Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="emp_UserName" Type="String" />
                    <asp:Parameter Name="em_Passwd" Type="String" />
                    <asp:Parameter Name="em_FirstName" Type="String" />
                    <asp:Parameter Name="em_LastName" Type="String" />
                    <asp:Parameter Name="em_Email" Type="String" />
                    <asp:Parameter Name="original_emp_ID" Type="Int32" />
                    <asp:Parameter Name="original_emp_UserName" Type="String" />
                    <asp:Parameter Name="original_em_Passwd" Type="String" />
                    <asp:Parameter Name="original_em_FirstName" Type="String" />
                    <asp:Parameter Name="original_em_LastName" Type="String" />
                    <asp:Parameter Name="original_em_Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [Emp_Tbl] WHERE [emp_ID] = @original_emp_ID AND (([emp_UserName] = @original_emp_UserName) OR ([emp_UserName] IS NULL AND @original_emp_UserName IS NULL)) AND (([em_FirstName] = @original_em_FirstName) OR ([em_FirstName] IS NULL AND @original_em_FirstName IS NULL)) AND (([em_LastName] = @original_em_LastName) OR ([em_LastName] IS NULL AND @original_em_LastName IS NULL)) AND (([em_Messg] = @original_em_Messg) OR ([em_Messg] IS NULL AND @original_em_Messg IS NULL))" InsertCommand="INSERT INTO [Emp_Tbl] ([emp_UserName], [em_FirstName], [em_LastName], [em_Messg]) VALUES (@emp_UserName, @em_FirstName, @em_LastName, @em_Messg)" SelectCommand="SELECT [emp_ID], [emp_UserName], [em_FirstName], [em_LastName], [em_Messg] FROM [Emp_Tbl]" UpdateCommand="UPDATE [Emp_Tbl] SET [emp_UserName] = @emp_UserName, [em_FirstName] = @em_FirstName, [em_LastName] = @em_LastName, [em_Messg] = @em_Messg WHERE [emp_ID] = @original_emp_ID AND (([emp_UserName] = @original_emp_UserName) OR ([emp_UserName] IS NULL AND @original_emp_UserName IS NULL)) AND (([em_FirstName] = @original_em_FirstName) OR ([em_FirstName] IS NULL AND @original_em_FirstName IS NULL)) AND (([em_LastName] = @original_em_LastName) OR ([em_LastName] IS NULL AND @original_em_LastName IS NULL)) AND (([em_Messg] = @original_em_Messg) OR ([em_Messg] IS NULL AND @original_em_Messg IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_emp_ID" Type="Int32" />
                    <asp:Parameter Name="original_emp_UserName" Type="String" />
                    <asp:Parameter Name="original_em_FirstName" Type="String" />
                    <asp:Parameter Name="original_em_LastName" Type="String" />
                    <asp:Parameter Name="original_em_Messg" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                     <asp:Parameter Name="emp_UserName" Type="String" />
                    <asp:Parameter Name="em_FirstName" Type="String" />
                    <asp:Parameter Name="em_LastName" Type="String" />
                    <asp:Parameter Name="em_Messg" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="emp_UserName" Type="String" />
                    <asp:Parameter Name="em_FirstName" Type="String" />
                    <asp:Parameter Name="em_LastName" Type="String" />
                    <asp:Parameter Name="em_Messg" Type="String" />
                    <asp:Parameter Name="original_emp_ID" Type="Int32" />
                    <asp:Parameter Name="original_emp_UserName" Type="String" />
                    <asp:Parameter Name="original_em_FirstName" Type="String" />
                    <asp:Parameter Name="original_em_LastName" Type="String" />
                    <asp:Parameter Name="original_em_Messg" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="emp_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" InsertVisible="False" ReadOnly="True" SortExpression="emp_ID" />
                        <asp:BoundField DataField="emp_UserName" HeaderText="emp_UserName" SortExpression="emp_UserName" />
                        <asp:BoundField DataField="em_Passwd" HeaderText="em_Passwd" SortExpression="em_Passwd" />
                        <asp:BoundField DataField="em_FirstName" HeaderText="em_FirstName" SortExpression="em_FirstName" />
                        <asp:BoundField DataField="em_LastName" HeaderText="em_LastName" SortExpression="em_LastName" />
                        <asp:BoundField DataField="em_Email" HeaderText="em_Email" SortExpression="em_Email" />
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
                        <p style="color: #000000; font-size: x-large">Please use this to Add in New Employees 
                        </p>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="emp_ID" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="400px" GridLines="None" AllowPaging="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" InsertVisible="False" ReadOnly="True" SortExpression="emp_ID" />
                        <asp:BoundField DataField="emp_UserName" HeaderText="emp_UserName" SortExpression="emp_UserName" />
                        <asp:BoundField DataField="em_FirstName" HeaderText="em_FirstName" SortExpression="em_FirstName" />
                        <asp:BoundField DataField="em_LastName" HeaderText="em_LastName" SortExpression="em_LastName" />
                        <asp:BoundField DataField="em_Messg" HeaderText="em_Messg" SortExpression="em_Messg" >
                        </asp:BoundField>
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
