<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteHtml.master" AutoEventWireup="true" CodeBehind="HtmlBasics.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HtmlPlaceHolder" runat="server">
            <h1>&nbsp;</h1>
            <h2>HTML Documents</h2>
            <p>
                All HTML documents must start with a type declaration: <strong>&lt;!DOCTYPE html&gt;</strong>.</p>
            <p>
                The HTML document itself begins with <strong>&lt;html&gt;</strong> and ends with <strong>&lt;/html&gt;</strong>.</p>
            <p>
                The visible part of the HTML document is between <strong>&lt;body&gt;</strong> and <strong>&lt;/body&gt;</strong>.
            </p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">!DOCTYPE</span> <span class="highATT">html</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">html</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">body</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">h1</span><span class="highGT">&gt;</span>My First Heading<span class="highLT">&lt;</span><span class="highELE">/h1</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">p</span><span class="highGT">&gt;</span>My first paragraph.<span class="highLT">&lt;</span><span class="highELE">/p</span><span class="highGT">&gt;</span><br />
                    <br />
                    <span class="highLT">&lt;</span><span class="highELE">/body</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">/html</span><span class="highGT">&gt;</span></div>
                <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_document" target="_blank">Try it Yourself »</a>
            </div>
            <hr />
            <h2>HTML Headings</h2>
            <p>
                HTML headings are defined with the <strong>&lt;h1&gt;</strong> to <strong>&lt;h6&gt;</strong> tags:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">h1</span><span class="highGT">&gt;</span>This is a heading<span class="highLT">&lt;</span><span class="highELE">/h1</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">h2</span><span class="highGT">&gt;</span>This is a heading<span class="highLT">&lt;</span><span class="highELE">/h2</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">h3</span><span class="highGT">&gt;</span>This is a heading<span class="highLT">&lt;</span><span class="highELE">/h3</span><span class="highGT">&gt;</span>
                </div>
                <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_headings" target="_blank">Try it yourself »</a>
            </div>
            <hr />
            <h2>HTML Paragraphs</h2>
            <p>
                HTML paragraphs are defined with the <strong>&lt;p&gt;</strong> tag:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">p</span><span class="highGT">&gt;</span>This is a paragraph.<span class="highLT">&lt;</span><span class="highELE">/p</span><span class="highGT">&gt;</span><br />
                    <span class="highLT">&lt;</span><span class="highELE">p</span><span class="highGT">&gt;</span>This is another paragraph.<span class="highLT">&lt;</span><span class="highELE">/p</span><span class="highGT">&gt;</span>
                </div>
                <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_paragraphs" target="_blank">Try it yourself »</a>
            </div>
            <hr />
            <h2>HTML Links</h2>
            <p>
                HTML links are defined with the <strong>&lt;a&gt;</strong> tag:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">a</span> <span class="highATT">href=</span><span class="highVAL">&quot;http://www.w3schools.com&quot;</span><span class="highGT">&gt;</span>This is a link<span class="highLT">&lt;</span><span class="highELE">/a</span><span class="highGT">&gt;</span>
                </div>
                <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/html/tryit.asp?filename=tryhtml_basic_link" target="_blank">Try it yourself »</a>
            </div>
            <p>
                The link&#39;s destination is specified in the <strong>href attribute</strong>.&nbsp;</p>
            <p>
                Attributes are used to provide additional information about HTML elements.</p>
            <hr />
            <h2>HTML Images</h2>
            <p>
                HTML images are defined with the <strong>&lt;img&gt;</strong> tag.</p>
            <p>
                The source file (<strong>src</strong>), alternative text (<strong>alt</strong>), and size (<strong>width</strong> and <strong>height</strong>) are provided as <strong>attributes</strong>:</p>
            <div class="w3-example">
                <h3>Example</h3>
                <div class="w3-code notranslate htmlHigh">
                    <span class="highLT">&lt;</span><span class="highELE">img</span> <span class="highATT">src=</span><span class="highVAL">&quot;w3schools.jpg&quot;</span> <span class="highATT">alt=</span><span class="highVAL">&quot;W3Schools.com&quot;</span> <span class="highATT">width=</span><span class="highVAL">&quot;104&quot;</span> <span class="highATT">height=</span><span class="highVAL">&quot;142&quot;</span><span class="highGT">&gt;</span>
                </div>
            </div>

</asp:Content>
