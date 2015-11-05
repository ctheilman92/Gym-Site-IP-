<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteAsp.master" AutoEventWireup="true" CodeBehind="AspCIntro.aspx.cs" Inherits="assignement5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AspPlaceHolder" runat="server">
        <h1 class="title">Hello World -- Your First Program (C# Programming Guide)</h1>
        <div class="lw_vs">
            <div id="versionclick">
                <div>
                    <div class="cl_vs_arrow clip10x10">
&nbsp;</div>
                </div>
                <div class="introduction">
                    <p>
                        The following procedure creates a C# version of the traditional &quot;Hello World!&quot; program. The program displays the string <span class="code">Hello World!</span></p>
                    <p>
                        For more examples of introductory concepts, see <a href="https://msdn.microsoft.com/en-us/library/dd492171.aspx">Getting Started with Visual C# and Visual Basic</a>.</p>
                    <div class="alert">
                        <div class="contentTableWrapper">
                            <table>
                                <tr>
                                    <th align="left"><span>
                                        <img id="s-e6f6a65cf14f462597b64ac058dbe1d0-system-media-system-caps-note" alt="System_CAPS_note" src="https://i-msdn.sec.s-msft.com/dynimg/IC101471.jpeg" title="System_CAPS_note" xmlns="" /></span><span class="alertTitle">Note </span></th>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Your computer might show different names or locations for some of the Visual Studio user interface elements in the following instructions. The Visual Studio edition that you have and the settings that you use determine these elements. For more information, see <a href="https://msdn.microsoft.com/en-us/library/mt269425.aspx">Personalizing the Visual Studio IDE</a>.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div bookmarktitle="To create and run a console application" class="section">
                        <h2 class="heading">To create and run a console application</h2>
                        <ol class="steps">
                            <li class="step">
                                <div class="section">
                                    <p>
                                        Start Visual Studio.</p>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        On the menu bar, choose <strong>File</strong>, <strong>New</strong>, <strong>Project</strong>.</p>
                                    <p>
                                        The <strong>New Project</strong> dialog box opens.</p>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        Expand <strong>Installed</strong>, expand <strong>Templates</strong>, expand <strong>Visual C#</strong>, and then choose <strong>Console Application</strong>.</p>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        In the <strong>Name</strong> box, specify a name for your project, and then choose the <strong>OK</strong> button.</p>
                                    <p>
                                        The new project appears in <strong>Solution Explorer</strong>.</p>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        If Program.cs isn&#39;t open in the <strong>Code Editor</strong>, open the shortcut menu for <strong>Program.cs</strong> in <strong>Solution Explorer</strong>, and then choose <strong>View Code</strong>.</p>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        Replace the contents of Program.cs with the following code.</p>
                                    <div id="code-snippet-1" class="codeSnippetContainer" xmlns="">
                                        <div class="codeSnippetContainerTabs">
                                            <div class="codeSnippetContainerTabSingle" dir="ltr">
                                                <a>C#</a></div>
                                        </div>
                                        <div class="codeSnippetContainerCodeContainer">
                                            <div class="codeSnippetToolBar">
                                                <div class="codeSnippetToolBarText">
                                                </div>
                                            </div>
                                            <div id="CodeSnippetContainerCode_26d71a19-0b56-42fa-9c5d-e647d6599f52" class="codeSnippetContainerCode" dir="ltr">
                                                <div style="color:Black;">
                                                    <pre><span style="color:Green;">// A Hello World! program in C#.</span>
<span style="color:Blue;">using</span> System;
<span style="color:Blue;">namespace</span> HelloWorld
{
    <span style="color:Blue;">class</span> Hello 
    {
        <span style="color:Blue;">static</span> <span style="color:Blue;">void</span> Main() 
        {
            Console.WriteLine(<span style="color:#A31515;">&quot;Hello World!&quot;</span>);

            <span style="color:Green;">// Keep the console window open in debug mode.</span>
            Console.WriteLine(<span style="color:#A31515;">&quot;Press any key to exit.&quot;</span>);
            Console.ReadKey();
        }
    }
}
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="step">
                                <div class="section">
                                    <p>
                                        Choose the F5 key to run the project. A Command Prompt window appears that contains the line <span class="code">Hello World!</span></p>
                                </div>
                            </li>
                        </ol>
                    </div>
                    <p>
                        Next, the important parts of this program are examined.</p>
                </div>
                <div>
                    <h2 class="LW_CollapsibleArea_TitleDiv"></h2>
                    <div>
                        <a class="LW_CollapsibleArea_TitleAhref" href="javascript:void(0)" role="button" title=""><span class="LW_CollapsibleArea_Title">Comments</span></a><div id="Anchor_0" class="LW_CollapsibleArea_Anchor_Div active">
                            <a class="LW_CollapsibleArea_Anchor_Img" href="https://msdn.microsoft.com/en-us/library/k1sx6ed2.aspx#Anchor_0" title="Copy and share the link for this section"></a>
                        </div>
                        <div class="LW_CollapsibleArea_HrDiv">
                        </div>
                    </div>
                    <h2></h2>
                    <div class="sectionblock">
                        <div class="section">
                            <p>
                                The first line contains a comment. The characters <span class="code">//</span> convert the rest of the line to a comment.</p>
                            <div id="code-snippet-2" class="codeSnippetContainer" xmlns="">
                                <div class="codeSnippetContainerTabs">
                                    <div class="codeSnippetContainerTabSingle" dir="ltr">
                                        <a>C#</a></div>
                                </div>
                                <div class="codeSnippetContainerCodeContainer">
                                    <div class="codeSnippetToolBar">
                                        <div class="codeSnippetToolBarText">
                                        </div>
                                    </div>
                                    <div id="CodeSnippetContainerCode_4ae948da-b69b-489c-805b-0722699feced" class="codeSnippetContainerCode" dir="ltr">
                                        <div style="color:Black;">
                                            <pre><span style="color:Green;">// A Hello World! program in C#.</span>
</pre>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p>
                                You can also comment out a block of text by enclosing it between the <span class="code">/*</span> and <span class="code">*/</span> characters. This is shown in the following example.</p>
                            <div id="code-snippet-3" class="codeSnippetContainer" xmlns="">
                                <div class="codeSnippetContainerTabs">
                                    <div class="codeSnippetContainerTabSingle" dir="ltr">
                                        <a>C#</a></div>
                                </div>
                                <div class="codeSnippetContainerCodeContainer">
                                    <div class="codeSnippetToolBar">
                                        <div class="codeSnippetToolBarText">
                                        </div>
                                    </div>
                                    <div id="CodeSnippetContainerCode_f0ff5de0-dc93-4719-bb36-141168d4d68a" class="codeSnippetContainerCode" dir="ltr">
                                        <div style="color:Black;">
                                            <pre><span style="color:Green;">/* A &quot;Hello World!&quot; program in C#.
This program displays the string &quot;Hello World!&quot; on the screen. */</span>
</pre>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <h2 class="LW_CollapsibleArea_TitleDiv"></h2>
                    <div>
                        <a class="LW_CollapsibleArea_TitleAhref" href="javascript:void(0)" role="button" title=""><span class="LW_CollapsibleArea_Title">Main Method</span></a><div id="Anchor_1" class="LW_CollapsibleArea_Anchor_Div">
                            <a class="LW_CollapsibleArea_Anchor_Img" href="https://msdn.microsoft.com/en-us/library/k1sx6ed2.aspx#Anchor_1" title="Copy and share the link for this section"></a>
                        </div>
                        <div class="LW_CollapsibleArea_HrDiv">
                        </div>
                    </div>
                    <h2></h2>
                    <div class="sectionblock">
                        <div class="section">
                            <p>
                                A C# console application must contain a <span class="code">Main</span> method, in which control starts and ends. The <span class="code">Main</span> method is where you create objects and execute other methods.</p>
                            <p>
                                The <span class="code">Main</span> method is a <a href="https://msdn.microsoft.com/en-us/library/98f28cdx.aspx">static (C# Reference)</a> method that resides inside a class or a struct. In the previous &quot;Hello World!&quot; example, it resides in a class named <span class="code">Hello</span>. You can declare the <span class="code">Main</span> method in one of the following ways:</p>
                            <ul class="unordered">
                                <li>
                                    <p>
                                        It can return <strong>void</strong>.
                                    </p>
                                    <div id="code-snippet-4" class="codeSnippetContainer" xmlns="">
                                        <div class="codeSnippetContainerTabs">
                                            <div class="codeSnippetContainerTabSingle" dir="ltr">
                                                <a>C#</a></div>
                                        </div>
                                        <div class="codeSnippetContainerCodeContainer">
                                            <div class="codeSnippetToolBar">
                                                <div class="codeSnippetToolBarText">
                                                </div>
                                            </div>
                                            <div id="CodeSnippetContainerCode_2f29294c-7df8-405c-95fe-477c0dd5f2d0" class="codeSnippetContainerCode" dir="ltr">
                                                <div style="color:Black;">
                                                    <pre><span style="color:Blue;">static</span> <span style="color:Blue;">void</span> Main()
{
    <span style="color:Green;">//...</span>
}
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <p>
                                        It can also return an integer.
                                    </p>
                                    <div id="code-snippet-5" class="codeSnippetContainer" xmlns="">
                                        <div class="codeSnippetContainerTabs">
                                            <div class="codeSnippetContainerTabSingle" dir="ltr">
                                                <a>C#</a></div>
                                        </div>
                                        <div class="codeSnippetContainerCodeContainer">
                                            <div class="codeSnippetToolBar">
                                                <div class="codeSnippetToolBarText">
                                                </div>
                                            </div>
                                            <div id="CodeSnippetContainerCode_5610d99d-dc61-46d6-9bf3-76dba3b24476" class="codeSnippetContainerCode" dir="ltr">
                                                <div style="color:Black;">
                                                    <pre><span style="color:Blue;">static</span> <span style="color:Blue;">int</span> Main()
{
    <span style="color:Green;">//...</span>
    <span style="color:Blue;">return</span> 0;
}
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <p>
                                        With either of the return types, it can take arguments.
                                    </p>
                                    <div id="code-snippet-6" class="codeSnippetContainer" xmlns="">
                                        <div class="codeSnippetContainerTabs">
                                            <div class="codeSnippetContainerTabSingle" dir="ltr">
                                                <a>C#</a></div>
                                        </div>
                                        <div class="codeSnippetContainerCodeContainer">
                                            <div class="codeSnippetToolBar">
                                                <div class="codeSnippetToolBarText">
                                                </div>
                                            </div>
                                            <div id="CodeSnippetContainerCode_3c3ad503-45d9-463d-aece-0750c8791314" class="codeSnippetContainerCode" dir="ltr">
                                                <div style="color:Black;">
                                                    <pre><span style="color:Blue;">static</span> <span style="color:Blue;">void</span> Main(<span style="color:Blue;">string</span>[] args)
{
    <span style="color:Green;">//...</span>
}
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p>
                                        -or-</p>
                                    <div id="code-snippet-7" class="codeSnippetContainer" xmlns="">
                                        <div class="codeSnippetContainerTabs">
                                            <div class="codeSnippetContainerTabSingle" dir="ltr">
                                                <a>C#</a></div>
                                        </div>
                                        <div class="codeSnippetContainerCodeContainer">
                                            <div class="codeSnippetToolBar">
                                                <div class="codeSnippetToolBarText">
                                                </div>
                                            </div>
                                            <div id="CodeSnippetContainerCode_78edb658-9b63-49e0-8ed8-713d4baaf1d3" class="codeSnippetContainerCode" dir="ltr">
                                                <div style="color:Black;">
                                                    <pre><span style="color:Blue;">static</span> <span style="color:Blue;">int</span> Main(<span style="color:Blue;">string</span>[] args)
{
    <span style="color:Green;">//...</span>
    <span style="color:Blue;">return</span> 0;
}
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <p>
                                The parameter of the <span class="code">Main</span> method, <span class="code">args</span>, is a <strong>string</strong> array that contains the command-line arguments used to invoke the program. Unlike in C++, the array does not include the name of the executable (exe) file.</p>
                            <p>
                                For more information about how to use command-line arguments, see the examples in <a href="https://msdn.microsoft.com/en-us/library/acy3edy3.aspx">Main() and Command-Line Arguments (C# Programming Guide)</a> and <a href="https://msdn.microsoft.com/en-us/library/3707x96z.aspx">How to: Create and Use Assemblies Using the Command Line (C# and Visual Basic)</a>.</p>
                            <p>
                                The call to <a href="https://msdn.microsoft.com/en-us/library/471w8d85.aspx">ReadKey</a> at the end of the <span class="code">Main</span> method prevents the console window from closing before you have a chance to read the output when you run your program in debug mode, by pressing F5.</p>
                        </div>
                    </div>
                </div>
                <div>
                    <h2 class="LW_CollapsibleArea_TitleDiv"></h2>
                    <div>
                        <a class="LW_CollapsibleArea_TitleAhref" href="javascript:void(0)" role="button" title=""><span class="LW_CollapsibleArea_Title">Input and Output</span></a><div id="Anchor_2" class="LW_CollapsibleArea_Anchor_Div">
                            <a class="LW_CollapsibleArea_Anchor_Img" href="https://msdn.microsoft.com/en-us/library/k1sx6ed2.aspx#Anchor_2" title="Copy and share the link for this section"></a>
                        </div>
                        <div class="LW_CollapsibleArea_HrDiv">
                        </div>
                    </div>
                    <h2></h2>
                    <div class="sectionblock">
                        <div class="section">
                            <p>
                                C# programs generally use the input/output services provided by the run-time library of the .NET Framework. The statement <span class="code">System.Console.WriteLine(&quot;Hello World!&quot;);</span> uses the <a href="https://msdn.microsoft.com/en-us/library/zdf6yhx5.aspx">WriteLine</a> method. This is one of the output methods of the <a href="https://msdn.microsoft.com/en-us/library/system.console.aspx">Console</a> class in the run-time library. It displays its string parameter on the standard output stream followed by a new line. Other <a href="https://msdn.microsoft.com/en-us/library/system.console.aspx">Console</a> methods are available for different input and output operations. If you include the <span class="code">using System;</span> directive at the beginning of the program, you can directly use the <a href="https://msdn.microsoft.com/en-us/library/system.aspx">System</a> classes and methods without fully qualifying them. For example, you can call <span class="code">Console.WriteLine</span> 
                                instead of <span class="code">System.Console.WriteLine</span>:</p>
                            <div id="code-snippet-8" class="codeSnippetContainer" xmlns="">
                                <div class="codeSnippetContainerTabs">
                                    <div class="codeSnippetContainerTabSingle" dir="ltr">
                                        <a>C#</a></div>
                                </div>
                                <div class="codeSnippetContainerCodeContainer">
                                    <div class="codeSnippetToolBar">
                                        <div class="codeSnippetToolBarText">
                                        </div>
                                    </div>
                                    <div id="CodeSnippetContainerCode_3bde97cf-69b8-4beb-94e0-ae79f5210a76" class="codeSnippetContainerCode" dir="ltr">
                                        <div style="color:Black;">
                                            <pre><span style="color:Blue;">using</span> System;
</pre>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="code-snippet-9" class="codeSnippetContainer" xmlns="">
                                <div class="codeSnippetContainerTabs">
                                    <div class="codeSnippetContainerTabSingle" dir="ltr">
                                        <a>C#</a></div>
                                </div>
                                <div class="codeSnippetContainerCodeContainer">
                                    <div class="codeSnippetToolBar">
                                        <div class="codeSnippetToolBarText">
                                        </div>
                                    </div>
                                    <div id="CodeSnippetContainerCode_e7265ee7-23ab-4474-ae99-140be421f254" class="codeSnippetContainerCode" dir="ltr">
                                        <div style="color:Black;">
                                            <pre>Console.WriteLine(<span style="color:#A31515;">&quot;Hello World!&quot;</span>);
</pre>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p>
                                For more information about input/output methods, see <a href="https://msdn.microsoft.com/en-us/library/system.io.aspx">System.IO</a>.</p>
                        </div>
                    </div>
                </div>
                <div>
                    <h2 class="LW_CollapsibleArea_TitleDiv"></h2>
                    <div>
                        <a class="LW_CollapsibleArea_TitleAhref" href="javascript:void(0)" role="button" title=""><span class="LW_CollapsibleArea_Title">Command-Line Compilation and Execution</span></a><div id="Anchor_3" class="LW_CollapsibleArea_Anchor_Div">
                            <a class="LW_CollapsibleArea_Anchor_Img" href="https://msdn.microsoft.com/en-us/library/k1sx6ed2.aspx#Anchor_3" title="Copy and share the link for this section"></a>
                        </div>
                        <div class="LW_CollapsibleArea_HrDiv">
                        </div>
                    </div>
                    <h2></h2>
                    <div class="sectionblock">
                        <div class="section">
                            <p>
                                You can compile the &quot;Hello World!&quot; program by using the command line instead of the Visual Studio Integrated Development Environment (IDE).</p>
                            <div bookmarktitle="To compile and run from a command prompt" class="section">
                                <h3 class="subHeading">To compile and run from a command prompt</h3>
                                <ol class="steps">
                                    <li class="step">
                                        <div class="section">
                                            <p>
                                                Paste the code from the preceding procedure into any text editor, and then save the file as a text file. Name the file <span class="code">Hello.cs</span>. C# source code files use the extension <span class="code">.cs</span>.</p>
                                        </div>
                                    </li>
                                    <li class="step">
                                        <div class="section">
                                            <p>
                                                Perform one of the following steps to open a command-prompt window:</p>
                                            <ul class="unordered">
                                                <li>
                                                    <p>
                                                        In Windows 8, on the <strong>Start</strong> screen, search for <strong>Developer Command Prompt</strong>, and then tap or choose <strong>Developer Command Prompt for VS2012</strong>.</p>
                                                    <p>
                                                        A Developer Command Prompt window appears.</p>
                                                </li>
                                                <li>
                                                    <p>
                                                        In Windows 7, open the <strong>Start</strong> menu, expand the folder for the current version of Visual Studio, open the shortcut menu for <strong>Visual Studio Tools</strong>, and then choose <strong>Developer Command Prompt for VS2012</strong>.</p>
                                                    <p>
                                                        A Developer Command Prompt window appears.</p>
                                                </li>
                                                <li>
                                                    <p>
                                                        Enable command-line builds from a standard Command Prompt window.</p>
                                                    <p>
                                                        See <a href="https://msdn.microsoft.com/en-us/library/1700bbwd.aspx">How to: Set Environment Variables for the Visual Studio Command Line</a>.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="step">
                                        <div class="section">
                                            <p>
                                                In the command-prompt window, navigate to the folder that contains your <span class="code">Hello.cs</span> file.</p>
                                        </div>
                                    </li>
                                    <li class="step">
                                        <div class="section">
                                            <p>
                                                Enter the following command to compile <span class="code">Hello.cs</span>.</p>
                                            <p>
                                                <span class="code">csc Hello.cs</span></p>
                                            <p>
                                                If your program has no compilation errors, an executable file that is named <span class="code">Hello.exe</span> is created.</p>
                                        </div>
                                    </li>
                                    <li class="step">
                                        <div class="section">
                                            <p>
                                                In the command-prompt window, enter the following command to run the program:</p>
                                            <p>
                                                <span class="code">Hello</span></p>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
