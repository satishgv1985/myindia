<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="PaymentReport.aspx.cs" Inherits="PaymentReport" Title="Payment Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" class="text">
        <tr>
            <td colspan="2">
                <strong><b><span class="textblack">Payment Report</span></b></strong></td>
        </tr>
        <%--<tr>
                <td>
                    <strong>Select Type : </strong>
                    <select id="ctl00_ContentPlaceHolder1_Paymentsearch1_ddtype" name="ctl00$ContentPlaceHolder1$Paymentsearch1$ddtype">
                        <option value="Summary" selected="selected">Date Wise</option>
                        <option value="1">Level Wise</option>
                    </select>
                    <input type="submit" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                        background-color: rgb(248, 247, 244); font-weight: bold;" class="button" id="ctl00_ContentPlaceHolder1_Paymentsearch1_btnsearch"
                        value="Search" name="ctl00$ContentPlaceHolder1$Paymentsearch1$btnsearch" /><br />
                </td>
                <td>
                </td>
            </tr>--%>
        <tr>
            <td colspan="2">
                <strong><b></b></strong>
                <hr />
                <strong><b><span style="color: Red; font-weight: bold; position: relative;" id="ctl00_ContentPlaceHolder1_Paymentsearch1_lblmsg" />
                </b></strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Total No Of pairs : <span id="ctl00_ContentPlaceHolder1_Paymentsearch1_lbltotpair">
                    32</span></strong>
            </td>
            <td>
                <strong>Total Amount : <span>32000</span></strong>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%-- <table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana;
                            font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_Paymentsearch1_gridmember">
                            <tbody>
                                <tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold;
                                    height: 30px;">
                                    <th align="center" scope="col">
                                        SNo</th>
                                    <th scope="col">
                                        Member_ID</th>
                                    <th scope="col">
                                        Pair_Date</th>
                                    <th scope="col">
                                        Pairs</th>
                                    <th scope="col">
                                        Amount</th>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        1
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        07/29/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        2
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/28/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        3
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/26/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        4
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/15/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        5
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/11/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        6
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/03/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        7
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        03/01/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        8
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/24/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        9
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/22/2009</td>
                                    <td>
                                        2</td>
                                    <td>
                                        2000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        10
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/11/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        11
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/09/2009</td>
                                    <td>
                                        2</td>
                                    <td>
                                        2000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        12
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/06/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        13
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/05/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        14
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        02/04/2009</td>
                                    <td>
                                        3</td>
                                    <td>
                                        3000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        15
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/31/2009</td>
                                    <td>
                                        2</td>
                                    <td>
                                        2000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        16
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/29/2009</td>
                                    <td>
                                        2</td>
                                    <td>
                                        2000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        17
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/24/2009</td>
                                    <td>
                                        2</td>
                                    <td>
                                        2000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        18
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/23/2009</td>
                                    <td>
                                        3</td>
                                    <td>
                                        3000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        19
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/18/2009</td>
                                    <td>
                                        4</td>
                                    <td>
                                        4000</td>
                                </tr>
                                <tr align="center" style="color: Black;">
                                    <td align="center">
                                        20
                                    </td>
                                    <td>
                                        ZATOICHI</td>
                                    <td>
                                        01/16/2009</td>
                                    <td>
                                        1</td>
                                    <td>
                                        1000</td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </tbody>
                        </table>--%>
                <asp:DataGrid ID="dgPaymentReport" runat="server" AutoGenerateColumns="true" AllowPaging="false"
                    AllowSorting="false" Width="100%" CellPadding="8" CellSpacing="0">
                    <Columns>
                    </Columns>
                </asp:DataGrid>
            </td>
        </tr>
    </table>
</asp:Content>
