<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="Scripts/carousel.js"></script>


    <style>
      .carousel-inner > .item > img,
      .carousel-inner > .item > a > img {
          margin: auto;
          width: 100%;
          height: 320px;
      }
    </style>

</head>

<body>
    <h2>Membership.</h2>
    <h3>Claim your fitness partner today</h3>
    <hr />
    <div class="container">
        <div class="col-md-5"><asp:Image ImageUrl="Content/OneDayPass.jpg" runat="server" Width="100%" /></div>
        <div class="col-md-7">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Content/silver.jpg"/>
                    <div class="carousel-caption">
                    <h3 style="font-weight:bold">Silver Membership</h3>
                    <h4 style="font-weight:bold">$39.99/month</h4>
                    <h5 style="font-weight:bold">* Free fitness and facility orientation with certified trainers</h5>
                    <h5 style="font-weight:bold">* Day Use Locker</h5>
                    <h5 style="font-weight:bold">* Free attendance to Gym Group Class</h5>
                    <h5 style="font-weight:bold">* Free snack and beverage in break room</h5>
                    <h5 style="font-weight:bold">* Access to GymLord Exclusive Store</h5>
                    <p><a href="Register.aspx" class="btn btn-primary btn-md">Get Membership &raquo;</a></p>
                    </div>
                </div>

                <div class="item">

                    <img src="Content/gold.jpg"/>
                    <div class="carousel-caption">
                    <h3 style="font-weight:bold">Gold Membership</h3>
                    <h4 style="font-weight:bold">$59.99/month</h4> 
                    <h5 style="font-weight:bold">* ALL PRIVILEGES OF SILVER MEMBER. AND...</h5>
                    <h5 style="font-weight:bold">* Sauna access</h5>
                    <h5 style="font-weight:bold">* Weekly special deals in our Exclusive Store</h5>
                    <h5 style="font-weight:bold">* Bring a Guest for Free everyday</h5>
                    <h5 style="font-weight:bold">* Free Supplemental Consulting</h5>
                    <p><a href="Register.aspx" class="btn btn-primary btn-md">Get Membership &raquo;</a></p>
                    </div>
                </div>

                <div class="item">
                    <img src="Content/platinum.jpg"/>
                    <div class="carousel-caption">
                    <h3 style="font-weight:bold">Platinum Membership</h3>
                    <h4 style="font-weight:bold">$79.99/month</h4>
                    <h5 style="font-weight:bold">* ALL PRIVILEGES OF SILVER & GOLD MEMBER. AND...</h5>
                    <h5 style="font-weight:bold">* Free private locker for membership lifetime</h5>
                    <h5 style="font-weight:bold">* VIP break room with bartender</h5>
                    <h5 style="font-weight:bold">* Massage chair use</h5>
                    <h5 style="font-weight:bold">* Free Childcare</h5>
                    <p><a href="Register.aspx" class="btn btn-primary btn-md">Get Membership &raquo;</a></p>
                    </div>
                </div>

                </div>

                <!-- Left and right controls -->
                <a href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </a>
            </div>
            </div>
    </div>
</body>
</html>    
     
</asp:Content>
