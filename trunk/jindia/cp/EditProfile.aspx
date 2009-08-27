<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" Title="Edit Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" style="text-align:center;">
                <asp:Label ID="lblMessage" runat="server" CssClass="topMessage" Visible="false" Text="! Updated Successfully"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span class="innerHeading">Edit Profile</span>
            </td>
        </tr>
        <tr>
            <td width="1">
                &nbsp;
            </td>
            <td valign="top">
                <table class="navigator_normal" width="98%" border="0" cellpadding="4" cellspacing="1">
                    <tr>
                        <td class="innerheading2">
                            Personal Information</td>
                    </tr>
                    <tr>
                        <td>
                            <table width="568" border="0" cellpadding="4" cellspacing="0">
                                <tr>
                                    <td class="navigator" width="200">
                                        <b>Name</b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal" width="347">
                                        <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" width="169">
                                        <b>Occupation</b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal" width="347">
                                        <asp:TextBox ID="tbOccupation" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>Address</b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbAddress" SetFocusOnError="true"
                                            ID="rfvAddress" Text="Please provide Your Address" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>City </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbCity" SetFocusOnError="true" ID="rfvCity"
                                            Text="Please provide City" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>State </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:DropDownList ID="ddlState" runat="server">
                                            <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                            <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                            <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                            <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator InitialValue="0" ControlToValidate="ddlState" SetFocusOnError="true"
                                            ID="rfvState" Text="Please Select a State" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>District</b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbDistrict" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>Pin Code </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbPincode" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbPincode" SetFocusOnError="true"
                                            ID="rfvPincode" Text="Please provide ZipCode" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator">
                                        <b>E-mail Address </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbEmailId" SetFocusOnError="true"
                                            ID="rfvEmailId" Text="Please provide EmailId" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator">
                                        <b>Mobile No. </b>
                                    </td>
                                    <td class="navigator" width="21" background="files/line.gif">
                                        &nbsp;
                                    </td>
                                    <td class="navigator_normal">
                                        <asp:TextBox ID="tbMobileNo" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="tbMobileNo" SetFocusOnError="true"
                                            ID="rfvMobileNo" Text="Please provide Mobile No" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" height="15">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="" class="tdSubmitButton">
                                        <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit"  OnClick="lbSubmit_Click"></asp:LinkButton>
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
