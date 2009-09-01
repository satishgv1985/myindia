<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="MyBusiness.aspx.cs" Inherits="MyBusiness" Title="My Business" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <%--  <table width="98%" bgcolor="White" border="0" cellpadding="0" cellspacing="0" height="100%">
        
   --%>
    <table width="100%">
        <tbody>
            <tr>
                <td>
                    <span class="innerHeading">My Business</span>
                    </td>
            </tr>
            <tr>
                <td>
                    <table align="center">
                        <tbody>
                            <tr>
                                <td>
                                   
                                    <div class="regborder">
                                        <table width="100%" align="center" class="text">
                                            <tbody>
                                           
                                                <tr>
                                                    <td colspan="6">
                                                        <div class="hgbg">
                                                            <div class="style10">
                                                                <strong><u>Business Summary</u></strong>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td colspan="2">
                                                        <strong>Left Team Details</strong></td>
                                                    <td style="width: 16px;" rowspan="1" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        <strong>Right Team Details</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                        Total Count</td>
                                                    <td style="width: 187px;">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_ltcnt">833</span></td>
                                                    <td rowspan="4" style="width: 16px;" colspan="1">
                                                    </td>
                                                    <td style="width: 116px;">
                                                        Total Count</td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblrtcnt">
                                                            622</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                        Balance</td>
                                                    <td style="width: 187px;">
                                                        <span id="ctl00_ContentPlaceHolder1_ucmybuss_lbleftbalcnt">211</span>
                                                    </td>
                                                    <td style="width: 116px;">
                                                        Balance</td>
                                                    <td>
                                                        <span id="ctl00_ContentPlaceHolder1_ucmybuss_lblrightbalcnt">0</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 21px;">
                                                    </td>
                                                    <td style="height: 21px; width: 119px;">
                                                    </td>
                                                    <td style="width: 187px; height: 21px;">
                                                    </td>
                                                    <td style="width: 116px; height: 21px;">
                                                    </td>
                                                    <td style="height: 21px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                    </td>
                                                    <td style="width: 187px;">
                                                    </td>
                                                    <td style="width: 116px;">
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 21px;" colspan="6">
                                                        <div class="hgbg">
                                                            <div class="style10">
                                                                <b><u>Amount Summary</u></b>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        Directs :
                                                    </td>
                                                    <td style="width: 16px;" rowspan="1" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        <span id="ctl00_ContentPlaceHolder1_ucmybuss_lbldirects">2</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        Total Pairs :</td>
                                                    <td style="width: 16px;" rowspan="1" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbltotpairs">
                                                            32</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        Total Points :
                                                    </td>
                                                    <td rowspan="2" style="width: 16px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbltotpoints">
                                                            32</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 19px;" colspan="1">
                                                    </td>
                                                    <td style="height: 19px;" colspan="2">
                                                        Binary Amount :</td>
                                                    <td style="height: 19px;" colspan="2">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbltotpoints1">
                                                            32</span> pairs * 1000 = Rs.<span id="ctl00_ContentPlaceHolder1_ucmybuss_lblbinaryamt">32000</span>
                                                        /-
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 19px;" colspan="1">
                                                    </td>
                                                    <td style="height: 19px;" colspan="2">
                                                        ICICI PayCard Charges:</td>
                                                    <td style="width: 16px;" rowspan="1" colspan="1">
                                                    </td>
                                                    <td style="height: 19px;" colspan="2">
                                                        <span id="ctl00_ContentPlaceHolder1_ucmybuss_lblreferamt">350</span>/-
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <hr style="color: rgb(84, 150, 24); height: 1px;" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        <strong>Total Amont : </strong>
                                                    </td>
                                                    <td />
                                                    <td colspan="2">
                                                        Rs. <span style="color: Red; font-weight: bold;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbltotamt">
                                                            32000</span>/-</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <hr style="color: rgb(84, 150, 24); height: 1px;" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 21px;" colspan="1">
                                                    </td>
                                                    <td style="height: 21px;" colspan="2">
                                                        TDS & Handling charges (15.3%) :
                                                    </td>
                                                    <td />
                                                    <td style="height: 21px;" colspan="2">
                                                        Rs.<span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbltottds">4896</span>/-</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 21px;" colspan="1">
                                                    </td>
                                                    <td style="height: 21px;" colspan="2">
                                                        Amount After TDS Deduction :
                                                    </td>
                                                    <td />
                                                    <td style="height: 21px;" colspan="2">
                                                        Rs.<span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblafterTds">26754</span>/-</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6">
                                                        <hr style="color: rgb(84, 150, 24); height: 1px;" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 16px;" colspan="1">
                                                    </td>
                                                    <td style="height: 16px;" colspan="2">
                                                        <strong>Pay Card No : </strong>
                                                    </td>
                                                    <td />
                                                    <td style="height: 16px;" colspan="2">
                                                        <span id="ctl00_ContentPlaceHolder1_ucmybuss_lblcardno">4629520316555580</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 16px;" colspan="1">
                                                    </td>
                                                    <td style="height: 16px;" colspan="2">
                                                        <strong>Pay Card Transactions : </strong>
                                                    </td>
                                                    <td />
                                                    <td style="height: 16px;" colspan="2">
                                                        <a href="../MemberControlPanel/Ledger.aspx">Rs.<span style="color: Red; font-weight: bold;"
                                                            id="ctl00_ContentPlaceHolder1_ucmybuss_lblnetbalance">25907</span>/-</a></td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 16px;" colspan="6">
                                                        <hr style="color: rgb(84, 150, 24); height: 1px;" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 16px;" colspan="1">
                                                    </td>
                                                    <td style="height: 16px;" colspan="5">
                                                        <strong><span style="color: rgb(255, 0, 0);">Note : - </span></strong>In Order To
                                                        receive Binary Amount You Have To Make Atleast Two Directs.One Is From Left Side
                                                        And One is From Right Side
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="regbgdown">
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
