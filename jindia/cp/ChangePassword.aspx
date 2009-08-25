<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="JayahoIndia.ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
                &nbsp;<b>Change Password</b>
            </td>
        </tr>
        <tr>
            <td width="1">
                &nbsp;
            </td>
            <td valign="top" width="98%">
                <table width="568" border="0" cellpadding="4" cellspacing="0">
                    <tr>
                        <td class="navigator">
                            <b>Existing Password</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal">
                            <asp:TextBox ID="txtExistingPassword" TextMode="Password" Width="150px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvExistingPassword" runat="server" ControlToValidate="txtExistingPassword"
                                Text="Enter Existing Password"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvExistingPassword" runat="server" ControlToValidate="txtExistingPassword"
                                OnServerValidate="validateExistingPassword" Display="dynamic" ErrorMessage="Invalid Password" SetFocusOnError="True" ForeColor="red"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator">
                            <b>New Password</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal">
                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="150px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword"
                                Text="Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator">
                            <b>Confirm Password</b>
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
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit" OnClick="lbSubmit_Click"></asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
