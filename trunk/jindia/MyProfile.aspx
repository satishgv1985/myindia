<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="98%" bgcolor="White" border="0" cellpadding="0" cellspacing="0" height="100%">
        <tr>
            <td style="font-size: 13px;">
                <b><u>My Profile</u></b></td>
        </tr>
        <%--<tr>
            <td style="padding-bottom: 6px;">
                <img src="files/eprofile_banner.jpg" width="772" height="120">
            </td>
        </tr>
         <tr>
            <td>
                <table width="100%" bgcolor="White" border="0" cellpadding="4" cellspacing="0" height="16">
                    <tr>
                        <td style="text-align:left;">
                            <a href="default.aspx" class="navigator">Home</a> &nbsp;&nbsp;<span style="color: Black;">&#8250;</span>&nbsp;&nbsp;
                            <a class="navigator" href="myprofile.aspx">My Profile</a> <b><span class="navigator_exist">
                                &nbsp;&nbsp;<span style="color: Black;">&#8250;</span>&nbsp;&nbsp;&nbsp;Account
                                Details</span></b>
                        </td>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align:left;">
                <h2>
                    My Profile</h2>
            </td>
        </tr>--%>
        <tr>
            <td class="navigator" align="left" bgcolor="#ebebeb" style="margin-top: 5px;">
                <table width="100%" border="0" cellpadding="4" cellspacing="0">
                    <tr>
                        <td width="10%" style="border-right: 1px solid black;">
                            <a class="yuimenubaritemlabel hassubmenu" href="editprofile.aspx">Edit Profile</a>
                        </td>
                        <td style="padding-left: 10px;">
                            <a class="yuimenubaritekmlabel hassubmenu" href="changepassword.aspx">Change Password</a>
                            <%--<li index="2" groupindex="0" id="yui-gen2" class="navigator yuimenubaritem"><a class="yuimenubaritemlabel hassubmenu"
                                            href="#">Club Account(s)</a></li>--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="White">
                <table width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="2" height="10">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td width="1">
                            &nbsp;
                        </td>
                        <td valign="top" width="98%" align="left" height="370">
                            <table class="navigator_normal" width="98%" border="0" cellpadding="1" cellspacing="1">
                                <tr>
                                    <td>
                                        <table width="568" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="navigator" width="200" height="35">
                                                    <b>Name</b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal" width="347">
                                                    Mahendranath Reddy . D
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" width="169" height="35">
                                                    <b>A/C No.</b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal" width="347">
                                                    903197525
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>No. </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    9243026126
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" valign="top">
                                                    <b>Address </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    No-161/4, 4th Main,
                                                    <br>
                                                    Chowdeswari Layout, Marathahalli,<br>
                                                    Near Sony World,<br>
                                                    Bangalore<br>
                                                    Karnataka-560037<br>
                                                    India
                                                    <br>
                                                    <a href="/ChangeBillingAddressAction.do">Click here</a> to change the Address.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>E-mail Address </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    <br>
                                                    <br>
                                                    dmnreddy@gmail.com<br>
                                                    <a href="/MyProfileAction.do">Click here</a> to change your E-mail Address.
                                                </td>
                                            </tr>
                                            <%--<tr>
                                                <td class="navigator" height="35">
                                                    <b>Current Talk Plan </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    Cmo Honest 275 Plan
                                                    <!-- <td> <font size="2" face="Verdana, Arial, Helvetica, sans-serif"> -->
                                                    <!-- UNCOMMENT TO ROLLOUT LATER END-->
                                                </td>
                                                <!-- </font> -->
                                            </tr>--%>
                                            <tr>
                                                <td class="navigator">
                                                    <b>Activation Date </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    27-FEB-2009
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>Date </b>
                                                </td>
                                                <!--Label modified by Yamini with pf4200 changes-->
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    22-MAY-2009
                                                </td>
                                            </tr>
                                            <tr>
                                                <!--start by hari for CR COCC4764-->
                                                <!-- <td height="35" class="navigator"><b>Payment due </b></font></td>-->
                                                <td class="navigator" height="35">
                                                    <b>Bill amount </b>
                                                </td>
                                                <!--end by hari for CR COCC4764-->
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    1556
                                                </td>
                                            </tr>
                                            <%--           <tr>
                                                <td class="navigator" height="35">
                                                    <b> Due Date</b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    08-JUN-2009
                                                </td>
                                            </tr>--%>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>Outstanding Amount Due (Rs)</b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    0
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>Credit Limit (Rs) </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    7500
                                                </td>
                                            </tr>
                                            <%--      <tr>
                                                <!--Modified by hari for CR COCC4764-->
                                                <td class="navigator_normal" height="35">
                                                    <p>
                                                        <b>&nbsp;&nbsp;Unbilled Amount (Rs)</b>
                                                        <!--<div>&nbsp;&nbsp;(Excluding monthly rentals)</div> Commented by Yamini for pf4200-->
                                                    </p>
                                                    <!--end by hari for CR COCC4764-->
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    <a href="#" onclick="unBilledPopUpFun()"><b><u>Click here </u></b></a>to view approximate
                                                    Unbilled Amount.<!--COFI9223 changes on May'04-->
                                                </td>
                                            </tr>--%>
                                            <tr>
                                                <td class="navigator" height="35">
                                                    <b>Deposit Amount (Rs) </b>
                                                </td>
                                                <td class="navigator" width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td class="navigator_normal">
                                                    500
                                                </td>
                                            </tr>
                                            <!-- COCC3286 start -->
                                            <%-- <tr class="navigator_normal">
                                                <td height="35">
                                                    <b>&nbsp;&nbsp;Internet Usage Meter</b>
                                                </td>
                                                <td width="21" background="files/line.gif">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;<a href="http://www.tatatele.in/myaccount/BilledUsageAction.do?methodToCall=getBilledCummReport"><u><b>Click
                                                        here</b></u></a> to view internet usage details
                                                </td>
                                            </tr>--%>
                                            <!-- COCC3286 end -->
                                            <tr>
                                                <td height="15">
                                                    &nbsp;
                                                </td>
                                                <!-- <td >&nbsp;</td>
                                  <td>&nbsp;</td> -->
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator_normal">
                                        <br>
                                        Please <a href="#"><u><b>Click here</b></u></a> to view your last login details.
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
