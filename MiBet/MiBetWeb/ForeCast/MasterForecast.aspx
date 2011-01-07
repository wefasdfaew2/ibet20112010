﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="ForeCast_MasterForecast" Codebehind="MasterForecast.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091218' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091218' ></script>

<script type="text/javascript" src="../Js/opt/jx.js?v=20091218"></script>

<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091218"></script>
<script type="text/javascript">

function openForecast(matchid, bettype)
{
    ibcWnd.open('../ForeCast/FCAH.aspx?matchid=' + matchid + '&b=' + bettype, '', 70, 50, 550, 200, 'class1', 'class2');
}

function SelectedLeague()
{ 
    GetForecast();
}

function GetForecast()
{           
    var leagueid ="";
    var index=0;    
    if($('ddlLeague'))
    {
        leagueid =$('ddlLeague').value;
        index=$('ddlLeague').selectedIndex;
        $('leagueName').innerHTML=$('ddlLeague')[index].text;
    }
    if (leagueid)
    {
        Ajax.Request("../Handlers/Forecast.ashx",{
        asynchronous:true,
        method:'get',        
        parameters:'leagueid=' + leagueid,
        onComplete:function(rs)
        {
           $('divContent').innerHTML =rs.responseText; 
        }
    });
    }    
    clearTimeout(timer);
    timer = "";
    timer = setTimeout("GetForecast()",15000);       
}
var timer = setTimeout("GetForecast()",15000);

