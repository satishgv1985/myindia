<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="SendSMS.aspx.cs" Inherits="SendSMS" Title="Send SMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table cellpadding="4" cellspacing="0">
        <tr>
            <td style="text-align: center;">
                <asp:Label ID="lblMessage" runat="server" CssClass="topMessage" Visible="false" Text="! SMS Sent Successfully"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <span class="innerHeading">Send SMS</span>
            </td>
        </tr>
        <tr>
            <td>
                <div class="borderchange" style="background-image: url('original\changeprofile.png');
                    background-repeat: no-repeat;">
                    <table width="100%" cellspacing="0" cellpadding="4" border="0">
                        <tr>
                            <td>
                                Mobile Number
                            </td>
                            <td style="vertical-align: text-top; text-align: left;">
                                <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
                                <td>
                                    <asp:RegularExpressionValidator ID="revNumberValidator" runat="server" SetFocusOnError="true"
                                        ControlToValidate="tbMobileNumber" ErrorMessage="Enter only 10 digit Mobile Number without 0 or 91"
                                        ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$" Display="dynamic"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" ControlToValidate="tbMobileNumber"
                                        SetFocusOnError="true" ErrorMessage="Enter Mobile Number" Display="dynamic"></asp:RequiredFieldValidator>
                                </td>
                                <%--<br />
                                <asp:Label ID="dd" Text="(Dont Enter 0 or 91.)" runat="server"></asp:Label>--%>
                                <%--<input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                                    background-color: White; font-family: Verdana; font-size: 0.9em;" maxlength="10" />
                                    <table width="200" cellspacing="0" cellpadding="0" border="0" style="display: none;
                                    position: absolute;">
                                    <tr valign="top" style="height: 100%;">
                                        <td width="20" align="right" style="height: 100%; vertical-align: top;">
                                            <table cellspacing="0" cellpadding="0" border="0" style="height: 100%;">
                                                <tr>
                                                    <td valign="top" align="right" style="font-size: 1px; padding-top: 8px;">
                                                        <div style="border-top: 1px solid black; font-size: 1px; position: relative; left: 1px;
                                                            width: 15px;">
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 14px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 13px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 12px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 11px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 10px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 9px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 8px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 7px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 6px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 5px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 4px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 3px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 2px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 1px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="20" style="border-top: 1px solid black; border-left: 1px solid black;
                                            border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon;">
                                            <img border="0" src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWjXx-AGqlKHeUohV85A9x5bJZDPTFtdLGVvJEC3DrWXM1&amp;t=633284344760000000" /></td>
                                        <td width="100%" style="border-top: 1px solid black; border-bottom: 1px solid black;
                                            padding: 5px; background-color: LemonChiffon; font-family: verdana; font-size: 10px;">
                                            Please Enter Mobile No</td>
                                        <td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black;
                                            padding: 2px; background-color: lemonchiffon; vertical-align: top; text-align: right;">
                                            <img src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWPbDqjsu24UcTun2ik-ejdn21eTMG-ARXZ-KJVhh_ybk1&amp;t=633284344760000000"
                                                style="cursor: pointer;" /></td>
                                    </tr>
                                </table>--%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 90px; vertical-align: middle;">
                                Message</td>
                            <td>
                                <asp:TextBox ID="tbTextMessage" runat="server" MaxLength="80" Height="60" TextMode="MultiLine"></asp:TextBox>
                                <%--<textarea style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128); background-color: White;
                                    font-family: Verdana; font-size: 0.9em;" onkeypress="if(this.value.length>=80) return false;"
                                    id="ctl00_ContentPlaceHolder1_txtmessage" cols="40" rows="5" name="ctl00$ContentPlaceHolder1$txtmessage" />
                                <span style="color: Red; display: none;"  />--%>
                                <br />
                            </td>
                            (Max 80 Characters Allowed)
                            <td>
                                <asp:RequiredFieldValidator ID="rfvTextMessage" runat="server" ControlToValidate="tbTextMessage"
                                    SetFocusOnError="true" ErrorMessage="Enter The Message to Send" Display="Static"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" />
                            <td class="tdSubmitButton" style="text-align: left">
                                <asp:LinkButton ID="lbSubmit" runat="server" Text="Send" OnClick="lbSubmit_Click"></asp:LinkButton>
                                <br />
                            </td>
                            <td align="right" />
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
