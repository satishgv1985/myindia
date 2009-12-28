<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="Contact Us - JayahoIndia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin-left: 15px; width: 95%">
        <tr>
            <td style="text-align: center;">
                <asp:Label Font-Bold="true" ForeColor="BlueViolet" ID="lblMessage" runat="server"
                    Visible="false" Text="!Mail Sent Successfully. We will contact you soon."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="subheading2">
                Contact Us</td>
        </tr>
        <tr>
            <td valign="top">
                <table cellspacing="0" cellpadding="0" width="90%">
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="0" width="100%">
                                <tr align="left" valign="top">
                                    <td align="center">
                                        <img src="ourAssets/contacts.jpg" height="180" width="180"  /></td>
                                    <td height="40" class="content">
                                        <strong>Regd. Office:</strong><br />
                                        JayahoIndia<br />
                                        <img height="15" align="middle" width="20" src="original/india.jpg" />
                                        <b>INDIA</b>
                                        <br />
                                        <br />
                                        <b>Land Line:</b> +91-80-2550 6721/5738
                                        <br />
                                        <b>Cell:</b> +91-94801 83475
                                        <br />
                                        <b>Skype:</b> jayahoindia
                                        <br />
                                    </td>
                                    <%-- <td width="317">
                                        #D-12, 5th Floor, Eureka Court<br />
                                        Beside Image Hospital<br />
                                        Ameerpet, Hyderabad - 500 073<br />
                                        Andhra Pradesh, INDIA.<br />
                                        Help Desk: 040-65981453 (10am to 6pm)<br />
                                        E-mail: admin@adsonmobile.biz<br />
                                    </td>--%>
                                    <%--   <td>
                                        <div>
                                            <strong>BANK ACCOUNT</strong>
                                            <br />
                                            A/C Name :
                                            <br />
                                            Melissa Soft Solutions Pvt.Ltd<br />
                                            A/C No: 007505009157<br />
                                            ICICI Bank<br />
                                            S.R Nagar Branch<br />
                                            Hyderabad.</div>
                                    </td>--%>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table cellspacing="0" cellpadding="1" align="left" class="text">
                                <tr>
                                    <td>
                                        Your Name:</td>
                                    <td>
                                        <asp:TextBox ID="tbYourName" runat="server" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvYourName" runat="server" ControlToValidate="tbYourName"
                                            ForeColor="red" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Your Email Id:</td>
                                    <td>
                                        <asp:TextBox ID="tbYourEmail" runat="server" MaxLength="50"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revYourEmail" runat="server" ControlToValidate="tbYourEmail"
                                            ErrorMessage="Please Enter Valid Email Id" SetFocusOnError="true" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="rfvYourEmail" runat="server" ControlToValidate="tbYourEmail"
                                            ForeColor="red" ErrorMessage="Please Enter Email ID"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Phone No:</td>
                                    <td>
                                        <asp:TextBox ID="tbPhoneNo" runat="server" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ControlToValidate="tbPhoneNo"
                                            ForeColor="red" ErrorMessage="Please Enter Phone No"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Subject:</td>
                                    <td>
                                        <asp:TextBox ID="tbSubject" runat="server" MaxLength="60"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="tbSubject"
                                            ForeColor="red" ErrorMessage="Please Enter Subject"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        Message:</td>
                                    <td>
                                        <asp:TextBox ID="tbMessage" runat="server" TextMode="multiLine" Columns="15" MaxLength="800"
                                            Width="200" Height="100"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="tbMessage"
                                            ForeColor="red" ErrorMessage="Please Enter Message"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tdSubmitButton" colspan="2" style="text-align: center">
                                        <asp:LinkButton ID="btnSubmitMessage" runat="server" Text="Submit" OnClick="btnSubmitMessage_Click"></asp:LinkButton>
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