window.onload = function()
{
    if($('ddlLeague')) $('ddlLeague').selectedIndex=0;
} 
</script></head>
<body>
    <form id="form1" runat="server">
    <div id="page_main">
        <div id="header_main">
            <span id="leagueName">*ENGLISH PREMIER LEAGUE</span>&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <div id="box_header" style="width: 600px">
                        <table border="0" cellpadding="0" cellspacing="1">
                            <tr>
                                <td>
                                    <table align="left" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                &nbsp;League
                                            </td>
                                            <td id="selLeague" width="300">
                                                <asp:DropDownList ID="ddlLeague" runat="server">
                                                    <asp:ListItem>*ENGLISH PREMIER LEAGUE</asp:ListItem>
                                                    <asp:ListItem>*ITALY SERIE A</asp:ListItem>
                                                    <asp:ListItem>*GERMANY-BUNDESLIGA I</asp:ListItem>
                                                    <asp:ListItem>FRANCE-LIGUE 1</asp:ListItem>
                                                    <asp:ListItem>PORTUGAL SUPERLIGA</asp:ListItem>
                                                    <asp:ListItem>Spain Segunda Division</asp:ListItem>
                                                    <asp:ListItem>*SPAIN PRIMERA LALIGA</asp:ListItem>
                                                    <asp:ListItem>GREECE SUPER LEAGUE</asp:ListItem>
                                                    <asp:ListItem>Israel Premier League</asp:ListItem>
                                                    <asp:ListItem>Italy Lega Pro 1A</asp:ListItem>
                                                    <asp:ListItem>Portugal Liga Vitalis</asp:ListItem>
                                                    <asp:ListItem>CYPRUS 1ST DIVISION</asp:ListItem>
                                                    <asp:ListItem>Egypt League</asp:ListItem>
                                                    <asp:ListItem>Qatar League</asp:ListItem>
                                                    <asp:ListItem>Women Four Nations Tournament</asp:ListItem>
                                                    <asp:ListItem>Which Team To Kick-Off</asp:ListItem>
                                                    <asp:ListItem>Basketball - Turkey TBL</asp:ListItem>
                                                    <asp:ListItem>*ENGLISH PREMIER LEAGUE - SPECIALS</asp:ListItem>
                                                    <asp:ListItem>*GERMANY-BUNDESLIGA I - SPECIALS</asp:ListItem>
                                                    <asp:ListItem>*ITALY SERIE A - SPECIALS</asp:ListItem>
                                                    <asp:ListItem>*SPAIN PRIMERA LALIGA - SPECIALS</asp:ListItem>
                                                    <asp:ListItem>Turkey U18 League</asp:ListItem>
                                                    <asp:ListItem>*GERMANY-BUNDESLIGA I - SPECIFIC 15 MINS OVER/UNDER</asp:ListItem>
                                                    <asp:ListItem>GREECE SUPER LEAGUE - SPECIALS</asp:ListItem>
                                                    <asp:ListItem>Morocco GNEF 1</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <div id="loading" class="loading">
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="divContent">
                        <table class="tblRpt" cellpadding="0" cellspacing="1" border="0" style="width: 600px">
                            <tr class="RptHeader">
                                <td colspan="2" width="240">
                                    Team
                                </td>
                                <td colspan="3" width="180">
                                    Handicap
                                </td>
                                <td colspan="3" width="180">
                                    Over/Under
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="l pad73 league" colspan="8" style="padding-left: 20px;">
                                    <asp:Label ID="lblTeam" runat="server" Text="Morocco GNEF 1"></asp:Label>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td colspan="2" class="informal" style="height: 20px">
                                    <span id="showtime_637947">1 - 1&nbsp;&nbsp;&nbsp;&nbsp;<i><font style='color: red;'>Live!</font></i></span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_m1_637947">-1</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="hdpos_base_637947">0</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_p1_637947">1</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p2_637947">4</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p1_637947">3</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="ouos_base_637947">2</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Full Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','1')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="m1hdp_637947"><font style='color: red'>6</font></span>
                                </td>
                                <td class="bold">
                                    <span id="basehdp_637947"><font style='color: red'>6</font></span>
                                </td>
                                <td class="bold">
                                    <span id="p1hdp_637947"><font style='color: red'>269</font></span>
                                </td>
                                <td class="bold">
                                    <span id="p2ou_637947">-636</span>
                                </td>
                                <td class="bold">
                                    <span id="p1ou_637947"><font style='color: red'>719</font></span>
                                </td>
                                <td class="bold">
                                    <span id="baseou_637947"><font style='color: red'>1,214</font></span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Half Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','7')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="htm1hdp_637947">-665</span>
                                </td>
                                <td class="bold">
                                    <span id="htbasehdp_637947">-444</span>
                                </td>
                                <td class="bold">
                                    <span id="htp1hdp_637947"><font style='color: red'>1,061</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htp2ou_637947"><font style='color: red'>653</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htp1ou_637947"><font style='color: red'>641</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htbaseou_637947">-42</span>
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="l pad73 league" colspan="8" style="padding-left: 20px;">
                                    Everton-vs-Birmingham City
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td colspan="2" class="informal" style="height: 20px">
                                    <span id="showtime_637947"><font color="red">LIVE@U61</font> 11:00PM</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_m1_637947">-1</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="hdpos_base_637947">0</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_p1_637947">1</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p2_637947">4</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p1_637947">3</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="ouos_base_637947">2</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Full Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','1')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="m1hdp_637947">-590</span>
                                </td>
                                <td class="bold">
                                    <span id="basehdp_637947">-578</span>
                                </td>
                                <td class="bold">
                                    <span id="p1hdp_637947"><font style='color: red'>429</font></span>
                                </td>
                                <td class="bold">
                                    <span id="p2ou_637947">-95</span>
                                </td>
                                <td class="bold">
                                    <span id="p1ou_637947">-213</span>
                                </td>
                                <td class="bold">
                                    <span id="baseou_637947">-213</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Half Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637947','7')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="htm1hdp_637947"><font style='color: red'>3</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htbasehdp_637947">-2</span>
                                </td>
                                <td class="bold">
                                    <span id="htp1hdp_637947"><font style='color: red'>0</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htp2ou_637947">-35</span>
                                </td>
                                <td class="bold">
                                    <span id="htp1ou_637947">-3</span>
                                </td>
                                <td class="bold">
                                    <span id="htbaseou_637947"><font style='color: red'>30</font></span>
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="l pad73 league" colspan="8" style="padding-left: 20px;">
                                    West Ham United-vs-Chelsea
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td colspan="2" class="informal" style="height: 20px">
                                    <span id="showtime_637948"><font color="red">LIVE@U59</font> 12:00AM</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_m1_637948">-1</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="hdpos_base_637948">0</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="hdpos_p1_637948">1</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p2_637948">2</span>
                                </td>
                                <td width="60" class="bold">
                                    <span id="ouos_p1_637948">1</span>
                                </td>
                                <td width="60" class="bold" bgcolor="#FFEFDE">
                                    <span id="ouos_base_637948">0</span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Full Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637948','1')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="m1hdp_637948">-31</span>
                                </td>
                                <td class="bold">
                                    <span id="basehdp_637948">-76</span>
                                </td>
                                <td class="bold">
                                    <span id="p1hdp_637948">-76</span>
                                </td>
                                <td class="bold">
                                    <span id="p2ou_637948"><font style='color: red'>189</font></span>
                                </td>
                                <td class="bold">
                                    <span id="p1ou_637948"><font style='color: red'>189</font></span>
                                </td>
                                <td class="bold">
                                    <span id="baseou_637948"><font style='color: red'>189</font></span>
                                </td>
                            </tr>
                            <tr class="even_row" align="center">
                                <td style="height: 25px">
                                    <font color="#38536A">Half Time</font>
                                </td>
                                <td align="center" valign="middle" style="width: 17px">
                                    <a href="javascript:openForecast('637948','7')" class="btnInfo"></a>
                                </td>
                                <td class="bold">
                                    <span id="htm1hdp_637948"><font style='color: red'>2</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htbasehdp_637948">-3</span>
                                </td>
                                <td class="bold">
                                    <span id="htp1hdp_637948">-3</span>
                                </td>
                                <td class="bold">
                                    <span id="htp2ou_637948"><font style='color: red'>1</font></span>
                                </td>
                                <td class="bold">
                                    <span id="htp1ou_637948">-2</span>
                                </td>
                                <td class="bold">
                                    <span id="htbaseou_637948"><font style='color: red'>1</font></span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    </form>

</body>
</html>
