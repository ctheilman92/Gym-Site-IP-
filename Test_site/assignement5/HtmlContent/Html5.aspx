<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteHtml.master" AutoEventWireup="true" CodeBehind="Html5.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HtmlPlaceHolder" runat="server">
            <h1>&nbsp;</h1>
            <ul>
                <li><strong>body&gt;</strong> and <strong>&lt;/body&gt;</strong> describes the visible page content</li>
                <li>The text between <strong>&lt;h1&gt;</strong> and <strong>&lt;/h1&gt;</strong> describes a heading</li>
                <li>The text between <strong>&lt;p&gt;</strong> and <strong>&lt;/p&gt;</strong> describes a paragraph</li>
            </ul>
            <p>
                Using this description, a web browser can display a document with a heading and a paragraph.</p>
            <hr />
            <h2>HTML Tags</h2>
            <p>
                HTML tags are <strong>keywords</strong> (tag names) surrounded by <b>angle brackets</b>:</p>
            <div class="htmlHigh" style="font-size:20px;padding:10px;margin-bottom:10px;word-wrap:break-word;font-family:Consolas,'courier new'">
                <span class="highLT">&lt;</span><span class="highELE">tagname</span><span class="highGT">&gt;</span>content<span class="highLT">&lt;</span><span class="highELE">/tagname</span><span class="highGT">&gt;</span>
            </div>
            <ul>
                <li>HTML tags normally come <b>in pairs</b> like &lt;p&gt; and &lt;/p&gt;</li>
                <li>The first tag in a pair is the <b>start tag,</b> the second tag is the <b>end tag</b></li>
                <li>The end tag is written like the start tag, but with a <strong>slash</strong> before the tag name </li>
            </ul>
            <table class="lamp">
                <tr>
                    <th style="width:34px">
                        <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
                    <td>The start tag is often called the <b>opening tag</b>. The end tag is often called the <b>closing tag</b>.</td>
                </tr>
            </table>
            <hr />
            <h2>Web Browsers</h2>
            <p>
                The purpose of a web browser (Chrome, IE, Firefox, Safari) is to read HTML documents and display them.</p>
            <p>
                The browser does not display the HTML tags, but uses them to determine how to display the document:</p>
            <p>
                <img alt="View in Browser" class="img-responsive" src="http://www.w3schools.com/html/img_chrome.png" style="height:auto;width:635px" /></p>
            <hr />
            <h2>HTML Page Structure</h2>
            <p>
                Below is a visualization of an HTML page structure:</p>
            <div style="width:99%;border:1px solid grey;padding:3px;margin:0;background-color:#ddd">
                &lt;html&gt;
                <div style="width:90%;border:1px solid grey;padding:3px;margin:20px">
                    &lt;head&gt;
                    <div style="width:90%;border:1px solid grey;padding:5px;margin:20px">
                        &lt;title&gt;Page title&lt;/title&gt;
                    </div>
                    &lt;/head&gt;
                </div>
                <div style="width:90%;border:1px solid grey;padding:3px;margin:20px;background-color:#fff">
                    &lt;body&gt;
                    <div style="width:90%;border:1px solid grey;padding:5px;margin:20px">
                        &lt;h1&gt;This is a heading&lt;/h1&gt;</div>
                    <div style="width:90%;border:1px solid grey;padding:5px;margin:20px">
                        &lt;p&gt;This is a paragraph.&lt;/p&gt;</div>
                    <div style="width:90%;border:1px solid grey;padding:5px;margin:20px">
                        &lt;p&gt;This is another paragraph.&lt;/p&gt;</div>
                    &lt;/body&gt;
                </div>
                &lt;/html&gt;
            </div>
            <table class="lamp">
                <tr>
                    <th style="width:34px">
                        <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
                    <td>Only the &lt;body&gt; area (the white area) is displayed by the browser.</td>
                </tr>
            </table>
            <hr />
            <h2>The &lt;!DOCTYPE&gt; Declaration</h2>
            <p>
                The &lt;!DOCTYPE&gt; declaration helps the browser to display a web page correctly.</p>
            <p>
                There are different document types on the web.</p>
            <p>
                To display a document correctly, the browser must know both type and version.</p>
            <p>
                The doctype declaration is not case sensitive. All cases are acceptable:</p>
            <div class="w3-example">
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">!DOCTYPE</span> <span class="highATT">html</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">!DOCTYPE</span> <span class="highATT">HTML</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">!doctype</span> <span class="highATT">html</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">!Doctype</span> <span class="highATT">Html</span><span class="highGT">&gt;</span></div>
            </div>

</asp:Content>
