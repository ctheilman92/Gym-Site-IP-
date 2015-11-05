<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteJxml.master" AutoEventWireup="true" CodeBehind="JsBasics.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="XmlPLacHolder" runat="server">
    <p class="intro">
        JavaScript is the most popular programming language in the world.</p>
    <p class="intro">
        This page contains some examples of what JavaScript can do.</p>
    <hr />
    <h2>JavaScript Can Change HTML Content</h2>
    <p>
        One of many HTML methods is <strong>getElementById()</strong>.</p>
    <p>
        This example uses the method to &quot;find&quot; an HTML element (with id=&quot;demo&quot;<strong>)</strong>, and changes the element content (<strong>innerHTML</strong>) to &quot;Hello JavaScript&quot;:</p>
    <div class="w3-example">
        <h3>Example</h3>
        <div class="w3-code notranslate jsHigh">
            document.getElementById(<span class="highVAL">&quot;demo&quot;</span>).innerHTML = <span class="highVAL">&quot;Hello JavaScript&quot;</span>;</div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_intro_inner_html" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <hr />
    <h2>JavaScript Can Change HTML Styles (CSS)</h2>
    <p>
        Changing the style of an HTML element, is a variant of changing an HTML attribute:</p>
    <div class="w3-example">
        <h3>Example</h3>
        <div class="w3-code notranslate jsHigh">
            document.getElementById(<span class="highVAL">&quot;demo&quot;</span>).style.fontSize = <span class="highVAL">&quot;25px&quot;</span>;</div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_intro_style" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Can Validate Data</h2>
    <p>
        JavaScript is often used to validate input:</p>
    <p class="intro">
        JavaScript can be placed in the &lt;body&gt; and the &lt;head&gt; sections of an HTML page.</p>
    <hr />
    <h2>The &lt;script&gt; Tag</h2>
    <p>
        In HTML, JavaScript code must be inserted between &lt;script&gt; and &lt;/script&gt; tags.</p>
    <div class="w3-example">
        <h3>Example</h3>
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">script</span><span class="highGT">&gt;</span><br />
            document.getElementById(&quot;demo&quot;).innerHTML = &quot;My First JavaScript&quot;;<br />
            <span class="highLT">&lt;</span><span class="highELE">/script</span><span class="highGT">&gt;</span>
        </div>
    </div>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>Older examples may use a type attribute: &lt;script type=&quot;text/javascript&quot;&gt;.<br />
                The type attribute is not required. JavaScript is the default scripting language in HTML.</td>
        </tr>
    </table>
    <hr />
    <h2>JavaScript Functions and Events</h2>
    <p>
        A JavaScript <strong>function</strong> is a block of JavaScript code, that can be executed when &quot;asked&quot; for.</p>
    <p>
        For example, a function can be executed when an <b>event</b> occurs, like when the user clicks a button.</p>
    <p>
        You will learn much more about functions and events in later chapters.</p>
    <hr />
    <h2>JavaScript in &lt;head&gt; or &lt;body&gt;</h2>
    <p>
        You can place any number of scripts in an HTML document.</p>
    <p>
        Scripts can be placed in the &lt;body&gt;, or in the &lt;head&gt; section of an HTML page, or in both.</p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>Keeping all code in one place, is always a good habit.</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
