<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteAsp.master" AutoEventWireup="true" CodeBehind="AspBasics.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AspPlaceHolder" runat="server">


    <div class="post-body__content">
        <p>
            You&#39;re looking to learn <a href="http://asp.net">ASP.NET</a>? I can&#39;t blame you. Not only is it an extremely flexible platform, but .NET developers are in high demand and will continue to be. Unfortunately, it can be an intimidating platform to learn — especially if you are brand new to development or have never used Java or C++. However, once over the proverbial hump, you’ll find it to be a rewarding and enjoyable platform to develop for. This syllabus is designed to get you up and running on the <span class="skimlinks-unlinked">ASP.NET</span> stack, being able to write your own applications.</p>
        <p>
        </p>
        <h2 class="nolinks"><span>Assignment 0:</span> Disregard the Naysayers</h2>
        <p>
            Taking a page from Siddharth&#39;s earlier <a href="http://net.tutsplus.com/tutorials/php/the-best-way-to-learn-php/" target="_blank">guide to learn PHP</a>, disregard the haters. The majority of <span class="skimlinks-unlinked">ASP.NET’s</span> critics are kids who know nothing about the platform other than it was made by Microsoft; they haven&#39;t spent five minutes with it to come up with any kind of informed opinion.
        </p>
        <div class="tutorial_image">
            <img border="0" data-original-url="http://nettuts.s3.amazonaws.com/1073_tbwtlaspnet/haters_gonna_hate.jpg" src="https://cdn.tutsplus.com/net/uploads/legacy/1073_tbwtlaspnet/haters_gonna_hate.jpg" /></div>
        <p>
            While there are certainly valid criticisms of the platform, they are typically made by developers who not only know C# and the .NET Framework, but PHP, Ruby, C++, Java, and other platforms.</p>
        <blockquote>
            <p>
                <span class="skimlinks-unlinked">ASP.NET</span> isn’t perfect—there is no such thing. But it is one of the most flexible and powerful server-side technologies available today.</p>
        </blockquote>
        <h2 class="nolinks"><span>Assignment 1:</span> Pick a Language</h2>
        <blockquote class="pullquote">
            <p>
                I fully recommend you pick C#.</p>
        </blockquote>
        <p>
            <span class="skimlinks-unlinked">ASP.NET</span> is often incorrectly thought of as a programming language; it is actually a platform built on .NET’s Common Language Runtime (CLR), the component of the .NET Framework responsible for executing .NET applications. Because of this, a .NET developer can use whatever .NET-enabled language they want to write their <span class="skimlinks-unlinked">ASP.NET</span> application. This means you can write an application in C#, Visual <span class="skimlinks-unlinked">Basic.NET</span>, Python, PHP, Perl, and many other languages. As long as there is a .NET compiler for your chosen language, you can write an <span class="skimlinks-unlinked">ASP.NET</span> application with it.
        </p>
        <p>
            Keeping that in mind, I fully recommend you pick C#. While it may be tempting to pick another language you might be more familiar with, the bulk of information, both in books and on the Web, are geared towards Microsoft&#39;s officially supported languages: C# and <span class="skimlinks-unlinked">VB.NET</span>. Additionally, C# was specifically designed for the .NET Framework, and thus, is the most intuitive for using .NET&#39;s features. This is one of the reasons why .NET is intimidating; not only do you have to learn the framework, but a new language, too. But it is well worth it in the end.</p>
        <h3 class="nolinks">Extra Credit</h3>
        <ul>
            <li><strong>Visual C# 2010 Step by Step: </strong>After you pick a language, it&#39;s a good idea to get familiar with it. If you want to dig into the C# language before getting into <span class="skimlinks-unlinked">ASP.NET</span>, I recommend <a href="http://amzn.to/vVuHWw" target="_blank" title="Visual C# 2010 Step by Step by John Sharp at Amazon">Visual C# 2010 Step by Step</a>. It is a very good introduction to the language, and will introduce you to many aspects of the .NET Framework as well. It&#39;s not required reading, but you&#39;ll have an easier time learning <span class="skimlinks-unlinked">ASP.NET</span> with a solid foundation in C#. </li>
            <li><strong><span class="skimlinks-unlinked">ASP.NET</span> from Scratch: </strong>Nettuts+ has a semi-fast-paced series called <a href="http://net.tutsplus.com/sessions/asp-net-from-scratch/" target="_blank" title="ASP.NET from Scratch Series">ASP.NET from Scratch</a>, presented by yours truly. The beginning lessons are a couple years old, but <a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-lesson-1/" target="_blank" title="ASP.NET From Scratch Lesson 1">Lesson 1</a> and <a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-lesson-2/" target="_blank" title="ASP.NET From Scratch Lesson 2">Lesson 2</a> give you some background of the platform as well as a brief introduction to <span class="skimlinks-unlinked">ASP.NET</span>. You don&#39;t necessarily have to follow along with the examples (they use older tools which you will not want to download),&nbsp; but watch the first few lessons to get an idea of what you&#39;re getting into. The later lessons work with 
                the MVC framework, which&nbsp; you should wait on learning until a later time. The series was designed to get you up and running with <span class="skimlinks-unlinked">ASP.NET</span>, so it is not as comprehensive as a book might be, but that&#39;ll be taken care of with... </li>
        </ul>
        <h2 class="nolinks"><span>Assignment 2:</span> Read Some Books</h2>
        <p>
            Two to be exact. There is no shortage of <span class="skimlinks-unlinked">ASP.NET</span> books in the world, but there are bad books, good books, and excellent books. The two listed here are excellent, and I want you to read them in order.</p>
        <div style="margin-bottom: 20px; float: left; clear: both; margin-right: 20px">
            <a href="http://amzn.to/unKTXO" target="_blank" title="Beginning ASP.NET 4: in C# and VB at Amazon">
            <img alt="Nettuts image" data-original-url="http://nettuts.s3.amazonaws.com/1073_tbwtlaspnet/beg_aspnet4.JPG" src="https://cdn.tutsplus.com/net/uploads/legacy/1073_tbwtlaspnet/beg_aspnet4.JPG" /> </a>
        </div>
        <h3 class="nolinks" style="padding-top: 0;"><a href="http://amzn.to/unKTXO" target="_blank" title="Beginning ASP.NET 4: in C# and VB at Amazon">Beginning ASP.NET 4 in C# and VB</a></h3>
        <p>
            <strong>Author:</strong> Imar Spaanjaars</p>
        <p>
            <a href="http://amzn.to/unKTXO" target="_blank" title="Beginning ASP.NET 4: in C# and VB at Amazon">Beginning ASP.NET 4 in C# and VB</a> starts at the very beginning by walking you through downloading and installing a free version of Visual Studio called Visual Web Developer Express. You’ll then embark on your <span class="skimlinks-unlinked">ASP.NET</span> journey, learning syntax, controls, themes, and other features of the platform. Just as <a href="http://amzn.to/vVuHWw" target="_blank" title="Visual C# 2010 Step by Step by John Sharp at Amazon">Visual C# 2010 Step by Step</a> gives you solid foundation in C#, Spaanjaars’ Beginning <span class="skimlinks-unlinked">ASP.NET</span> 4 in C# and VB gives you a solid foundation in <span class="skimlinks-unlinked">ASP.NET</span> fundamentals.</p>
        <div style="margin-bottom: 20px; float: left; clear: both; margin-right: 20px">
            <a href="http://amzn.to/sGtHG1" title="Professional ASP.NET 4 in C# and VB at Amazon">
            <img alt="Nettuts image" data-original-url="http://nettuts.s3.amazonaws.com/1073_tbwtlaspnet/pro_aspnet4.JPG" src="https://cdn.tutsplus.com/net/uploads/legacy/1073_tbwtlaspnet/pro_aspnet4.JPG" /> </a>
        </div>
        <h3 class="nolinks" style="padding-top: 0;"><a href="http://amzn.to/sGtHG1" title="Professional ASP.NET 4 in C# and VB at Amazon">Professional ASP.NET 4 in C# and VB</a></h3>
        <p>
            <strong>Author:</strong> Bill Evjen, Scott Hanselman and Devin Rader</p>
        <p>
            This book dives deeper into <span class="skimlinks-unlinked">ASP.NET</span> to give you a more complete understanding of the platform. It will not only expand upon the topics covered in Spaanjaars’ book, but it will introduce you to other features of <span class="skimlinks-unlinked">ASP.NET</span> and the .NET Framework: sessions, the provider model, membership (authentication and user roles), security, state management, caching, and the list goes on. There is not much this book does not cover, and it will be an invaluable resource you can return to when you need a refresher on a particular feature or topic.</p>
        <p>
            By the time you finish these two books, you’ll have a very good understanding of the platform. So it&#39;s time to branch out and...</p>
        <h2 class="nolinks"><span>Assignment 3:</span> Create Something</h2>
        <blockquote class="pullquote">
            <p>
                Reading is one thing; doing is another.</p>
        </blockquote>
        <p>
            Reading is one thing; doing is another. While you undoubtedly followed along with the examples in the previous listed books, doing something on your own is one of the best ways to learn. So for this assignment, write something. Building your own blogging engine, forums, or to-do list will put what you&#39;ve learned into practice. Start small and add more to your project as you finish a piece. Make sure you include the following features:</p>
        <ul>
            <li><strong>Database-Driven: </strong>It should be database driven. Use Microsoft&#39;s SQL Server Express as your data store, and design the tables you&#39;ll need for your application. If you&#39;re new to designing databases, it&#39;s typically a good idea to think of your data as logical objects. For example, a blog app could have a table called BlogPosts where the table&#39;s fields describe blog posts (title, posting, date of post, etc). Keep it simple and logical. </li>
            <li><strong>UI: </strong>It should have a &quot;front-end.&quot; By this, I mean the portion of the app that visitors would see; it&#39;s the content that your project is supposed to display. If you build a blog, it&#39;s the blog posts, archives, etc. If you&#39;re building a forum, it&#39;s the threads and posts contained within the forum. If it&#39;s a to-do, list, it&#39;s the tasks you (or other users) are to keep track of. </li>
            <li><strong>Admin: </strong>It should have a &quot;back-end.&quot; This is the administrative portion of the project, where you maintain the blog posts, forum, or to-do list. Make sure you protect it by requiring administrators to authenticate. </li>
        </ul>
        <p>
            Never fear to crack open a book or ask questions on the Web. Sites like <a href="http://www.stackoverflow.com">www.stackoverflow.com</a> and <a href="http://forums.asp.net/" target="_blank">forums.asp.net</a> are valuable resources where you can ask questions and get tips from pros who have used the platform for years.</p>
        <h3 class="nolinks">Extra Credit</h3>
        <p>
            For extra credit, add in users and roles.
        </p>
        <ul>
            <li>For a blog, add the ability to have multiple authors post blog posts, and give them roles that determine what privileges they have. </li>
            <li>If a forum, add the capability for users to sign-up for an account and start and add to topics. Also use roles to determine what users can and cannot do. Add moderators and super-admins for extra extra credit. </li>
            <li>If a to-do list, make it multi-user capable, where users can have their own unique and private to-do list. </li>
        </ul>
        <p>
            Naturally, you&#39;ll need some way to administer these users and roles, so be sure to add that capability to your &quot;back-end.&quot;</p>
        <h2 class="nolinks"><span>Assignment 4:</span> Watch the ASP.NET from Scratch MVC Screencasts</h2>
        <p>
            The WebForms technology you have been using up to this point is just one of the programming patterns you can use to create <span class="skimlinks-unlinked">ASP.NET</span> applications. A second programming model is <span class="skimlinks-unlinked">ASP.NET</span> MVC. It&#39;s still <span class="skimlinks-unlinked">ASP.NET</span> but uses a different programming pattern called Model-View-Controller (MVC), and it is noticeably different than WebForms.</p>
        <p>
            To get started with the MVC Framework, watch the following <span class="skimlinks-unlinked">ASP.NET</span> from Scratch lessons:</p>
        <ul>
            <li><a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-mvc/" target="_blank">MVC Introduction</a> </li>
            <li><a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-routing-in-mvc/" target="_blank">Routing in MVC</a> </li>
            <li><a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-controllers-and-simple-model-validation/" target="_blank">Controllers and Simple Model Validation</a> </li>
            <li><a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-views/" target="_blank">Views</a> </li>
            <li><a href="http://net.tutsplus.com/tutorials/asp-net/asp-net-from-scratch-views-with-mvc3/" target="_blank">Views in MVC3</a> </li>
        </ul>
        <p>
            These lessons will get you up and running on the MVC path quickly.</p>
        <h2 class="nolinks"><span>Assignment 5:</span> Read Some MVC Books</h2>
        <div style="margin-bottom: 20px; float: left; clear: both; margin-right: 20px">
            <a href="http://amzn.to/tT1wz7" target="_blank" title="Professional ASP.NET MVC 3 at Amazon">
            <img alt="Nettuts image" data-original-url="http://nettuts.s3.amazonaws.com/1073_tbwtlaspnet/pro_mvc3_wrox.JPG" src="https://cdn.tutsplus.com/net/uploads/legacy/1073_tbwtlaspnet/pro_mvc3_wrox.JPG" /> </a>
        </div>
        <h3 class="nolinks" style="padding-top: 0;"><a href="http://amzn.to/tT1wz7" target="_blank" title="Professional ASP.NET MVC 3 at Amazon">Professional ASP.NET MVC 3</a></h3>
        <p>
            <strong>Author:</strong> Jon Galloway, Phil Haack, Brad Wilson, K. Scott Allen</p>
        <p>
            Parts of this book will be reviewed from the <span class="skimlinks-unlinked">ASP.NET</span> from Scratch screencasts, but it does cover other topics such as Test Driven Development (TDD), security, and extending MVC, as well as dive deeper into topics covered in the <span class="skimlinks-unlinked">ASP.NET</span> from Scratch videos. This is a must have resource for any <span class="skimlinks-unlinked">ASP.NET</span> developer wanting to grasp the MVC Framework.</p>
        <div style="margin-bottom: 20px; float: left; clear: both; margin-right: 20px">
            <a href="http://amzn.to/tT1wz7" target="_blank" title="Professional ASP.NET MVC 3 at Amazon">
            <img alt="Nettuts image" data-original-url="http://nettuts.s3.amazonaws.com/1073_tbwtlaspnet/pro_mvc3_apress.JPG" src="https://cdn.tutsplus.com/net/uploads/legacy/1073_tbwtlaspnet/pro_mvc3_apress.JPG" /> </a>
        </div>
        <h3 class="nolinks" style="padding-top: 0;"><a href="http://amzn.to/tT1wz7" target="_blank" title="Pro ASP.NET MVC 3 Framework at Amazon">Pro ASP.NET MVC 3 Framework</a></h3>
        <p>
            <strong>Author:</strong> Steven Sanderson, Adam Freeman</p>
        <p>
            Once again, there will be review material, as many topics are covered in <span class="skimlinks-unlinked">ASP.NET</span> from Scratch and Professional <span class="skimlinks-unlinked">ASP.NET</span> MVC 3, but this is an excellent resource to give you other developers&#39; perspective on the MVC framework.
        </p>
        <h2 class="nolinks"><span>Assignment 6:</span> Rewrite Something using the MVC Framework</h2>
        <p>
            Just as writing something for Assignment 3 helped solidify your understanding of <span class="skimlinks-unlinked">ASP.NET</span> WebForms, you need to write something using the MVC Framework. When I learn a new language or pattern, I like to rewrite an existing project using my newfound knowledge. So for this assignment, rewrite the app you wrote for Assignment 3, but use the MVC Framework instead of WebForms. This rewrite should adhere to the same requirements as Assignment 3, and it has the same extra credit.
        </p>
        <blockquote>
            <p>
                Once again, don&#39;t forget that you&#39;re not alone; use your book or visit <a href="http://www.stackoverflow.com">www.stackoverflow.com</a> and <a href="http://forums.asp.net/" target="_blank">forums.asp.net</a> if you get stuck.</p>
        </blockquote>
        <h2 class="nolinks"><span>Assignment 7:</span> Follow the Masters</h2>
        <p>
            Many Microsoft employees involved with <span class="skimlinks-unlinked">ASP.NET</span> blog and tweet regularly, but not every <span class="skimlinks-unlinked">ASP.NET</span> master works for Microsoft. Be sure to follow these guys and subscribe to their blogs:</p>
        <ul>
            <li><strong>Scott Guthrie</strong> (<a href="http://twitter.com/#%21/scottgu" target="_blank">@scottgu</a>, <a href="http://weblogs.asp.net/scottgu/">weblogs.asp.net/scottgu/</a>) is one of the original architects of <span class="skimlinks-unlinked">ASP.NET</span> and offers informational tweets and blog posts on the subject (particularly new stuff). </li>
            <li><strong>Scott Hanselman</strong> (<a href="http://twitter.com/#%21/shanselman" target="_blank">@shanselman</a>, <a href="http://hanselman.com/" title="http://hanselman.com/">hanselman.com/</a>) tweets a lot, but he provides a <strong>ton</strong> of information on .NET and technology in general. </li>
            <li><strong>Phil Haack</strong> (<a href="http://twitter.com/#%21/haacked" target="_blank">@haacked</a>, <a href="http://haacked.com/" title="http://haacked.com/">haacked.com/</a>) also works for Microsoft in the MVC team, and his information blog posts cover a wide array of <span class="skimlinks-unlinked">ASP.NET</span> topics. He&#39;s also responsible for NuGet, a package management utility for Visual Studio and .NET apps. </li>
            <li><strong><span class="skimlinks-unlinked">ASP.NET</span> Team</strong> (<a href="http://twitter.com/#%21/aspnet" target="_blank">@aspnet</a>, <a href="http://www.asp.net">www.asp.net</a>) is the <span class="skimlinks-unlinked">ASP.NET</span> website, featuring community spotlights, forums, and tutorials. </li>
        </ul>
        <h2 class="nolinks"><span>Assignment 8:</span> Keep up to Date</h2>
        <blockquote class="pullquote">
            <p>
                Microsoft releases several Community Technical Previews (CTP) before every major release.</p>
        </blockquote>
        <p>
            Computer technology is a fast-paced industry, and <span class="skimlinks-unlinked">ASP.NET</span> is no exception. Since its release in 2002, <span class="skimlinks-unlinked">ASP.NET</span> has gone through five major versions (and one point release), with a new version coming in 2012, and <span class="skimlinks-unlinked">ASP.NET</span> MVC has seen three versions since its 2009 release. Things move rather quickly, and keeping up with the changes and improvements of new versions are a necessity.</p>
        <p>
            Thankfully, it is relatively easy to stay current with <span class="skimlinks-unlinked">ASP.NET</span>. Microsoft releases several Community Technical Previews (CTP) before every major release. Not only do you get to play with the new features in the upcoming version, but you have documentation, including a thorough &quot;what&#39;s new/changed&quot;, with every CTP release.</p>
        <h2 class="nolinks">Conclusion</h2>
        <p>
            This lesson plan will get you on the road to <span class="skimlinks-unlinked">ASP.NET</span> goodness. It&#39;s a fantastic platform, and it gets better with every new version and point release. If you have any questions, feel free to ask them in the comments or <a href="http://twitter.com/#%21/jwmcpeak" target="_blank">tweet me</a>. If you have anything to add, please share it with the rest of us in the comments. Thanks, and I hope you enjoy <span class="skimlinks-unlinked">ASP.NET</span>!</p>
    </div>

</asp:Content>
