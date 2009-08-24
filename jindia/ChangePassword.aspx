<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" height="10">
                &nbsp;Change Password
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
                                    <td class="navigator" width="169" height="35">
                                        <b>Existing Password</b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal" width="347">
                                        <asp:TextBox ID="txtExistingPassword" runat="server"></asp:TextBox>
                                        <%-- <asp:Label ID="lblOccupation" runat="server"></asp:Label>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>New Password </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="150px" meta:resourcekey="txtPasswordResource1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword"
                                            Text="Enter Password"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>Confirm Password </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbReeneterPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvReEnterPassword" runat="server" ControlToValidate="tbReeneterPassword"
                                            Text="Enter Password"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="tbReeneterPassword"
                                            ControlToCompare="tbPassword" Text="Enter Same Password"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="15">
                                        &nbsp;
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
