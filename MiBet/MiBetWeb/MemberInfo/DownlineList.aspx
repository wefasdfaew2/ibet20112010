﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="MemberInfo_DownlineList" Codebehind="DownlineList.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Home</title>
<meta name="keywords" content="sportsbook, agency, agent, betting" />
<meta name="description" content="online betting sportsbook agency system" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='../App_Themes/AgencyV2/common.css' type='text/css' rel='stylesheet' /><link href='../App_Themes/AgencyV2/main.css' type='text/css' rel='stylesheet' />
<script type='text/javascript' src='../Js/opt/Core.js?v=20091230' ></script>
<script type='text/javascript' src='../Js/Common.js?v=20091230' ></script>

<script type="text/javascript" src="../Js/IBCWnd/IBCWnd.js?v=20091230"></script>

<script type="text/javascript" src="../Js/MemberInfo/MasterAgentList.js?v=20091230"></script>
<script type="text/javascript" src="../Js/Paging.js?v=20091230"></script>
<script type="text/javascript">
    //paging
    function NavigatePage(page, url, site) {
        NavigatePage2(page, url, "act", site);
    }
    
    function GotoPageNext(strNavigatePage, site) {
        GotoPageNext2(strNavigatePage, "act", site);
    }
    
    function searchByUsername(strNavigatePage, site) {
        var ctrlCondition = $('txtUserName');
        var conditionValue = "";
        if (ctrlCondition != null) {
            $('hdtotalpages').value = 0;
            conditionValue = ctrlCondition.value;
            $('hdsearch').value = (conditionValue.length > 0 ? 'yes' : '');
            var url = strNavigatePage + '?' + 'custid=' + $('hdcus').value;
            url = url + '&search=' + $('hdsearch').value;
            url = url + '&username=' + ($('hdsearch').value == 'yes' ? conditionValue : '');
            url = url + '&status=' + $('statusFilter').value;
            url = url + '&total=' + $('hdtotalpages').value;
            NavigatePage(1, url, site);
        }
        $('dSubmit').disabled = true;
        $('dSubmit').className = 'btn2';
    }
