<%@ Page Title="" Language="C#" MasterPageFile="~/LoginNavBar.master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="WebApplication1.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        width: 124px;
    }
        .auto-style2 {
            width: 124px;
            height: 42px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style8 {
            width: 124px;
            height: 82px;
        }
        .auto-style11 {
            height: 82px;
        }

        .mytable tr:nth-child(odd) {
            background-color:deepskyblue;
        }

        .mytable tr:nth-child(even) {
            background-color:white;
        }

        .mytable td {
            border: 1px solid;
            font-size:x-small;
        }
        .auto-style15 {
            width: 124px;
            height: 108px;
        }
        .auto-style17 {
            height: 108px;
        }
        .auto-style58 {
        width: 150px;
    }
    .auto-style59 {
        width: 150px;
        height: 108px;
    }
    .auto-style60 {
        width: 150px;
        height: 82px;
    }
    .auto-style61 {
        height: 42px;
        width: 150px;
    }
    .auto-style62 {
        width: 149px;
    }
    .auto-style63 {
        width: 149px;
        height: 108px;
    }
    .auto-style64 {
        width: 149px;
        height: 82px;
    }
    .auto-style65 {
        height: 42px;
        width: 149px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Fitness & Wellness.</h2>
<hr />
    <div class="mytable">
    <table style="width: 100%; text-align:center; border:solid">
        <tr>
            <td class="auto-style1">
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style58"><strong>MONDAY</strong></td>
            <td class="auto-style58"><strong>TUESDAY</strong></td>
            <td class="auto-style58"><strong>WEDNESDAY</strong></td>
            <td class="auto-style62"><strong>THURSDAY</strong></td>
            <td class="auto-style58"><strong>FRIDAY</strong></td>
            <td class="auto-style58"><strong>SATURDAY</strong></td>
            <td><strong>SUNDAY</strong></td>
        </tr>
        <tr>
            <td class="auto-style1">6:15 - 7:00 AM</td>
            <td class="auto-style58"><em></em></td>
            <td class="auto-style58"><strong><em>CYCLE</em></strong> <em>
                <br />
                with SAM-IZZY</em></td>
            <td class="auto-style58"><em></em></td>
            <td class="auto-style62"><em><strong>CYCLE</strong> 
                <br />
                with SAM-IZZY</em></td>
            <td class="auto-style58"><em></em></td>
            <td class="auto-style58"><em></em></td>
            <td><em></em></td>
        </tr>
        <tr>
            <td class="auto-style15">11:00 
                - 11:50 AM</td>
            <td class="auto-style59"><strong><em>CYCLE &amp; CORE</em></strong><em>
                <br />
                with RS STAFF-IZZY</em></td>
            <td class="auto-style59"><strong><em>YOGA FLOW</em></strong> <em>
                <br />
                with LAUREN-TARPIE</em></td>
            <td class="auto-style59"><em><strong>H.I.I.T.</strong><br />
                with SAIRA-IZZY</em></td>
            <td class="auto-style63"><em><strong>POWER YOGA</strong><br />
                with CHRISTINE-TARPIE<br />
                <strong>20/20/20</strong>
                <br />
                with BIANCA-IZZY</em></td>
            <td class="auto-style59"><em></em></td>
            <td class="auto-style59"><em></em></td>
            <td class="auto-style17"><em></em></td>
        </tr>
        <tr>
            <td class="auto-style8">12:00 
                - 12:50 PM</td>
            <td class="auto-style60"><strong><em>YOGA ESSENTIALS </em></strong><em>
                <br />
                with GABBY-TARPIE<br />
                <strong>20/20/20</strong>
                <br />
                with BIANCA-IZZY</em></td>
            <td class="auto-style60"><strong><em>MAX INTERVAL<br />
                </em></strong><em>&nbsp;with JOEY-IZZY<br />
                </em><strong><em>YOGA ESSENTIALS </em></strong><em>
                <br />
                with GABBY-TARPIE</em></td>
            <td class="auto-style60"><em><strong>ZUMBA </strong>
                <br />
                with SAIRA-IZZY
                <br />
                <strong>ATHLETIC
                <br />
                CONDITIONING</strong>
                <br />
                with NOLAN-TARPIE</em></td>
            <td class="auto-style64"><em><strong>HATHA YOGA</strong><br />
                with CLAIRE-TARPIE <strong>
                <br />
                MAX INTERVAL</strong>
                <br />
                with JOEY-IZZY <strong>
                <br />
                HYDRO FIT</strong>
                <br />
                with SAM-POOL</em></td>
            <td class="auto-style60"><em><strong>ATHLETIC
                <br />
                CONDITIONING<br />
                </strong>&nbsp;with NOLAN-IZZY <strong>
                <br />
                PILATES</strong>
                <br />
                with ELKE-TARPIE</em></td>
            <td class="auto-style60"><em><strong>YOGA RELAX</strong>
                <br />
                with GABBY-IZZY <strong>
                <br />
                CYCLE</strong><br />
                with ELKE-TARPIE</em></td>
            <td class="auto-style11"><em></em></td>
        </tr>
        <tr>
            <td class="auto-style2">5:30 - 6:20 PM</td>
            <td class="auto-style61"><strong><em>YOGA FLOW </em></strong><em>
                <br />
                with LAUREN-IZZY
                <br />
                <strong>MAX INTERVAL</strong>
                <br />
                with JOEY-TARPIE</em></td>
            <td class="auto-style61"><strong><em>PILATES</em></strong> <em>
                <br />
                with CHRISTINE-TARPIE
                <br />
                </em><strong><em>DANCE SCULPT</em></strong> <em>
                <br />
                with ELKE-IZZY</em></td>
            <td class="auto-style61"><em><strong>20/20/20 </strong>
                <br />
                with BIANCA-TARPIE
                <br />
                <strong>MAX INTERVAL </strong>
                <br />
                with JOEY-IZZY<br />
                <strong>HYDRO FIT</strong><br />
                with SAM-POOL</em></td>
            <td class="auto-style65"><strong><em>YOGA ESSENTIALS</em></strong><em>
                <br />
                with GABBY-IZZY</em></td>
            <td class="auto-style61"></td>
            <td class="auto-style61"></td>
            <td class="auto-style3"><em><strong>HATHA YOGA</strong>
                <br />
                with CLAIRE-TARPIE <strong>DANCE SCULPT<br />
                </strong>with ELKE/SAIRA-IZZY</em></td>
        </tr>
        <tr>
            <td class="auto-style1">6:30 - 7:20 PM</td>
            <td class="auto-style58"><strong><em>CYCLE<br />
                </em></strong><em>with ELKE- TARPIE<br />
                <strong>ATHLETIC 
                <br />
                CONDITIONING</strong>
                <br />
                with NOLAN-IZZY</em></td>
            <td class="auto-style58"><strong><em>ZUMBA</em></strong> <em>
                <br />
                with SAIRA-TARPIE
                <br />
                </em><strong><em>ISLANDER FIT</em></strong> <em>
                <br />
                with SAM-IZZY</em></td>
            <td class="auto-style58"><em><strong>CYCLE &amp; CORE</strong><br />
                with ELKE-TARPIE <strong>
                <br />
                HATHA YOGA</strong><br />
&nbsp;with CLAIRE-IZZY</em></td>
            <td class="auto-style62"><em><strong>POWER YOGA
                <br />
                </strong>with CHRISTINE-TARPIE</em></td>
            <td class="auto-style58"><em></em></td>
            <td class="auto-style58"><em></em></td>
            <td><em></em></td>
        </tr>
        <tr>
            <td class="auto-style1">7:30 
                - 8:20PM</td>
            <td class="auto-style58"><strong><em>POWER YOGA</em></strong><em>
                <br />
                with CHRISTINE-<br />
                TARPIE</em></td>
            <td class="auto-style58"><strong><em>CORE</em></strong> <em>
                <br />
                with SAIRA-TARPIE</em></td>
            <td class="auto-style58"><em><strong>POWER CIRCUIT</strong>
                <br />
                with SAM-TARPIE</em></td>
            <td class="auto-style62"><em><strong>PILATES EXPRESS<br />
                </strong>with CHRISTINE-<br />
                TARPIE</em></td>
            <td class="auto-style58"><em></em></td>
            <td class="auto-style58"><em></em></td>
            <td><em></em></td>
        </tr>
        </table>
        </div>
    <br />
<p style ="text-align:center">Effective November 11, 2015 – Schedule subject to change.</p>
    <br />
</asp:Content>
