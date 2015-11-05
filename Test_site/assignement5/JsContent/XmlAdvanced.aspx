<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteJxml.master" AutoEventWireup="true" CodeBehind="XmlAdvanced.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="XmlPLacHolder" runat="server">
    <p class="intro">
        The syntax rules of XML are very simple and logical. The rules are easy to learn, and easy to use.</p>
    <hr />
    <h2>XML Documents Must Have a Root Element</h2>
    <p>
        XML documents must contain one <strong>root</strong> element that is the <b>parent</b> of all other elements:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">root</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">child</span><span class="highGT">&gt;</span><br />
            &nbsp;&nbsp;&nbsp; <span class="highLT">&lt;</span><span class="highELE">subchild</span><span class="highGT">&gt;</span>.....<span class="highLT">&lt;</span><span class="highELE">/subchild</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">/child</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">/root</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        In this example <strong>&lt;note&gt;</strong> is the root element:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">?xml</span> <span class="highATT">version=</span><span class="highVAL">&quot;1.0&quot;</span> <span class="highATT">encoding=</span><span class="highVAL">&quot;UTF-8<strong>&quot;</strong></span><strong><span class="highATT"></span></strong>?<span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">note</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">to</span><span class="highGT">&gt;</span>Tove<span class="highLT">&lt;</span><span class="highELE">/to</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">from</span><span class="highGT">&gt;</span>Jani<span class="highLT">&lt;</span><span class="highELE">/from</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">heading</span><span class="highGT">&gt;</span>Reminder<span class="highLT">&lt;</span><span class="highELE">/heading</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">body</span><span class="highGT">&gt;</span>Don&#39;t forget me this weekend!<span class="highLT">&lt;</span><span class="highELE">/body</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">/note</span><span class="highGT">&gt;</span>
        </div>
    </div>
    <hr />
    <h2>The XML Prolog</h2>
    <p>
        This line is called the XML <strong>prolog</strong>:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">?xml</span> <span class="highATT">version=</span><span class="highVAL">&quot;1.0&quot;</span> <span class="highATT">encoding=</span><span class="highVAL">&quot;UTF-8<strong>&quot;</strong></span><strong><span class="highATT"></span></strong>?<span class="highGT">&gt;</span></div>
    </div>
    <p>
        The XML prolog is optional. If it exists, it must come first in the document.
    </p>
    <p>
        XML documents can contain international characters, like Norwegian øæå or French êèé.</p>
    <p>
        To avoid errors, you should specify the encoding used, or save your XML files as UTF-8.</p>
    <p>
        UTF-8 is the default character encoding for XML documents.</p>
    <p>
        Character encoding can be studied in our <a href="http://www.w3schools.com/charsets/default.asp">Character Set Tutorial</a>.</p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>UTF-8 is also the default encoding for HTML5, CSS, JavaScript, PHP, and SQL.</td>
        </tr>
    </table>
    <hr />
    <h2>All XML Elements Must Have a Closing Tag</h2>
    <p>
        In HTML, some elements might work well, even with a missing closing tag:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">p</span><span class="highGT">&gt;</span>This is a paragraph.<br />
            <span class="highLT">&lt;</span><span class="highELE">br</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        In XML, it is illegal to omit the closing tag. All elements <b>must</b> have a closing tag:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">p</span><span class="highGT">&gt;</span>This is a paragraph.<span class="highLT">&lt;</span><span class="highELE">/p</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">br</span> <span class="highATT">/</span><span class="highGT">&gt;</span></div>
    </div>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>The XML declaration does not have a closing tag.<br />
                This is not an error. The declaration is not a part of XML.</td>
        </tr>
    </table>
    <hr />
    <h2>XML Tags are Case Sensitive</h2>
    <p>
        XML tags are case sensitive. The tag &lt;Letter&gt; is different from the tag &lt;letter&gt;.</p>
    <p>
        Opening and closing tags must be written with the same case:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">Message</span><span class="highGT">&gt;</span>This is incorrect<span class="highLT">&lt;</span><span class="highELE">/message</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">message</span><span class="highGT">&gt;</span>This is correct<span class="highLT">&lt;</span><span class="highELE">/message</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        &quot;Opening and closing tags&quot; are often referred to as &quot;Start and end tags&quot;. Use whatever you prefer. It is exactly the same thing.</p>
    <hr />
    <h2>XML Elements Must be Properly Nested</h2>
    <p>
        In HTML, you might see improperly nested elements:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">b</span><span class="highGT">&gt;</span><span class="highLT">&lt;</span><span class="highELE">i</span><span class="highGT">&gt;</span>This text is bold and italic<span class="highLT">&lt;</span><span class="highELE">/b</span><span class="highGT">&gt;</span><span class="highLT">&lt;</span><span class="highELE">/i</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        In XML, all elements <b>must</b> be properly nested within each other:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">b</span><span class="highGT">&gt;</span><span class="highLT">&lt;</span><span class="highELE">i</span><span class="highGT">&gt;</span>This text is bold and italic<span class="highLT">&lt;</span><span class="highELE">/i</span><span class="highGT">&gt;</span><span class="highLT">&lt;</span><span class="highELE">/b</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        In the example above, &quot;Properly nested&quot; simply means that since the &lt;i&gt; element is opened inside the &lt;b&gt; element, it must be closed inside the &lt;b&gt; element.</p>
    <hr />
    <h2>XML Attribute Values Must be Quoted</h2>
    <p>
        XML elements can have attributes in name/value pairs just like in HTML.</p>
    <p>
        In XML, the attribute values must always be quoted.</p>
    <p>
        INCORRECT:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">note</span> <span class="highATT">date=</span><span class="highVAL">12/11/2007&gt;<br />
            &nbsp; &lt;to&gt;Tove&lt;/to&gt;<br />
            &nbsp; &lt;from&gt;Jani&lt;/from&gt;<br />
            &lt;/note&gt;</span></div>
    </div>
    <p>
        CORRECT:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">note</span> <span class="highATT">date=</span><span class="highVAL">&quot;12/11/2007&quot;</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">to</span><span class="highGT">&gt;</span>Tove<span class="highLT">&lt;</span><span class="highELE">/to</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">from</span><span class="highGT">&gt;</span>Jani<span class="highLT">&lt;</span><span class="highELE">/from</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">/note</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        The error in the first document is that the date attribute in the note element is not quoted.</p>
    <hr />
    <h2>Entity References</h2>
    <p>
        Some characters have a special meaning in XML.</p>
    <p>
        If you place a character like &quot;&lt;&quot; inside an XML element, it will generate an error because the parser interprets it as the start of a new element.</p>
    <p>
        This will generate an XML error:</p>
    <div class="w3-example">
        <div class="w3-code notranslate">
            &lt;message&gt;salary &lt; 1000&lt;/message&gt;</div>
    </div>
    <p>
        To avoid this error, replace the &quot;&lt;&quot; character with an <b>entity reference</b>:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">message</span><span class="highGT">&gt;</span>salary <span class="marked">&amp;lt;</span> 1000<span class="highLT">&lt;</span><span class="highELE">/message</span><span class="highGT">&gt;</span></div>
    </div>
    <p>
        There are 5 pre-defined entity references in XML:</p>
    <table class="w3-table-all notranslate" style="width:50%">
        <tr>
            <td>&amp;lt;</td>
            <td>&lt;</td>
            <td>less than</td>
        </tr>
        <tr>
            <td>&amp;gt;</td>
            <td>&gt;</td>
            <td>greater than</td>
        </tr>
        <tr>
            <td>&amp;amp;</td>
            <td>&amp;</td>
            <td>ampersand&nbsp;</td>
        </tr>
        <tr>
            <td>&amp;apos;</td>
            <td>&#39;</td>
            <td>apostrophe</td>
        </tr>
        <tr>
            <td>&amp;quot;</td>
            <td>&quot;</td>
            <td>quotation mark</td>
        </tr>
    </table>
    <p>
    </p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>&nbsp;Only &lt; and &amp; are strictly illegal in XML, but it is a good habit to replace &gt; with &amp;gt; as well.</td>
        </tr>
    </table>
    <hr />
    <h2>Comments in XML</h2>
    <p>
        The syntax for writing comments in XML is similar to that of HTML.</p>
    <p>
        &lt;!-- This is a comment --&gt;
    </p>
    <hr />
    <h2>White-space is Preserved in XML</h2>
    <p>
        XML does not truncate multiple white-spaces (HTML truncates multiple white-spaces to one single white-space):</p>
    <table class="w3-table-all notranslate">
        <tr>
            <td>XML: </td>
            <td>Hello&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Tove </td>
        </tr>
        <tr>
            <td>HTML: </td>
            <td>Hello Tove</td>
        </tr>
    </table>
    <hr />
    <h2>XML Stores New Line as LF</h2>
    <p>
        Windows applications store a new line as: carriage return and line feed (CR+LF).</p>
    <p>
        Unix and Mac OSX uses LF.</p>
    <p>
        Old Mac systems uses CR.</p>
    <p>
        XML stores a new line as LF.</p>
    <hr />
    <h2>Well Formed XML</h2>
    <p>
        XML documents that conform to the syntax rules above are said to be &quot;Well Formed&quot; XML documents.</p>
</asp:Content>
