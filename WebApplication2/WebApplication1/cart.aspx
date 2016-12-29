<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication1.CartWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 24px;
        }
    </style>
    </asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <div class="container">
        <div class="row">

                                <!--ALL DATABOUND SERVER CONTROLS ARE INDRECT REFERENCES. use FindControl in code-behind-->
            <asp:ListView ID="CartLV" runat="server" DataKeyNames="CartID" OnItemCommand="CartLV_ItemCommand" DataSourceID="CartInvUserViewDS">
                <EditItemTemplate>
                    <div class="well col-lg-7">
                        <div class="col-lg-6">
                            <h4>
                                <asp:Label ID="lblProdName" runat="server" Text='<%# Eval("ProdName") %>' /></h4>
                            <hr />
                            <img class="img-thumbnail" style="width: 71px; height: 100px;" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                            <br />
                        </div>
                        <div class="col-lg-4" style="float: right;">
                            <div>
                                <h4 style="color: #008000"><sub>$ </sub>
                                    <asp:Label ID="ProdPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label></h4>
                                <hr />
                                <br />
                                UnitsToOrder:
                                    <asp:TextBox runat="server" ID="UTOtxt" Text='<%# Eval("UnitsToOrder") %>' Width="30px" />
                                <br />
                                <br />
                                <span>
                                    <asp:Button ID="update" CommandName="cmdUpdateUTO" CommandArgument='<%# Eval("ProdName") %>' CssClass="btn-info btn btn-sm" runat="server" Text="Update" />
                                    &nbsp
                                    <asp:Button ID="DeleteItem" CssClass="btn btn-sm btn-info" CommandArgument='<%# Eval("ProdName") %>' OnClick="DeleteItem" runat="server" Text="Delete" /></span>
                            </div>
                        </div>
                    </div>
                </EditItemTemplate>
                <ItemTemplate>
                    <div class="well col-lg-7">
                        <div class="col-lg-6">
                            <h4>
                                <asp:Label ID="lblProdName" runat="server" Text='<%# Eval("ProdName") %>' /></h4>
                            <hr />
                            <img class="img-thumbnail" style="width: 71px; height: 100px;" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                            <br />
                        </div>
                        <div class="col-lg-4" style="float: right;">
                            <div>
                                <h4 style="color: #008000"><sub>$ </sub>
                                    <asp:Label ID="ProdPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label></h4>
                                <hr />
                                <br />
                                UnitsToOrder:
                                    <asp:TextBox runat="server" ID="UTOtxt" Text='<%# Eval("UnitsToOrder") %>' Width="30px" />
                                <br />
                                <br />
                                <span>
                                    <asp:Button ID="update" CommandName="cmdUpdateUTO" CommandArgument='<%# Eval("ProdName") %>' CssClass="btn-info btn btn-sm" runat="server" Text="Update" />
                                    &nbsp
                                    <asp:Button ID="DeleteItem" CssClass="btn btn-sm btn-info" CommandArgument='<%# Eval("ProdName") %>' OnClick="DeleteItem" runat="server" Text="Delete" /></span>
                            </div>
                        </div>
                    </div>
                    </ItemTemplate>
                <LayoutTemplate>

                    <div id="itemPlaceholderContainer" runat="server" style="">
                        
                            <ul>
                                <asp:PlaceHolder ID="itemplaceholder" runat="server"></asp:PlaceHolder>
                            </ul>
                        
                    </div>

                </LayoutTemplate>

            </asp:ListView>
            </div>
            <div style="float:left;">
                <h2><asp:Label ID="lblSubtotal" runat="server" Text="SUBTOTAL: $"></asp:Label></h2>
                <hr />
                <br />
                <!--UNFINISHED CHECKOUT-->
                <asp:Button ID="CheckOut" CssClass="btn btn-lg btn-primary" runat="server" OnClick="Checkout" Text="Checkout" />
                OR &nbsp&nbsp
                <asp:ImageButton ID="PayPalredirectbtn" src="http://www.paypal.com/en_US/i/btn/x-click-but01.gif" runat="server" OnClick="PayPalredirectbtn_Click" Width="83px" ImageAlign="Top" />

                <br />

                <asp:Label ID="errChk" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
            <asp:SqlDataSource ID="DSOrders" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
            <br />
    </div>


    <asp:SqlDataSource ID="CartInvUserViewDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [CartViewData] WHERE UserID=@UID">
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="UID" />
        </SelectParameters>
            </asp:SqlDataSource>

       










    <!--THIS DATASOURCE USES A VIEW TO GET MULTIPLE TABLE DATA-->

       










    </asp:Content>
