<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteHtml.master" AutoEventWireup="true" CodeBehind="CssAdvanced.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HtmlPlaceHolder" runat="server">
            <h1>&nbsp;</h1>
            <h2>CSS Syntax</h2>
            <p>
                A CSS rule set consists of a selector and a declaration block:</p>
            <p>
                <img alt="CSS selector" class="img-responsive" src="http://www.w3schools.com/css/selector.gif" style="width:569px;height:auto;" /></p>
            <p>
                The selector points to the HTML element you want to style.</p>
            <p>
                The declaration block contains one or more declarations separated by semicolons.</p>
            <p>
                Each declaration includes a property name and a value, separated by a colon.</p>
            <hr />
            <h2>CSS Example</h2>
            <p>
                A CSS declaration always ends with a semicolon, and declaration groups are surrounded by curly braces:</p>
            <div class="w3-code w3-border notranslate">
                <div>
                    p {color:red;text-align:center;}</div>
            </div>
            <p>
                To make the CSS code more readable, you can put one declaration on each line.</p>
            <p>
                In the following example all &lt;p&gt; elements will be center-aligned, with a red text color:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate cssHigh">
                    <span class="highELE">p </span>{<br />
                    &nbsp;&nbsp;&nbsp; <span class="highATT">color:</span><span class="highVAL"> red;</span><br />
                    &nbsp;&nbsp;&nbsp; <span class="highATT">text-align:</span><span class="highVAL"> center;</span><br />
                    }
                </div>
            </div>
            <hr />
            <h2>CSS Comments</h2>
            <p>
                Comments are used to explain the code, and may help when you edit the source code at a later date. Comments are ignored by browsers.</p>
            <p>
                A CSS comment starts with /* and ends with */. Comments can also span multiple lines:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate cssHigh">
                    <span class="highELE">p </span>{<br />
                    &nbsp;&nbsp;&nbsp; <span class="highATT">color:</span><span class="highVAL"> red;</span><br />
                    &nbsp;&nbsp;&nbsp; <span class="highCOM">/* This is a single-line comment */</span><br />
                    &nbsp;&nbsp;&nbsp; <span class="highATT">text-align:</span><span class="highVAL"> center;</span><br />
                    }<br />
                    <br />
                    <span class="highCOM">/* This is<br />
                    a multi-line<br />
                    comment */</span>
                </div>
            </div>

</asp:Content>
