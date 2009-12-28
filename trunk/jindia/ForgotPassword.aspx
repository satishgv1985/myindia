<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Forgot Password - JayahoIndia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="text" style="margin-left: 15px;" width="90%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblUserMessage" ForeColor="red" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="subheading2" colspan="2">
                Forgot Password</td>
        </tr>
        <tr>
            <td width="200">
                Enter Your Registered Email Id:</td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revYourEmail" runat="server" ControlToValidate="txtEmailID"
                    ErrorMessage="Please Enter Valid Email Id" Display="Dynamic" SetFocusOnError="true"
                    ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvYourEmail" runat="server" ControlToValidate="txtEmailID"
                    ForeColor="red" ErrorMessage="Please Enter Email ID" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter Your Pin:</td>
            <td>
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPin" runat="server" ErrorMessage="* Required"
                    ForeColor="red" ControlToValidate="txtPin">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="tdSubmitButton" colspan="2">
                <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit" OnClick="lbSubmit_Click"></asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
