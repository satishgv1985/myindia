<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="MyBusiness.aspx.cs" Inherits="MyBusiness" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <%--  <table width="98%" bgcolor="White" border="0" cellpadding="0" cellspacing="0" height="100%">
        
   --%>
    <table width="100%">
        <tbody>
            <tr>
                <td style="font-size: 13px;">
                    <b><u>My Business</u></b></td>
            </tr>
            <tr>
                <td>
                    <table align="center">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="hgbg">
                                        <div class="style10">
                                            <u>Personal Infromation</u>
                                        </div>
                                    </div>
                                    <div class="regborder">
                                        <table width="100%" align="center" class="text">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 14px;" colspan="1" class="h2">
                                                    </td>
                                                    <td class="h2" colspan="2">
                                                    </td>
                                                    <td rowspan="9" style="width: 16px;" colspan="1">
                                                    </td>
                                                    <td class="addr" colspan="2">
                                                        Address Details</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                        Member Id :
                                                    </td>
                                                    <td style="width: 187px;">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbl_mem">zatoichi</span></td>
                                                    <td style="width: 116px;">
                                                        Address :
                                                    </td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbladdress">
                                                            18-3-53 a/16<br />
                                                            -</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                        Name :
                                                    </td>
                                                    <td style="width: 187px;">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblname">k.sravan
                                                            kumar reddy</span></td>
                                                    <td style="width: 116px;">
                                                        City :
                                                    </td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblcity">tirupathi</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                        Sponser Id :
                                                    </td>
                                                    <td style="width: 187px;">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lbl_sponser">
                                                            boycompaq123</span></td>
                                                    <td style="width: 116px;">
                                                        State :
                                                    </td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblstate">
                                                            Andhra Pradesh</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                    </td>
                                                    <td style="width: 187px;">
                                                    </td>
                                                    <td style="width: 116px;">
                                                        Pin Code :
                                                    </td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblpincode">
                                                            -</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px;">
                                                    </td>
                                                    <td style="width: 119px;">
                                                    </td>
                                                    <td style="width: 187px;">
                                                    </td>
                                                    <td style="width: 116px;">
                                                        Mobile :
                                                    </td>
                                                    <td>
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblphone">
                                                            9985886992</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 14px; height: 21px;">
                                                    </td>
                                                    <td style="height: 21px; width: 119px;">
                                                    </td>
                                                    <td style="width: 187px; height: 21px;">
                                                    </td>
                                                    <td style="width: 116px; height: 21px;">
                                                        Join Date :
                                                    </td>
                                                    <td style="height: 21px;">
                                                        <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblreceiptdate">
                                                            1/16/2009</span></td>
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
                                                                <u>Amount Summary</u>
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
