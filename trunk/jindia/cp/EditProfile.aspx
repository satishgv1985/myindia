<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" height="10">
                &nbsp;<b>Edit Profile</b>
            </td>
        </tr>
        <tr>
            <td width="1">
                &nbsp;
            </td>
            <td valign="top" width="98%" align="left">
                <table class="navigator_normal" width="98%" border="0" cellpadding="1" cellspacing="1">
                    <tr>
                        <td>
                            Personal Information</td>
                    </tr>
                    <tr>
                        <td>
                            <table width="568" border="0" cellpadding="0" cellspacing="0">
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
                                        <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
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
                                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
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
                                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
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
                                            <asp:ListItem Text="Andhra Pradesh" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Karnataka" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="navigator" valign="top">
                                        <b>District </b>
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
