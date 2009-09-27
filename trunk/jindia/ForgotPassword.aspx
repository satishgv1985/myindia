<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Jayaho India - Forgot Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="text" style="margin-left: 15px;" width="60%">
        <tr>
            <td class="subheading2" colspan="2">
                Forgot Password</td>
        </tr>
        <tr>
            <td>
                Enter Your Email Id:</td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" ErrorMessage="* Required" ForeColor="red" ControlToValidate="txtEmailID">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter Your Pin:</td>
            <td>
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvPin" runat="server" ErrorMessage="* Required" ForeColor="red" ControlToValidate="txtPin">
                </asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="tdSubmitButton" colspan="2">
                <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit"></asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
