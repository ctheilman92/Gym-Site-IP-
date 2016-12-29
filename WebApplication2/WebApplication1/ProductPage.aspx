<%@ Page Title="" Language="C#" MasterPageFile="~/StoreFront.master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="WebApplication1.ViewProdWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="shopNestedHeadCPH" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 83.33333333333334%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ShopNestedCPH" runat="server">

    <div class="container">
        <div class="row">

            <div class="auto-style1">
                 <asp:FormView ID="ProductFV" runat="server" DataSourceID="ProductSqlDS" OnPageIndexChanging="FormView1_PageIndexChanging">
                    
                    <ItemTemplate>
                            <div class="col-lg-4">
                                <img width="150" id="productIMG" alt="<%# Eval("ImageName") %>" src="Content/Inv_Images/<%# Eval("ImageName") %>" />
                            </div>
                            <div class="col-lg-8 right" style="margin:50px;">
                                <h2>
                                    <asp:Label ID="lblProd" runat="server" Text='<%# Eval("ProdName") %>'></asp:Label></h2>
                                <sub>
                                    <asp:Label ID="lblDes" runat="server" Text='<%# Eval("Description") %>'></asp:Label></sub>

                                <h3>
                                    <sub>$ </sub><asp:Label ID="Pricelbl" runat="server" Text='<%# Eval("Price") %>'></asp:Label></h3>
                                <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary" runat="server" CommandArgument='<%# Eval("ProdName") %>' OnClick="AddToCart_Click" Text="Add To Cart" />
                            </div>
                    </ItemTemplate>
                </asp:FormView>


                <!--add parameters from sessionState using the onSelecting event call-->
                <asp:SqlDataSource ID="ProductSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeHost %>" SelectCommand="SELECT ProdName,Description,Price,ImageName,ProdID FROM [Inventory] where ImageName=@ImageName" OnSelecting="ProductSqlDS_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="ImageName" SessionField="ImageName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="CartSqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:StoreMaster %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>

            </div>



        </div>
    </div>


</asp:Content>
