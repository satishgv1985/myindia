<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftColumn.ascx.cs" Inherits="userControls_LeftColumn" %>
<div id="col_left">
    <%-- <p>
                            <a href="/index.htm" class="blueButton" id="proposalButton" style="background-image: url('original/btn_requestproposal.gif');">
                                Our Services</a>
                        </p>--%>
    <%--  <ul id="proposalList" style="display: none;">
        <li><a href="/rfp.htm">Service 1</a></li>
        <li><a href="/quote_rankreport.htm">Service 2</a></li>
    </ul>
    <p>
    </p>
     <div id="aboutDt">
                            <p>
                                <a href="http://techunified.com/main/products/voiceconnect/index.htm">
                                    <img src="original/anime.gif" alt="" align="left" width="180" height="269">
                                    <map name="Map2" id="Map2">
                                        <area shape="rect" coords="82,169,158,186" href="http://techunified.com/main/products/voiceconnect/index2.htm"
                                            alt="Voice Connect">
                                    </map>
                                </a>
                            </p>
                        </div>--%>
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
    <%--  <p style="padding-left: 10px;">
        <span class="style5">Customers &amp; Partners</span>
    </p>
    <div id="customers1">
        <div id="master01" style="overflow: hidden; position: relative; width: 176px; height: 81px;">
            <img src="original/customer_09.gif" border="0">
        </div>
    </div>
    <div id="dtJobs">
        <div align="center">
            <form name="search" action="../search/index.htm" method="get">
                <input size="13" name="searchTxt" value="" style="border-style: solid;">&nbsp;&nbsp;
                <input src="original/go.gif" name="submit" value="Search" type="image" width="20"
                    height="20">
            </form>
        </div>
    </div>--%>
</div>
