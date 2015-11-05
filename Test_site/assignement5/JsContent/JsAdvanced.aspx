<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteJxml.master" AutoEventWireup="true" CodeBehind="JsAdvanced.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="XmlPLacHolder" runat="server">
    <p class="intro">
        avaScript <strong>syntax</strong> is the set of&nbsp;rules, how JavaScript programs are constructed.</p>
    <hr />
    <h2>JavaScript Programs</h2>
    <p>
        A <strong>computer program</strong> is a list of &quot;instructions&quot; to be &quot;executed&quot; by the computer.</p>
    <p>
        In a programming language, these program instructions are called <strong>statements</strong>.</p>
    <p>
        JavaScript is a <strong>programming language</strong>.</p>
    <p>
        JavaScript statements are separated by <strong>semicolons</strong>.</p>
    <div class="w3-example">
        <h3>Example</h3>
        <div class="w3-code notranslate jsHigh">
            <span class="highELE">var</span> x = <span class="highVAL">5</span>;<br />
            <span class="highELE">var</span> y = <span class="highVAL">6</span>;<br />
            <span class="highELE">var</span> z = x + y;
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_statements" target="_blank">Try it Yourself »</a>
    </div>
    <p>
    </p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /><br />
            </th>
            <td>In HTML, JavaScript programs can be executed by the web browser.</td>
        </tr>
    </table>
    <p>
    </p>
    <hr />
    <h2>JavaScript Statements</h2>
    <p>
        JavaScript statements are composed of:</p>
    <p>
        Values, Operators, Expressions,&nbsp;Keywords, and Comments.</p>
    <hr />
    <h2>JavaScript Values</h2>
    <p>
        The JavaScript syntax defines two types of values: Fixed values and variable values.</p>
    <p>
        Fixed values are called <strong>literals</strong>. Variable values are called <strong>variables</strong>.</p>
    <hr />
    <h2>JavaScript Literals</h2>
    <p>
        The most important rules for writing fixed values are:</p>
    <p>
        <strong>Numbers</strong> are written with or without decimals:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highVAL">10.50</span><br />
            <br />
            <span class="highVAL">1001</span></div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_numbers" target="_blank">Try it Yourself »</a>
    </div>
    <p>
        <strong>Strings</strong> are text, written within double or single quotes:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highVAL">&quot;John Doe&quot;</span><br />
            <br />
            <span class="highVAL">&#39;John Doe&#39;</span>
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_strings" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Variables</h2>
    <p>
        In a programming language, <strong>variables</strong> are used to <strong>store</strong> data values.</p>
    <p>
        JavaScript uses the <strong>var </strong>keyword to <strong>define</strong> variables.</p>
    <p>
        An <strong>equal sign</strong> is used to <strong>assign values</strong> to variables.</p>
    <p>
        In this example, x is defined as a variable. Then, x is assigned (given) the value 6:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highELE">var</span> x;<br />
            <br />
            x = <span class="highVAL">6</span>;
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_variables" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Operators</h2>
    <p>
        JavaScript uses an <strong>assignment operator</strong> ( = ) to <strong>assign</strong> values to variables:
    </p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highELE">var</span> x = <span class="highVAL">5</span>;<br />
            <span class="highELE">var</span> y = <span class="highVAL">6</span>;</div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_assign" target="_blank">Try it Yourself »</a>
    </div>
    <p>
        JavaScript uses <strong>arithmetic operators</strong> ( + - *&nbsp; / ) to <strong>compute</strong> values:
    </p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            (<span class="highVAL">5</span> + <span class="highVAL">6</span>) * <span class="highVAL">10</span><br />
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_operators" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Expressions</h2>
    <p>
        An expression is a combination of values, variables, and operators, which computes to a value.</p>
    <p>
        The computation is called an evaluation.</p>
    <p>
        For example, 5 * 10 evaluates to 50:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highVAL">5</span> * <span class="highVAL">10</span>
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_expressions" target="_blank">Try it Yourself »</a>
    </div>
    <p>
        Expressions can also contain variable values:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            x * <span class="highVAL">10</span>
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_expressions_variables" target="_blank">Try it Yourself »</a>
    </div>
    <p>
        The values can be of various types, such as numbers and strings.</p>
    <p>
        For example, &quot;John&quot; + &quot; &quot; + &quot;Doe&quot;, evaluates to &quot;John Doe&quot;:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highVAL">&quot;John&quot;</span> + <span class="highVAL">&quot; &quot;</span> + <span class="highVAL">&quot;Doe&quot;</span>
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_expressions_strings" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Keywords</h2>
    <p>
        JavaScript <strong>keywords</strong> are used to identify actions to be performed.</p>
    <p>
        The <strong>var</strong> keyword tells the browser to create a new variable:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highELE">var</span> x = <span class="highVAL">5</span> + <span class="highVAL">6</span>;<br />
            <span class="highELE">var</span> y = x * <span class="highVAL">10</span>;
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_keywords" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Comments</h2>
    <p>
        Not all JavaScript statements are &quot;executed&quot;.</p>
    <p>
        Code after double slashes <strong>//</strong> or between <strong>/*</strong> and <strong>*/</strong> is treated as a <strong>comment</strong>.</p>
    <p>
        Comments are ignored, and will not be executed:</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            <span class="highELE">var</span> x = <span class="highVAL">5</span>;&nbsp;&nbsp; <span class="highCOM">// I will be executed<br />
            </span>
            <br />
            <span class="highCOM">// var x = 6;&nbsp;&nbsp; I will NOT be executed</span></div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_comments" target="_blank">Try it Yourself »</a>
    </div>
    <hr />
    <h2>JavaScript Identifiers</h2>
    <p>
        Identifiers are names.</p>
    <p>
        In JavaScript, identifiers are used to name variables (and keywords, and functions, and labels).</p>
    <p>
        The rules for legal names are much the same in most programming languages.</p>
    <p>
        In JavaScript, the first character must be a letter, an underscore (_), or a dollar sign ($).</p>
    <p>
        Subsequent characters may be letters, digits, underscores, or dollar signs.</p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>Numbers are not allowed as the first character.<br />
                This way JavaScript can easily distinguish identifiers from numbers. </td>
        </tr>
    </table>
    <hr />
    <h2>JavaScript is Case Sensitive</h2>
    <p>
        All JavaScript identifiers are <strong>case sensitive</strong>.&nbsp;
    </p>
    <p>
        The variables <strong>lastName</strong> and <strong>lastname</strong>, are two different variables.</p>
    <div class="w3-example">
        <div class="w3-code notranslate jsHigh">
            lastName = <span class="highVAL">&quot;Doe&quot;</span>;<br />
            lastname = <span class="highVAL">&quot;Peterson&quot;</span>;
        </div>
        <a class="w3-btn w3-margin-bottom" href="http://www.w3schools.com/js/tryit.asp?filename=tryjs_syntax_case" target="_blank">Try it Yourself »</a>
    </div>
    <p>
        JavaScript does not interpret <strong>VAR</strong> or <strong>Var</strong> as the keyword <strong>var</strong>.</p>
    <hr />
    <h2>JavaScript and Camel Case</h2>
    <p>
        Historically, programmers have used three ways of joining multiple words into one variable name:</p>
    <p>
        <strong>Hyphens:</strong></p>
    <p>
        first-name, last-name, master-card, inter-city.</p>
    <p>
        <strong>Underscore:</strong></p>
    <p>
        first_name, last_name, master_card, inter_city.</p>
    <p>
        <strong>Camel Case:</strong></p>
    <p>
        FirstName, LastName, MasterCard, InterCity.</p>
    <p>
        <img alt="camelCase" src="http://www.w3schools.com/js/pic_camelcase.jpg" style="width: 200px; height: 221px" /></p>
    <p>
        In programming languages, especially in JavaScript, camel case often starts with a lowercase letter:</p>
    <p>
        firstName, lastName, masterCard, interCity.</p>
    <table class="lamp">
        <tr>
            <th style="width:34px">
                <img alt="Note" src="http://www.w3schools.com/images/lamp.jpg" style="height:32px;width:32px" /></th>
            <td>Hyphens are not allowed in JavaScript. It is reserved for subtractions. </td>
        </tr>
    </table>
</asp:Content>
