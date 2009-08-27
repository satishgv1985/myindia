<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="JayahoIndia.ChangePassword" Title="Change Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:Label ID="lblMessage" runat="server" CssClass="topMessage" Visible="false" Text="! Updated Successfully"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span class="innerHeading">Change Password</span>
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
                        <td class="navigator_normal" nowrap="nowrap" style="text-align: left;">
                            <asp:TextBox ID="tbExistingPassword" TextMode="Password" Width="150px" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvExistingPassword" runat="server" ControlToValidate="tbExistingPassword"
                                Text="Enter Existing Password"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="cvExistingPassword" runat="server" ControlToValidate="tbExistingPassword"
                                OnServerValidate="validateExistingPassword" Display="dynamic" ErrorMessage="Invalid Password"
                                ForeColor="red"></asp:CustomValidator>
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
                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
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
                    <tr>
            <td colspan="3" class="tdSubmitButton">
                <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit" 
                    OnClick="lbSubmit_Click"></asp:LinkButton>
            </td>
        </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>
