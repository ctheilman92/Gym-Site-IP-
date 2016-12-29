<%@ Page Title="" Language="C#" MasterPageFile="~/StoreFront.master" AutoEventWireup="true" CodeBehind="Finalize_Checkout.aspx.cs" Inherits="WebApplication1.BillShipWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="shopNestedHeadCPH" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ShopNestedCPH" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="well col-lg-12" style="text-align: center; margin: 0 auto; width: 100%;">
                <h2>Verify Your information</h2>
            </div>
        </div>
        <hr />


        <div class="row">
            <div class="col-lg-12">
                <div id="billDiv" class="well col-lg-5" style="float: left;">
                    <h3 style="text-align: center;">Billing Info</h3>
                    <hr />
                    <div class="form-group col-lg-6" style="left: 0px; top: -20px">
                            <br />
                        First Name: &nbsp<asp:RequiredFieldValidator ID="billFnameRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="BillFNTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="BillFNTextBox" CssClass="form-control" runat="server" />
                        Last Name: &nbsp<asp:RequiredFieldValidator ID="billlnRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="BillLNTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="BillLNTextBox" CssClass="form-control" runat="server" />
                        Street Address: &nbsp<asp:RequiredFieldValidator ID="billstreetRFV" runat="server" ErrorMessage="*Required" ControlToValidate="BillStreetTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="BillStreetTextBox" CssClass="form-control" runat="server" />
                        City: &nbsp<asp:RequiredFieldValidator ID="billcityRFV" runat="server" ErrorMessage="*Required" ControlToValidate="BillCityTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="BillCityTextBox" CssClass="form-control" runat="server" />
                        State: &nbsp<asp:RequiredFieldValidator ID="billstateRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="BillStatesDDL"></asp:RequiredFieldValidator>
                                <br />
                        <asp:DropDownList ID="BillStatesDDL" CssClass="form-control" runat="server">
                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                            <asp:ListItem Value="CA">California</asp:ListItem>
                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
                            <asp:ListItem Value="FL">Florida</asp:ListItem>
                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                            <asp:ListItem Value="ME">Maine</asp:ListItem>
                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
                            <asp:ListItem Value="MT">Montana</asp:ListItem>
                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                            <asp:ListItem Value="NY">New York</asp:ListItem>
                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                            <asp:ListItem Value="TX">Texas</asp:ListItem>
                            <asp:ListItem Value="UT">Utah</asp:ListItem>
                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
                            <asp:ListItem Value="WA">Washington</asp:ListItem>
                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group col-lg-6">
                        ZipCode: &nbsp<asp:RequiredFieldValidator ID="billzipRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="BillZipTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="BillZipTextBox" CssClass="form-control" runat="server" />
                        CC-Number: &nbsp<asp:RequiredFieldValidator ID="ccnumRFV" runat="server" ForeColor="Red" ErrorMessage="*Required" ControlToValidate="CCNumTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="CCNumTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        Card Type: &nbsp<asp:RequiredFieldValidator ID="cctypeRFV" runat="server" ForeColor="Red" ErrorMessage="*Required" ControlToValidate="CCTypeDDL"></asp:RequiredFieldValidator>
                                <br>
                        <asp:DropDownList ID="CCTypeDDL" CssClass="form-control" runat="server">
                            <asp:ListItem Value="Discover">Discover</asp:ListItem>
                            <asp:ListItem Value="Visa">Visa</asp:ListItem>
                            <asp:ListItem Value="American Express">American Express</asp:ListItem>
                        </asp:DropDownList>
                        CVV Code: &nbsp<asp:RequiredFieldValidator ID="cvvRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="CVVTextBox"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="CVVTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                        <br />
                        Same Shipping Address?
                                <br />
                            <asp:RadioButton ID="RadioSameAs" runat="server" OnCheckedChanged="RadioSameAs_CheckedChanged" AutoPostBack="true" />
                    </div>
                    
        <br />
        <br />
        <hr />
                    <div class="form-group col-lg-12">
                        <div style="float: left;">
                        </div>
                        <div style="float: right;">
                            <asp:Button ID="ClearBillBtn" CssClass="btn btn-sm btn-danger" runat="server" Text="Clear" OnClick="ClearBillBtn_Click" />
                        </div>
                    </div>
                </div>



                <div id="shipDiv" class="well col-lg-5" style="float: right; height: 100%">
                    <h3 style="text-align: center;">Shipping Info</h3>
                    <hr />

                    <div class="form-group col-lg-6">
                        First Name: &nbsp<asp:RequiredFieldValidator ID="shipfnRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="shipFNTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="shipFNTextBox" CssClass="form-control" runat="server" />
                        Last Name: &nbsp<asp:RequiredFieldValidator ID="shiplnRFV" runat="server" ForeColor="Red" ErrorMessage="*Required" ControlToValidate="shipLNTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="shipLNTextBox" CssClass="form-control" runat="server" />
                        Street Address: &nbsp<asp:RequiredFieldValidator ID="shipstreetRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="shipStreetTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="shipStreetTextBox" CssClass="form-control" runat="server" />
                    </div>

                    <div class="form-group col-lg-6">
                        City: &nbsp<asp:RequiredFieldValidator ID="shipcityRFV" ForeColor="Red" runat="server" ErrorMessage="*Required" ControlToValidate="shipCityTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="shipCityTextBox" CssClass="form-control" runat="server" />
                        State: &nbsp<asp:RequiredFieldValidator ForeColor="Red" ID="shipstateRFV" runat="server" ErrorMessage="*Required" ControlToValidate="shipStateDDL"></asp:RequiredFieldValidator>
                                <br />
                        <asp:DropDownList ID="shipStateDDL" CssClass="form-control" runat="server">
                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                            <asp:ListItem Value="CA">California</asp:ListItem>
                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
                            <asp:ListItem Value="FL">Florida</asp:ListItem>
                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                            <asp:ListItem Value="ME">Maine</asp:ListItem>
                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
                            <asp:ListItem Value="MT">Montana</asp:ListItem>
                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                            <asp:ListItem Value="NY">New York</asp:ListItem>
                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                            <asp:ListItem Value="TX">Texas</asp:ListItem>
                            <asp:ListItem Value="UT">Utah</asp:ListItem>
                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
                            <asp:ListItem Value="WA">Washington</asp:ListItem>
                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                        </asp:DropDownList>
                        ZipCode: &nbsp<asp:RequiredFieldValidator ID="shipzipRFV" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="shipZipTextBox"></asp:RequiredFieldValidator>
                                <br>
                        <asp:TextBox ID="shipZipTextBox" CssClass="form-control" runat="server" />
                    </div>


                    <br />
                    <br />
                    <div class="form-group col-lg-12">
                        <div style="float: left;"></div>
                        <div style="float: right;">
                            <asp:Button ID="shipCancelBtn" CssClass="btn btn-sm btn-danger" OnClick="ClearShipBtn_Click" runat="server" Text="Clear" />
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <br />
        <br />
        <hr />
        <div class="row">
            <div id="FinalizeDiv" class="col-lg-12">
                <asp:Label ID="lbltax" runat="server" Text="Taxes: @8.25%"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="FinalizeBtn" CssClass="btn btn-lg btn-primary" runat="server" Text="Order Now" OnClick="FinalizeBtn_Click" />
            </div>
        </div>

                <br />
                <br />

                <!--DATASOURCES -->
                <asp:SqlDataSource ID="InventorySqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [Inventory] WHERE [ProdID] = @ProdID" InsertCommand="INSERT INTO [Inventory] ([ProdName], [BrandName], [Description], [Price], [Units], [ImageName], [Category]) VALUES (@ProdName, @BrandName, @Description, @Price, @Units, @ImageName, @Category)" SelectCommand="SELECT * FROM [Inventory]" UpdateCommand="UPDATE [Inventory] SET [ProdName] = @ProdName, [BrandName] = @BrandName, [Description] = @Description, [Price] = @Price, [Units] = @Units, [ImageName] = @ImageName, [Category] = @Category WHERE [ProdID] = @ProdID">
                    <DeleteParameters>
                        <asp:Parameter Name="ProdID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProdName" Type="String" />
                        <asp:Parameter Name="BrandName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Units" Type="Int32" />
                        <asp:Parameter Name="ImageName" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProdName" Type="String" />
                        <asp:Parameter Name="BrandName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Units" Type="Int32" />
                        <asp:Parameter Name="ImageName" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="ProdID" Type="Int32" />
                    </UpdateParameters>
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="cartByUserSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [cart] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="UID" Type="Int32" />
                    </SelectParameters>
    </asp:SqlDataSource>
                <asp:SqlDataSource ID="ShippingSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" DeleteCommand="DELETE FROM [Shipping] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Shipping] ([FirstName], [LastName], [Street], [City], [State], [zip]) VALUES (@FirstName, @LastName, @Street, @City, @State, @zip)" SelectCommand="SELECT * FROM [Shipping] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Shipping] SET [FirstName] = @FirstName, [LastName] = @LastName, [Street] = @Street, [City] = @City, [State] = @State, [zip] = @zip WHERE [UserID] = @UserID">
                    <DeleteParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="zip" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="UID" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="zip" Type="Int32" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="OrdersSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Orders] WHERE ([OrderID] = @OrderID)" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([OrderID], [Subtotal], [ItemsOrdered]) VALUES (@OrderID, @Subtotal, @ItemsOrdered)" UpdateCommand="UPDATE [Orders] SET [Subtotal] = @Subtotal, [ItemsOrdered] = @ItemsOrdered WHERE [OrderID] = @OrderID">
                    <DeleteParameters>
                        <asp:Parameter Name="OrderID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OrderID" Type="Int32" />
                        <asp:Parameter Name="Subtotal" Type="Double" />
                        <asp:Parameter Name="ItemsOrdered" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="OrderID" SessionField="OID" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Subtotal" Type="Double" />
                        <asp:Parameter Name="ItemsOrdered" Type="Int32" />
                        <asp:Parameter Name="OrderID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="BillingSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Billing]">
                </asp:SqlDataSource>

        <br />
        <asp:Label ID="ErrChk" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>


</asp:Content>
