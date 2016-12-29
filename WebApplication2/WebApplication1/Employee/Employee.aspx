<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/NestedMasterPage4.master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplication1.Employee.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Employee1" runat="server">

    <h2><strong>Welcome to Your Management Page</strong></h2>
    <p>
        &nbsp;</p>
    <p>
        This side of the page is meant to help you manage your information</p>
<p>
        &nbsp;</p>
<p>
        <br />
        Click on View Information to start.
        </p>
    <p>
        &nbsp;</p>


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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Emp_Tbl] WHERE ([emp_UserName] = @emp_UserName)" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:SessionParameter Name="emp_UserName" SessionField="empname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Emp_Tbl] WHERE ([emp_UserName] = @emp_UserName)" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:SessionParameter Name="emp_UserName" SessionField="empname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Aqua" BorderColor="#006666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="emp_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" InsertVisible="False" ReadOnly="True" SortExpression="emp_ID" />
                        <asp:BoundField DataField="emp_UserName" HeaderText="emp_UserName" SortExpression="emp_UserName" />
                        <asp:BoundField DataField="em_passwd" HeaderText="em_passwd" SortExpression="em_passwd" />
                        <asp:BoundField DataField="em_FirstName" HeaderText="em_FirstName" SortExpression="em_FirstName" />
                        <asp:BoundField DataField="em_LastName" HeaderText="em_LastName" SortExpression="em_LastName" />
                        <asp:BoundField DataField="em_Email" HeaderText="em_Email" SortExpression="em_Email" />
                        <asp:BoundField DataField="em_Paypal" HeaderText="em_Paypal" SortExpression="em_Paypal" />
                        <asp:BoundField DataField="em_Messg" HeaderText="em_Messg" SortExpression="em_Messg" />
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
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="emp_ID" DataSourceID="SqlDataSource2" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="260px" GridLines="None" ForeColor="#333333" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="emp_ID" HeaderText="emp_ID" SortExpression="emp_ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="emp_UserName" HeaderText="emp_UserName" SortExpression="emp_UserName" />
                        <asp:BoundField DataField="em_passwd" HeaderText="em_passwd" SortExpression="em_passwd" />
                        <asp:BoundField DataField="em_FirstName" HeaderText="em_FirstName" SortExpression="em_FirstName" />
                        <asp:BoundField DataField="em_LastName" HeaderText="em_LastName" SortExpression="em_LastName" />
                        <asp:BoundField DataField="em_Email" HeaderText="em_Email" SortExpression="em_Email" />
                        <asp:BoundField DataField="em_Paypal" HeaderText="em_Paypal" SortExpression="em_Paypal" />
                        <asp:BoundField DataField="em_Messg" HeaderText="em_Messg" SortExpression="em_Messg" />
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
