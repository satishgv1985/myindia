<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftColumn.ascx.cs" Inherits="userControls_LeftColumn" %>
<div id="col_left">
    <div>
        <img src="original/customerlogin.gif" /></div>
    <table cellpadding="3" style="border: 1px solid #d8d8d8; padding: 3px; margin-top: 5px;
        width: 97%;">
        <tr>
            <td>
                <asp:Label Text="User Logged Out Successfully" ID="lblUserLogout" runat="server"
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Invalid Loginname or Password" ID="lblInvalidError" runat="server"
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Login Name:<br />
                <asp:TextBox ID="tbLoginName" runat="server" Text="admin" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="tbLoginName" SetFocusOnError="true"
                    ID="rfvLoginName" Text="* Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password:
                <br />
                <asp:TextBox ID="tbPassword" runat="server" Text="" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="tbPassword" SetFocusOnError="true"
                    ID="rfvPassword" Text="* Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lbLogin" runat="server" CssClass="loginbutton" Width="70px" Text="Login"
                    OnClick="lbLogin_Click" CausesValidation="true"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lbForgotPassword" runat="server" PostBackUrl="~/ForgotPassword.aspx" CssClass="normalText" Text="ForgotPassword"
                    CausesValidation="false"></asp:LinkButton><br />
                <asp:LinkButton ID="lbNewUserSignUp" runat="server" PostBackUrl="~/SignUp.aspx" CssClass="normalText" Text="NewUser. Sign Up Now"
                    CausesValidation="false"></asp:LinkButton>
            </td>
        </tr>
    </table>
   
</div>
