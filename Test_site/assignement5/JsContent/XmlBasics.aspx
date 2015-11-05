<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteJxml.master" AutoEventWireup="true" CodeBehind="XmlBasics.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="XmlPLacHolder" runat="server">
    <p class="intro">
        XML is a software- and hardware-independent tool for storing and transporting data.</p>
    <hr />
    <h2>Why Study XML?</h2>
    <p>
        XML plays an important role in many IT systems.</p>
    <p>
        For this reason, it is important for all software developers to have a good understanding of XML.</p>
    <p>
        Before you continue, you should also have a basic understanding of:</p>
    <ul>
        <li>HTML</li>
        <li>JavaScript</li>
    </ul>
    <p>
        If you want to study these subjects first, find the tutorials on our <a href="http://www.w3schools.com/default.asp">Home page</a>.</p>
    <hr />
    <h2>What is XML?</h2>
    <ul>
        <li>XML stands for EXtensible Markup Language</li>
        <li>XML is a markup language much like HTML</li>
        <li>XML was designed to store and transport data</li>
        <li>XML was designed to be self-descriptive</li>
        <li>XML is a W3C Recommendation</li>
    </ul>
    <hr />
    <h2>XML Does Not DO Anything</h2>
    <p>
        Maybe it is a little hard to understand, but XML does not DO anything.</p>
    <p>
        This note is a note to Tove, from Jani, stored as XML:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">note</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">to</span><span class="highGT">&gt;</span>Tove<span class="highLT">&lt;</span><span class="highELE">/to</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">from</span><span class="highGT">&gt;</span>Jani<span class="highLT">&lt;</span><span class="highELE">/from</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">heading</span><span class="highGT">&gt;</span>Reminder<span class="highLT">&lt;</span><span class="highELE">/heading</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">body</span><span class="highGT">&gt;</span>Don&#39;t forget me this weekend!<span class="highLT">&lt;</span><span class="highELE">/body</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">/note</span><span class="highGT">&gt;</span>
        </div>
    </div>
    <p>
        The note is quite self-descriptive. It has sender and receiver information. It also has a heading and a message body.</p>
    <p>
        But still, this XML document does not DO anything. XML is just information wrapped in tags. Someone must write a piece of software to send, receive, store, or display it:</p>
    <div class="w3-yellow w3-padding w3-card-4">
        <h2>Note</h2>
        <p>
            To: Tove</p>
        <p>
            From: Jani</p>
        <h3>Reminder</h3>
        <p>
            Don&#39;t forget me this weekend!</p>
    </div>
    <hr />
    <h2>The Difference Between XML and HTML</h2>
    <p>
        XML and HTML were designed with different goals:</p>
    <ul>
        <li>XML was designed to carry data - with focus on what data is</li>
        <li>HTML was designed to display data - with focus on how data looks</li>
        <li>XML tags are not predefined like HTML tags are</li>
    </ul>
    <hr />
    <h2>XML Does Not Use Predefined Tags</h2>
    <p>
        The XML language has no predefined tags.</p>
    <p>
        The tags in the example above (like &lt;to&gt; and &lt;from&gt;) are not defined in any XML standard. These tags are &quot;invented&quot; by the author of the XML document.</p>
    <p>
        HTML works with predefined tags like &lt;p&gt;, &lt;h1&gt;, &lt;table&gt;, etc.</p>
    <p>
        With XML, the author must define both the tags and the document structure.</p>
    <hr />
    <h2>XML is Extensible</h2>
    <p>
        Most XML applications will work as expected even if new data is added (or removed).</p>
    <p>
        Imagine an application designed to display the original version of note.xml (&lt;to&gt; &lt;from&gt; &lt;heading&gt; &lt;data&gt;).</p>
    <p>
        Then imagine a newer version of note.xml with added &lt;date&gt; and &lt;hour&gt; elements, and a removed &lt;heading&gt;.</p>
    <p>
        The way XML is constructed, older version of the application can still work:</p>
    <div class="w3-example">
        <div class="w3-code notranslate htmlHigh">
            <span class="highLT">&lt;</span><span class="highELE">note</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">date</span><span class="highGT">&gt;</span>2015-09-01<span class="highLT">&lt;</span><span class="highELE">/date</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">hour</span><span class="highGT">&gt;</span>08:30<span class="highLT">&lt;</span><span class="highELE">/hour</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">to</span><span class="highGT">&gt;</span>Tove<span class="highLT">&lt;</span><span class="highELE">/to</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">from</span><span class="highGT">&gt;</span>Jani<span class="highLT">&lt;</span><span class="highELE">/from</span><span class="highGT">&gt;</span><br />
            &nbsp; <span class="highLT">&lt;</span><span class="highELE">body</span><span class="highGT">&gt;</span>Don&#39;t forget me this weekend!<span class="highLT">&lt;</span><span class="highELE">/body</span><span class="highGT">&gt;</span><br />
            <span class="highLT">&lt;</span><span class="highELE">/note</span><span class="highGT">&gt;</span>
        </div>
    </div>
    <div class="w3-row-padding">
        <div class="w3-half">
            <div class="w3-blue w3-padding">
                <h2>Note</h2>
                <p>
                    To: Tove</p>
                <p>
                    From: Jani</p>
                <h3>Head: Reminder</h3>
                <p>
                    Don&#39;t forget me this weekend!</p>
            </div>
        </div>
        <div class="w3-half">
            <div class="w3-yellow w3-padding w3-card-4">
                <h2>Note</h2>
                <p>
                    To: Tove</p>
                <p>
                    From: Jani</p>
                <p>
                    Date: 2015-09-01 08:30</p>
                <h3>Head: (none)</h3>
                <p>
                    Don&#39;t forget me this weekend!</p>
            </div>
        </div>
    </div>
    <hr />
    <h2>XML Simplifies Things</h2>
    <ul>
        <li>It simplifies data sharing</li>
        <li>It simplifies data transport</li>
        <li>It simplifies platform changes</li>
        <li>It simplifies data availability</li>
    </ul>
    <p>
        Many computer systems contain data in incompatible formats. Exchanging data between incompatible systems (or upgraded systems) is a time-consuming task for web developers. Large amounts of data must be converted, and incompatible data is often lost.</p>
    <p>
        XML stores data in plain text format. This provides a software- and hardware-independent way of storing, transporting, and sharing data.</p>
    <p>
        XML also makes it easier to expand or upgrade to new operating systems, new applications, or new browsers, without losing data.</p>
    <p>
        With XML, data can be available to all kinds of &quot;reading machines&quot; like people, computers, voice machines, news feeds, etc.</p>
</asp:Content>
