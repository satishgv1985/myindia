<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="JayahoIndia.Login" Title="Jayaho India - Login" %>

<%@ Register TagName="LeftColumn" TagPrefix="uc" Src="~/userControls/LeftColumn.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left: 250px;">
        <table>
            <tr>
                <td style="padding-left:15px;">
                    <asp:Label Text="User Logged Out Successfully" ID="lblUserLogout" runat="server"
                        ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <%--  <div style="padding-top: 50px; clear: none; left: 100px; text-align: left; float: right;
        padding-right: 200px; font-family: Tahoma; font-size: 11px;">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="User Logged Out Successfully" ID="lblUserLogout" runat="server"
                            ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="Invalid Loginname or Password" ID="lblInvalidError" runat="server"
                            ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Login Name:
                    </td>
                    <td>
                        <asp:TextBox ID="tbLoginName" runat="server" Text="admin" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="tbLoginName" SetFocusOnError="true"
                            ID="rfvLoginName" Text="* Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" Text="" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="tbPassword" SetFocusOnError="true"
                            ID="rfvPassword" Text="* Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="lbLogin" runat="server" Text="Login" OnClick="lbLogin_Click"
                            CausesValidation="true"></asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="lbReset" runat="server" Text="Reset" CausesValidation="false"
                            OnClick="lbReset_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </div>--%>
        <uc:LeftColumn ID="leftColumn" runat="server" />
    </div>
</asp:Content>
