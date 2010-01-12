<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="MyBusiness.aspx.cs" Inherits="MyBusiness" Title="My Business" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <%--  <table width="98%" bgcolor="White" border="0" cellpadding="0" cellspacing="0" height="100%">
        
   --%>
    <table width="100%">
     
            <tr>
                <td>
                    <span class="innerHeading">My Business</span>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" align="center" class="text">
                        <tr>
                            <td colspan="6">
                               
                                        <strong><u>Business Summary</u></strong>
                                   
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
                                <%=LeftCount() %>
                            </td>
                            <td rowspan="4" style="width: 16px;" colspan="1">
                            </td>
                            <td style="width: 116px;">
                                Total Count</td>
                            <td>
                                <span style="font-weight: normal;" id="ctl00_ContentPlaceHolder1_ucmybuss_lblrtcnt">
                                    <%=RightCount() %>
                                </span>
                            </td>
                        </tr>
                        <%-- <tr>
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
                                                </tr>--%>
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
                               
                                        <b><u>Amount Summary</u></b>
                                   
                            </td>
                        </tr>
                        <%--<tr>
                                                    <td style="width: 14px;" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                        Directs :
                                                    </td>
                                                    <td style="width: 16px;" rowspan="1" colspan="1">
                                                    </td>
                                                    <td colspan="2">
                                                         <%=DirectCount() %>
                                                    </td>
                                                </tr>--%>
                        <tr>
                            <td style="width: 14px;" colspan="1">
                            </td>
                            <td colspan="2">
                                Total Levels :</td>
                            <td style="width: 16px;" rowspan="1" colspan="1">
                            </td>
                            <td colspan="2">
                                <%=LevelCount() %>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 14px; height: 19px;" colspan="1">
                            </td>
                            <td style="height: 19px;" colspan="2">
                                Binary Amount Earned :</td>
                                <td rowspan="1" style="width: 16px;" colspan="1">
                            </td>
                            <td style="height: 19px;" colspan="2">
                                Rs:<%=AmountEarned() %>/-
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 14px;" colspan="1">
                            </td>
                            <td colspan="2">
                                SMS Money Earned :
                            </td>
                            <td rowspan="2" style="width: 16px;" colspan="1">
                            </td>
                            <td colspan="2">
                                Rs:<%=SMSAmountEarned() %>/-</td>
                        </tr>
                        <%--<tr>
                                                    <td style="width: 14px; height: 19px;" colspan="1">
                                                    </td>
                                                    <td style="height: 19px ;" colspan="2">
                                                        Total Earned Amount :</td>
                                                    <td style="height: 19px;" colspan="2">
                                                        Rs:<%=TotalAmountEarned() %>/-
                                                    </td>
                                                </tr>--%>
                        <tr>
                            <td style="width: 14px; height: 19px;" colspan="1">
                            </td>
                            <td style="height: 19px;" colspan="2">
                                Amount Disbursed Details:</td>
                          
                            <td style="height: 19px;" colspan="3">
                                <asp:GridView ID="gvAmountDisbursedDetails" runat="server" EmptyDataText="No Records Present">
                                </asp:GridView>
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
                                Rs:<%=TotalAmountEarned() %>/-</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <hr style="color: rgb(84, 150, 24); height: 1px;" />
                            </td>
                        </tr>
                        <%--   <tr>
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
                                                </tr>--%>
                        <tr>
                            <td style="width: 14px; height: 16px;" colspan="1">
                            </td>
                            <td style="height: 16px;" colspan="2">
                                <strong>Pay Card No : </strong>
                            </td>
                            <td />
                            <td style="height: 16px;" colspan="2">
                                <asp:Label ID="lblPayCardNo" runat="server"></asp:Label></td>
                        </tr>
                        <%--      <tr>
                                                    <td style="width: 14px; height: 16px;" colspan="1">
                                                    </td>
                                                    <td style="height: 16px;" colspan="2">
                                                        <strong>Pay Card Transactions : </strong>
                                                    </td>
                                                    <td />
                                                    <td style="height: 16px;" colspan="2">
                                                        <a href="../MemberControlPanel/Ledger.aspx">Rs.<span style="color: Red; font-weight: bold;"
                                                            id="ctl00_ContentPlaceHolder1_ucmybuss_lblnetbalance">25907</span>/-</a></td>
                                                </tr>--%>
                        <tr>
                            <td style="height: 16px;" colspan="6">
                                <hr style="color: rgb(84, 150, 24); height: 1px;" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 14px; height: 16px;" colspan="1">
                            </td>
                            <td style="height: 16px;" colspan="5">
                                <strong><span style="color: rgb(255, 0, 0);">Note : - </span></strong>Amount Earned
                                is After TDS.
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
       
    </table>
</asp:Content>
