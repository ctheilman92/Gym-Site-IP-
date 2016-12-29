<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Trainer.aspx.cs" Inherits="WebApplication1.Trainer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 399px;
        }
        .auto-style2 {
            width: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Personal Trainer.</h2>
    <h4>We are here to help you achieve your goals</h4>
    <hr />
    <div>
        <div class =" row">
            <div class="col-md-3">      
                <img src="Content/SwoleFrogCropped.jpeg" width ="100%" style="border: 3px solid; border-color: cyan"/>
                <br />
            </div>

            <div class="col-md-5">
                <video width="97%" controls autoplay>
                    <source src="Content/Benching.mp4" type="video/mp4" />
                </video>

            </div>

           <div class="col-md-4" style="background-color: cyan; width: 32%" >
            <div style="text-align:center; margin: 11px 5px 12px 5px">
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Trainer of the Month</h4>
                <p style="font-size:small; color:darkcyan">"Sets and reps. They train by the numbers. That's beginning bodybuilding. An advanced bodybuilder express's himself from within. It the act of creation that effects your body. Its about the emotion. The way you feel, the music, the towel, the bar, the shoes, you create it and your <br /> ENERGY CHANGES THE BODY."</p>
                <h5>- Christian Habihirwe </h5> 
                <p> <a href="Trainer1.aspx" class="btn btn-primary btn-sm">See Profile &raquo;</a> </p>
            </div>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
                  
        <div class="col-md-3"> 
            <div style="background-color: cyan;">  

                <img src="Content/Christian.jpg"  style="width:80%; height:20%; margin: 20px 25px 5px 25px;" />
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Christian Habihirwe</h4> 
                <p style="text-align:center; font-size:small; color:darkcyan">Personal Trainer/Group Fitness <br /><br /><a href="Trainer1.aspx" class="btn btn-primary btn-sm">See Profile &raquo;</a> </p> <br />
            
            </div>  
        </div>

        <div class="col-md-3"> 
            <div style="background-color: cyan;">  
                <img src="Content/Carl.JPG" style="width:80%; height:20%; margin: 20px 25px 5px 25px;" />
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Carl Suding</h4> 
                <p style="text-align:center; font-size:small; color:darkcyan">Personal Trainer <br /><br /><a href="Trainer2.aspx" class="btn btn-primary btn-sm">See Profile &raquo;</a> </p> <br />
            
            </div>  
        </div>

        <div class="col-md-3"> 
            <div style="background-color: cyan;">

                <img src="Content/Giovanni.JPG"  style="width:80%; height:20%; margin: 20px 25px 5px 25px;" />
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Giovanni Flores</h4>
                <p style="text-align:center; font-size:small; color:darkcyan">Personal Trainer <br /><br /><a href="Trainer3.aspx" class="btn btn-primary btn-sm">See Profile &raquo;</a> </p> <br />
            
            </div>
        </div>

        <div class="col-md-3"> 
            <div style="background-color: cyan;">
                <img src="Content/Karla.JPG"  style="width:80%; height:20%; margin: 20px 25px 5px 25px;" />
                <h4 style="text-align:center; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-weight:bold">Karla Allred</h4>
                <p style="text-align:center; font-size:small; color:darkcyan">Personal Trainer/Group Fitness <br /><br /><a href="Trainer4.aspx" class="btn btn-primary btn-sm">See Profile &raquo;</a> </p> <br />
            
            </div>
        </div>
    </div>




</asp:Content>
