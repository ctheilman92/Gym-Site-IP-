<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">

    var slideimages = new Array() // create new array to preload images
    slideimages[0] = new Image() // create new instance of image object
    slideimages[0].src = "Content/Product1.jpg" // set image src property to image path, preloading image in the process
    slideimages[1] = new Image()
    slideimages[1].src = "Content/Product2.jpg"
    slideimages[2] = new Image()
    slideimages[2].src = "Content/Product3.jpg"

    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="Scripts/carousel.js"></script>

    <style>
      .carousel-inner > .item > img,
      .carousel-inner > .item > a > img {
          width: 100%;
          height:420px;
          margin: auto;
      }
        .auto-style1 {
            width: 432px;
        }
    </style>

</head>

<body>
    
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
          <img src="Content/slide1.jpg" width="950" height="420" />
          <div class="carousel-caption">
            <h3 style="font-weight:bold">Home for Champions</h3>
            <p><a href="Register.aspx" class="btn btn-primary btn-lg">Join Us &raquo;</a></p>
          </div>
        </div>

        <div class="item">

          <img src="Content/slide2.jpg"  width="950" height="420" />
            <div class="carousel-caption">
            <h3 style="font-weight:bold">Home for Champions</h3>
            <p><a href="Register.aspx" class="btn btn-primary btn-lg">Join Us &raquo;</a></p>
          </div>
        </div>

        <div class="item">
          <img src="Content/slide3.jpg" width="950" height="420"  />
            <div class="carousel-caption">
            <h3 style="font-weight:bold">Home for Champions</h3>
            <p><a href="Register.aspx" class="btn btn-primary btn-lg">Join Us &raquo;</a></p>
          </div>
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

    <br />
    <div class="row">
                  
        <div class="col-md-4"> 
            <div style="background-color: cyan;">  
            
                <div style="align-items:center"><img src="Content/Trainer.jpg" width="80%" style="margin: 20px 35px 3px 35px;"/></div>
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Personal Trainers</h4> 
                <p style="text-align:center; font-size:small; color:darkcyan">Professional guidance and <br />encouragement to meet your goals. <br /><br /><a href="Trainer.aspx" class="btn btn-primary btn-sm">Learn more &raquo;</a> </p> <br />
            
            </div>  
        </div>

        <div class="col-md-4">
            <a runat="server" id="toStore" href="Store.aspx"><img src="Content/Product1.jpg" id="slide" width=100% height="320" style="border:solid"/></a>
            <p style="align-content:center; margin: 15px 25px 3px 25px"">For product info (24/7): (361) 321-4567</p>
        </div> 

        <div class="col-md-4"> 
            <div style="background-color: cyan;">
            
                <img src="Content/GroupExcercise.jpg" width=80% style=" margin: 20px 35px 3px 35px;"/>
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Group Excerise Class</h4>
                <p style="text-align:center; font-size:small; color:darkcyan">Looking for a workout group?<br />We Have what you need! <br /><br /><a href="Class.aspx" class="btn btn-primary btn-sm">Learn more &raquo;</a> </p> <br />
            
            </div>
        </div>

    </div>
    
    <script type="text/javascript">

    //variable that will increment through the images
    var step = 0
    var whichimage = 0


    function slideit(){
         //if browser does not support the image object, exit.
         if (!document.images)
             return

         document.getElementById('slide').src = slideimages[step].src
         whichimage = step

         if (step<2)
            step++
         else
             step = 0

         setTimeout("slideit()",2700)
    }

    function slidelink() {
        if (whichimage == 0)
            window.location = "Store/link1.htm"
        else if (whichimage == 1)
            window.location = "Store/link2.htm"
        else if (whichimage == 2)
            window.location = "Store/link3.htm"
    }

    slideit()

    </script> 
    <br />
   
</body>

</html>
</asp:Content>