</script></head>
<body>
    <div id="page_main">
        <div id="header_main">
            Agent List&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:getPrint('tbl-container');"><img
                border="0" src='../App_Themes/AgencyV2/Images/printer1.gif' alt='print' title='Print' /></a></div>
        <div style="display: none;">
            <span id="txtOpen">Open</span><span id="txtClosed">Closed</span><span id="txtSuspended">Suspended</span><span
                id="txtOutright">Allow Outright</span><span id="txtClose">Close</span><span id="txtSuspend">Suspend</span><span
                    id="txtAllowAutoPT">Allow Auto PT</span><span id="txtMinPT">SportBook's Min PT</span><span
                        id="txtTransfer">Transfer</span><span id="txtPassword">Password</span><span id="txtFIMinPT">Finance's
                            Min PT</span><span id="txtHRMinPT">Horse Racing Min PT</span><input type="hidden"
                                id="isTransfer" value="1" /><input type="hidden" id="isDisableCS" name="isDisableCS"
                                    value="1" /><input type="hidden" id="isDisableFI" name="isDisableFI" value="0" /><input
                                        type="hidden" id="isDisableHR" name="isDisableHR" value="0" /><span id="txtFIMult">Edit
                                            Multiple Finance's PT</span><span id="txtSpBookMult">Edit Multiple SportBook's PT</span><span
                                                id="txtHRMult">Edit Multiple Horse Racing PT</span><span id="txtCSMultEdit">Edit Multiple
                                                    Casino PT</span></div>
        <div id="mContent" style="padding-bottom: 15px;">
            <table id="mainTbl" align="left" border="0" cellpadding="0" cellspacing="0" width="99%">
                <tr>
                    <td>
                        <span id="diverr" style="display: none;">
                            <table border="0" cellpadding="0" cellspacing="0" width="500px">
                                <tr>
                                    <td class="emsg_1_1">
                                        &nbsp;
                                    </td>
                                    <td class="emsg_1_2">
                                        &nbsp;
                                    </td>
                                    <td class="emsg_1_3">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" class="emsg_2_1">
                                        &nbsp;
                                    </td>
                                    <td valign="top" id="err" class="msgerr" style="line-height: 20px">
                                        &nbsp;
                                    </td>
                                    <td class="emsg_2_2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="emsg_3_1">
                                        &nbsp;
                                    </td>
                                    <td class="emsg_3_2">
                                        &nbsp;
                                    </td>
                                    <td class="emsg_3_3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="tbl-container">
                            <div id="box_header" style="width: 100%">
                                <table class="l" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                            <span>&nbsp;User Name:</span>
                                        </td>
                                        <td id="tdfdatetext" style="padding-top: 6px" class="l">
                                            <input type="text" name="txtUserName" id="txtUserName" style="font-size: 8pt; font-weight: normal;"
                                                value="" onkeypress="return KeyPress2(event);" onfocus="ClearAll()" onclick="ClearAll()" />
                                        </td>
                                        <td style="padding-top: 6px">
                                        </td>
                                        <td style="padding-top: 6px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top: 6px; padding-bottom: 6px;">
                                            <span>&nbsp;Status:</span>
                                        </td>
                                        <td style="padding-top: 6px; padding-bottom: 6px;">
                                            <select style="width: 80px;" id="statusFilter" name="open" style="font-size: 8pt;
                                                font-weight: normal;">
                                                <option value="0" selected='selected'>All</option>
                                                <option value="1">Open</option>
                                                <option value="2">Suspended</option>
                                                <option value="3">Closed</option>
                                                <option value="4">Disabled</option>
                                            </select>
                                        </td>
                                        <td style="padding-top: 6px; padding-bottom: 6px;">
                                            <input id="dSubmit" type="button" value="Submit" class="btn" style="width: 55px;"
                                                style="width: 55px;" onclick="searchByUsername('DownlineList.aspx','AgencyV2')"
                                                onmouseout="this.className='btn';" onmouseover="this.className='btnhover';" />
                                        </td>
                                        <td>
                                            <div id="loading" style="float: right" class="fl">
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <style type="text/css" media="print">
                                div.tbl-container
                                {
                                    overflow: visible;
                                }
                                table > tbody
                                {
                                    overflow: visible;
                                }
                                td
                                {
                                    height: 14pt;
                                }
                                thead td
                                {
                                    font-size: 11pt;
                                }
                                thead
                                {
                                    display: table-header-group;
                                }
                                thead th, thead td
                                {
                                    position: static;
                                }
                                thead tr
                                {
                                    position: static;
                                }
                                table
                                {
                                    border-collapse: collapse;
                                    empty-cells: show;
                                }
                                table td
                                {
                                    font-size: 9pt;
                                    border-top: solid 1px slategray;
                                    border-left: solid 1px slategray;
                                }
                                .RptSubTitle
                                {
                                    background-color: #ffefde;
                                }
                                .c
                                {
                                    text-align: center;
                                }
                                .r
                                {
                                    text-align: right;
                                }
                                .l
                                {
                                    text-align: left;
                                }
                                .RptHeader
                                {
                                    color: #FFFFFF;
                                    font-size: 12px;
                                    text-align: center;
                                    height: 22px;
                                    font-weight: normal;
                                }
                                table#tbl-rpt
                                {
                                    border: solid 1px black;
                                }
                                .RptHeader01
                                {
                                    text-align: center;
                                }
                                a
                                {
                                    color: #1e1eeb;
                                    text-decoration: none;
                                }
                                .tr_paging
                                {
                                    display: none;
                                }
                            </style>
                            <div id="boderRight">
                                <table class="tblRpt r nowrap" cellpadding="0" cellspacing="1" style="width: 100%;"
                                    id="tbl-rpt">
                                    <thead>
                                        <tr class="RptSubTitle" id="rowTitle">
                                            <td colspan="3">
                                                &nbsp;
                                            </td>
                                            <td class="bgNormal" style="width: 20px;">
                                                <div onclick="ShowFrmUpdMult(this,'','2012567');" class="btnEdit" onmouseover="HoverPen(this,1);"
                                                    onmouseout="HoverPen(this,0);" />
                                            </td>
                                            <td colspan="6">
                                                &nbsp;
                                            </td>
                                            <td colspan="6" class="RptHeader01">
                                                Commission
                                            </td>
                                            <td colspan="3">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr class="RptHeader">
                                            <td>
                                                #
                                            </td>
                                            <td>
                                                User Name
                                            </td>
                                            <td>
                                                Status
                                            </td>
                                            <td>
                                                <input type="checkbox" id="chkall" onclick="CheckAll();" />
                                            </td>
                                            <td style="width: 60px;">
                                                Horse Racing
                                            </td>
                                            <td>
                                                Finance
                                            </td>
                                            <td>
                                                Other
                                            </td>
                                            <td>
                                                Member
                                            </td>
                                            <td>
                                                First Name
                                            </td>
                                            <td>
                                                Last Name
                                            </td>
                                            <td style="white-space: nowrap;">
                                                Group A
                                            </td>
                                            <td style="white-space: nowrap;">
                                                Group B
                                            </td>
                                            <td style="white-space: nowrap;">
                                                Group C
                                            </td>
                                            <td style="white-space: nowrap;">
                                                Group D
                                            </td>
                                            <td style="white-space: nowrap;">
                                                1 X 2
                                            </td>
                                            <td>
                                                Other
                                            </td>
                                            <td align="center" style="width: 110px;">
                                                <div style="display: block; width: 110px;">
                                                    Created Date</div>
                                            </td>
                                            <td style="width: 70px;">
                                                Login IP
                                            </td>
                                            <td>
                                                User Name
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr align="center" bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                            <td class="w-order">
                                                1
                                            </td>
                                            <td class="l">
                                                <a href="javascript:viewStatement(2012586, 'Agent');">SMQQ01</a>
                                            </td>
                                            <td style="white-space: nowrap;">
                                                <a href="javascript:EditAgent_Single('2012586', 'SMQQ01','2012567')" title="Open">Open</a>&nbsp;<span
                                                    style="cursor: pointer" onclick="ShowFrmUpdStatus(this, 2012586, false, false,false, true)"
                                                    class="arrow1" title="Status">&nbsp;&nbsp;&nbsp;</span>
                                            </td>
                                            <td>
                                                <input name="chkid" value="2012586;SMQQ01" onclick="chkChecked(this);" type="checkbox"
                                                    statuscs="0" />
                                            </td>
                                            <td style="width: 60px;">
                                                <div id="divHR_2012586" class="divEdit" style="cursor: pointer;" title="Edit" onclick="EditHR('2012586');" />
                                            </td>
                                            <td>
                                                <div id="divFI_2012586" onclick="OpenEditFinance('2012586')" class="divEdit" title="Edit">
                                                </div>
                                            </td>
                                            <td>
                                                <div onclick="ShowFrmUpdOthers(this,'2012586', 'SMQQ01');" class="divViewMenu" title="Edit">
                                                </div>
                                            </td>
                                            <td>
                                                <a href="javascript:viewDownlineList('MemberList',2012586,0)" target="main" class="aView">
                                                    View</a>
                                            </td>
                                            <td class="l">
                                            </td>
                                            <td class="l">
                                            </td>
                                            <td>
                                                0.0025
                                            </td>
                                            <td>
                                                0.005
                                            </td>
                                            <td>
                                                0.0075
                                            </td>
                                            <td>
                                                0.01
                                            </td>
                                            <td>
                                                0.0025
                                            </td>
                                            <td>
                                                0.01
                                            </td>
                                            <td class="bl_time">
                                                12/18/2009 10:53:00 AM
                                            </td>
                                            <td class="bl_time">
                                            </td>
                                            <td class="l">
                                                <a href="javascript:viewStatement(2012586, 'Agent');">SMQQ01</a>
                                            </td>
                                        </tr>
                                        <tr align="center" bgcolor="#F6F8F9" onmouseover="bgColor='#f8ff8d'" onmouseout="bgColor='#F6F8F9'">
                                            <td class="w-order">
                                                2
                                            </td>
                                            <td class="l">
                                                <a href="javascript:viewStatement(2050492, 'Agent');">SMQQ02</a>
                                            </td>
                                            <td style="white-space: nowrap;">
                                                <a href="javascript:EditAgent_Single('2050492', 'SMQQ02','2012567')" title="Open">Open</a>&nbsp;<span
                                                    style="cursor: pointer" onclick="ShowFrmUpdStatus(this, 2050492, false, false,false, true)"
                                                    class="arrow1" title="Status">&nbsp;&nbsp;&nbsp;</span>
                                            </td>
                                            <td>
                                                <input name="chkid" value="2050492;SMQQ02" onclick="chkChecked(this);" type="checkbox"
                                                    statuscs="0" />
                                            </td>
                                            <td style="width: 60px;">
                                                <div id="divHR_2050492" class="divEdit" style="cursor: pointer;" title="Edit" onclick="EditHR('2050492');" />
                                            </td>
                                            <td>
                                                <div id="divFI_2050492" onclick="OpenEditFinance('2050492')" class="divEdit" title="Edit">
                                                </div>
                                            </td>
                                            <td>
                                                <div onclick="ShowFrmUpdOthers(this,'2050492', 'SMQQ02');" class="divViewMenu" title="Edit">
                                                </div>
                                            </td>
                                            <td>
                                                <a href="javascript:viewDownlineList('MemberList',2050492,0)" target="main" class="aView">
                                                    View</a>
                                            </td>
                                            <td class="l">
                                            </td>
                                            <td class="l">
                                            </td>
                                            <td>
                                                0.0025
                                            </td>
                                            <td>
                                                0.005
                                            </td>
                                            <td>
                                                0.0075
                                            </td>
                                            <td>
                                                0.01
                                            </td>
                                            <td>
                                                0.0025
                                            </td>
                                            <td>
                                                0.01
                                            </td>
                                            <td class="bl_time">
                                                1/2/2010 5:48:00 AM
                                            </td>
                                            <td class="bl_time">
                                                117.4.208.24
                                            </td>
                                            <td class="l">
                                                <a href="javascript:viewStatement(2050492, 'Agent');">SMQQ02</a>
                                            </td>
                                        </tr>
                                        <tr class="tr_paging">
                                            <td colspan="20" class="c" style="padding: 2px">
                                                <div class="pagination">
                                                    <a onclick="jumpto('DownlineList.aspx?custid=2012567&search=&username=&status=0&total=1'); return false;"
                                                        href="#" style="color: #2673CE;">Page</a><span style="color: #2673CE;" id="currentpage">&nbsp;1:&nbsp;<strong>1</strong></span></div>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" id="arrayCustID" name="arrayCustID" /><input type="hidden" id="arrayUserName"
                            name="arrayUserName" /><input type="hidden" id="arrayStatus" name="arrayStatus" /><input
                                type="hidden" id="roleid" name="roleid" value="3" /><input type="hidden" id="hdlevel"
                                    name="hdlevel" value="level" /><input type="hidden" value="1" name="hdtotalpages"
                                        id="hdtotalpages" /><input type="hidden"
                                                                value="2012567" name="hdcus" id="hdcus" /><input type="hidden" value="" name="hdsearch"
                                                                    id="hdsearch" />
                                                        </td>
                                                    </tr>
            </table>
        </div>
    </div>
    <div id="FrmUpd">
    </div>
    <script type="text/javascript">        var callerIsSuspended = false; var callerIsAllowOutright = false; IBC.addEvent(window, 'load', function () { InitFrmUpdStatus(); InitFrmUpdOthersFunction(); InitFrmUpdMult(); });</script>
    <div id="page_menu" class="vbmenu_popup" style="width: 190px; display: none; border: solid 1px black;">
        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; height: 30px;">
            <tr style="vertical-align: middle;">
                <td style="white-space: nowrap;">
                    Go to Page:
                </td>
                <td>
                    <input type="text" size="4" maxlength="6" onkeypress="return KeyPress(event);" style="font-size: 11px;"
                        id="txtpage" name="txtpage" class="bginput" />
                </td>
                <td style="padding-bottom: 2px;">
                    <input type="button" onclick="return GotoPageNext('DownlineList.aspx?custid=2012567&search=&username=&status=0&total=1','AgencyV2');"
                        value="Go" id="pagenav_ibtn" class="btn" />
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
