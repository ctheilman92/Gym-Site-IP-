<%@ Page Title="" Language="C#" MasterPageFile="~/StoreFront.master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="WebApplication1.StoreWebForm" %>

<asp:Content ID="shopContent" ContentPlaceHolderID="ShopNestedCPH" runat="server">


    <!--ADVERT IMAGES (copied from mihn's carousel & tweaked)-->
    <div class="container">
        <div class="row">
            <div class="well col-lg-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Content/ad-banners/supplements_banner.jpg" width="1160" height="210" />
                    </div>
                    <div class="item">
                        <img src="Content/ad-banners/cellucor.jpg" width="1160" height="210" />
                    </div>
                    <div class="item">
                        <img src="Content/ad-banners/basshead-slider-960x540.jpg" width="1160" height="210" />
                    </div>
                    <div class="item">
                        <img src="Content/ad-banners/whey_banner.jpg" width="1160" height="210" />
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


        </div>
        </div>
    </div>


    <!---------------------inventory shop listings---------------------->

    <div class="container">
        <div class="row">
            <div class="col-md-3" style="position:relative;">
                <div class="well col-md-2" id="positably" style="position:fixed; float:left; top:462px; text-align: center;">
                    <h3>Categories</h3>
                    <hr />
                    <ul class="nav nav-tabs nav-stacked" id="myTabs">
                        <li style="font-size: larger;">
                            <asp:LinkButton ID="LBProteinTab" runat="server" OnClick="head2Proteins" Font-Bold="True" Height="1px" BackColor="WhiteSmoke"><a href="#protein" data-toggle="tab">Proteins</a></asp:LinkButton></li>
                        <li style="font-size: larger;">
                            <asp:LinkButton ID="LBEquipTab" runat="server" OnClick="head2Equip" Font-Bold="True" Height="1px" BackColor="WhiteSmoke"><a href="#equipment"  data-toggle="tab">Other Stuff</a></asp:LinkButton></li>
                        <li style="font-size: larger;">
                            <asp:LinkButton ID="LBApparelTab" runat="server" OnClick="head2Apparel" Font-Bold="true" Height="1px" BackColor="WhiteSmoke"><a href="#apparel" data-toggle="tab">Apparel</a></asp:LinkButton></li>
                    </ul>
                </div>
            </div>



            <div class="well tab-content col-lg-9">
                <h3 style="align-content: center; text-align: center;">
                    <asp:Label ID="CategorySelect" runat="server" Text="One-Stop Fitness Shop" Font-Bold="True"></asp:Label></h3>
                <hr />
                <div id="protein" class="tab-pane active">
                    <div id="proteinContent">
                        <br />
                        <asp:ListView ID="SupplementsLV" runat="server" DataSourceID="ProteinSqlDS">
                            <LayoutTemplate>
                                <div>
                                    <ul>
                                        <asp:DataPager ID="SuppDataPager" runat="server" PageSize="6">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="btn btn-sm btn-success" />
                                            </Fields>
                                        </asp:DataPager>
                                    </ul>
                                </div>

                                <div style="margin: 0 auto; padding: 2px;">
                                    <ul>
                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                    </ul>
                                </div>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <div class="well col-lg-3 pull-left thumbnail" style="height: 400px; width: 240px; text-align: center; margin: 0 10px 10px 20px;">
                                    <div>
                                        <img class="img-thumbnail" width="142" height="200" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                                        <br />
                                        <span style="align-content: center; padding-bottom: 5px;" class="fontawesome-search btn-xs">
                                            <asp:Button ID="ViewProdbtn" CssClass="btn btn-xs" runat="server" CommandArgument='<%# Eval("ImageName") %>' OnClick="ViewProduct" Text="View Product" /></span>
                                    </div>
                                    <div>
                                        <h4 id="ProductName"><%# Eval("ProdName") %></h4>
                                        <sub>By: <%# Eval("BrandName") %></sub>
                                    </div>
                                    <br />
                                    <span>
                                        <h4 id="priceOfProd" style="color: #008000"><sub>$ </sub><%# Eval("Price") %></h4>
                                    </span>
                                    <asp:Button ID="Button1" CssClass="btn btn-sm btn-info" runat="server" CommandArgument='<%# Eval("ProdName") %>' OnClick="AddToCart_Click" Text="Add To Cart" /></li>
                                </div>

                         
                            </ItemTemplate>
                        </asp:ListView>

                    </div>
                </div>
                <div id="equipment" class="tab-pane">
                    <div id="equipmentContent">
                        <br />
                        <asp:ListView ID="EquipLV" runat="server" DataSourceID="EquipmentSqlDS">
                          <LayoutTemplate>
                                <div>
                                    <ul>
                                        <asp:DataPager ID="SuppDataPager" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="btn btn-sm btn-success" />
                                            </Fields>
                                        </asp:DataPager>
                                    </ul>
                                </div>
                                <div style="margin: 0 auto; padding: 2px;">
                                    <ul>
                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                    </ul>
                                </div>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <div class="well col-lg-3 pull-right thumbnail" style="height: 400px; width: 240px; text-align: center; margin: 0 10px 10px 20px;">
                                    <div>
                                        <img class="img-thumbnail" width="142" height="200" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                                        <br /><span style="align-content: center; padding-bottom: 5px;" class="fontawesome-search btn-xs"><asp:Button ID="ViewProdbtn" CssClass="btn btn-xs" runat="server" CommandArgument='<%# Eval("ImageName") %>' OnClick="ViewProduct" Text="View Product" /></span>
                                    </div>
                                    <div>
                                        <h4 id="ProductName"><%# Eval("ProdName") %></h4>
                                        <sub>By: <%# Eval("BrandName") %></sub>
                                    </div>
                                        <br />
                                    <span>
                                        <h4 id="priceOfProd" style="color: #008000"><sub>$ </sub><%# Eval("Price") %></h4>
                                    </span>
                                    <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary" runat="server" CommandArgument='<%# Eval("ProdName") %>' OnClick="AddToCart_Click" Text="Add To Cart" /></li>
                                </div>
                            </ItemTemplate>   
                        </asp:ListView>


                    </div>
                </div>
                <div id="apparel" class="tab-pane">
                    <div id="apparelContent">
                        <br />
                        <asp:ListView ID="ApparelLV" runat="server" DataSourceID="ApparelSqlDS">
                             <LayoutTemplate>
                                <div>
                                    <ul>
                                        <asp:DataPager ID="SuppDataPager" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="btn btn-sm btn-success" />
                                            </Fields>
                                        </asp:DataPager>
                                    </ul>
                                </div>

                                <div style="margin: 0 auto; padding: 2px;">
                                    <ul>
                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                    </ul>
                                </div>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <div class="well col-lg-3 pull-right thumbnail" style="height: 400px; width: 240px; text-align: center; margin: 0 10px 10px 20px;">
                                    <div>
                                        <img class="img-thumbnail" width="142" height="200" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                                        <br /><span style="align-content: center; padding-bottom: 5px;" class="fontawesome-search btn-xs"><asp:Button ID="ViewProdbtn" CssClass="btn btn-xs" runat="server" CommandArgument='<%# Eval("ImageName") %>' OnClick="ViewProduct" Text="View Product" /></span>
                                    </div>
                                    <div>
                                        <h4 id="ProductName"><%# Eval("ProdName") %></h4>
                                        <sub>By: <%# Eval("BrandName") %></sub>
                                    </div>
                                        <br />
                                    <span>
                                        <h4 id="priceOfProd" style="color: #008000"><sub>$ </sub><%# Eval("Price") %></h4>
                                    </span>
                                    <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary" runat="server" CommandArgument='<%# Eval("ProdName") %>' OnClick="AddToCart_Click" Text="Add To Cart" /></li>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>

                    </div>
                </div>
            </div>
             <asp:Label ID="getListBox" runat="server" ForeColor="#FF6600" Text="Label" Visible="False"></asp:Label>


        </div>
    </div>



            <!-------------------best way to sort data is to use 4 seperate datasources---------------------->


        <asp:SqlDataSource ID="CartSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:StoreMaster %>" SelectCommand="SELECT * FROM [cart]" DeleteCommand="DELETE FROM [cart] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [cart] ([UserID], [ProdID], [ProdName], [UnitsToOrder]) VALUES (@UserID, @ProdID, @ProdName, @UnitsToOrder)" UpdateCommand="UPDATE [cart] SET [ProdID] = @ProdID, [ProdName] = @ProdName, [UnitsToOrder] = @UnitsToOrder WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="ProdID" Type="Int32" />
                    <asp:Parameter Name="ProdName" Type="Int32" />
                    <asp:Parameter Name="UnitsToOrder" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProdID" Type="Int32" />
                    <asp:Parameter Name="ProdName" Type="Int32" />
                    <asp:Parameter Name="UnitsToOrder" Type="Int32" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </UpdateParameters>
    </asp:SqlDataSource>


        <asp:SqlDataSource ID="ApparelSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:storeApparel %>" SelectCommand="SELECT [ProdID], [ProdName], [BrandName], [Description], [Price], [ImageName], [Category] FROM [Inventory] WHERE Category='Apparel'"></asp:SqlDataSource>
        <asp:SqlDataSource ID="EquipmentSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:StoreMaster %>" SelectCommand="SELECT [ProdID], [ProdName], [BrandName], [Price], [Description], [ImageName], [Category] FROM [Inventory] WHERE Category='Equipment'"></asp:SqlDataSource>
        <asp:SqlDataSource ID="ProteinSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT [ProdID], [ProdName], [BrandName], [Description], [Price], [ImageName], [Category] FROM [Inventory] WHERE Category='Protein'"></asp:SqlDataSource>

        <asp:SqlDataSource ID="AllInventorySqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>



</asp:Content>



<asp:Content ID="Content1" runat="server" contentplaceholderid="shopNestedHeadCPH">

    <style>
        .abspos {
            position:fixed;
        }

        .fixedpos {
            position:absolute;
        }


        ul {   
            list-style-type: none;
        }
    </style>

    <script src="Scripts/StoreScroll.js"></script>

    </asp:Content>
