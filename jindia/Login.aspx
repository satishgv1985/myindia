<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<%@ Register TagName="LeftColumn" TagPrefix="uc" Src="~/userControls/LeftColumn.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc:LeftColumn ID="leftColumn" runat="server" />
    <div style="padding-top: 50px; clear: none; left: 100px; text-align: left; float: right;
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
                    <asp:TextBox ID="tbLoginName" runat="server" Text="" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="tbLoginName" SetFocusOnError="true" ID="rfvLoginName" Text="* Required" runat="server"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" Text="" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="tbPassword" SetFocusOnError="true" ID="rfvPassword" Text="* Required" runat="server"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="false" />
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>
