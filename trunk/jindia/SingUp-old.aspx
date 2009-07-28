<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true" CodeBehind="SingUp.aspx.cs" Inherits="SingUp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<input type="hidden" id="p_Registration_user_id" runat="server" />
        <table>
            <tr>
                <td valign="top" style="width: 913px">
                    <table id="Registration_holder" runat="Server" style="border-left: 1 solid #FFFFFF;
                        border-right: 1 solid #000000; border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                        <tr>
                            <td colspan="2" style="background-color: #666633; color: #FFFFFF; text-align: Center;
                                border-left: 1 solid #FFFFFF; border-right: 1 solid #000000; border-top: 1 solid #FFFFFF;
                                border-bottom: 1 solid #000000">
                                <font style="font-size: 12pt; color: #FFFFFF; font-weight: bold; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    <asp:Label ID="RegistrationForm_Title" runat="server">User Registration Form</asp:Label></font><br>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:Label ID="Registration_ValidationSummary" Style="background-color: #DDDDBD;
                                    color: #000000; border-right: 1 solid #000000; border-bottom: 1 solid #000000"
                                    runat="server" Visible="false"></asp:Label>
                                <input type="Hidden" id="Registration_user_id" value="" runat="server">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Login*</font>
                                <asp:RequiredFieldValidator ID="Registration_user_login_Validator_Req" runat="server"
                                    ErrorMessage="The value in field Login* is required." ControlToValidate="Registration_user_login"
                                    Display="None" EnableClientScript="False"></asp:RequiredFieldValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_user_login" Columns="15" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Password*</font>
                                <asp:RequiredFieldValidator ID="Registration_user_password_Validator_Req" runat="server"
                                    ErrorMessage="The value in field Password* is required." ControlToValidate="Registration_user_password"
                                    Display="None" EnableClientScript="False"></asp:RequiredFieldValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_user_password" TextMode="Password" Columns="15" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Confirm Password*</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_user_password2" TextMode="Password" Columns="15" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    First Name</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_first_name" Columns="20" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Last Name</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_last_name" Columns="20" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Email</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_email" Columns="30" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Address Line 1</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_address1" Columns="50" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Address Line 2</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_address2" Columns="50" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    City</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_city" Columns="50" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    State</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_state_id" DataTextField="state_desc" DataValueField="state_id"
                                    runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Zip</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_zip" Columns="10" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Country*</font>
                                <asp:RequiredFieldValidator ID="Registration_country_id_Validator_Req" runat="server"
                                    ErrorMessage="The value in field Country* is required." ControlToValidate="Registration_country_id"
                                    Display="None" EnableClientScript="False"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="Registration_country_id_Validator_Num" OnServerValidate="ValidateNumeric"
                                    runat="server" EnableClientScript="False" ErrorMessage="The value in field Country* is incorrect."
                                    ControlToValidate="Registration_country_id" Display="None"></asp:CustomValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_country_id" DataTextField="country_desc" DataValueField="country_id"
                                    runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    International Address</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_address3" Columns="50" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Phone</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_phone_day" Columns="20" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Home Phone</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_phone_evn" Columns="20" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Language</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_language_id" DataTextField="name" DataValueField="lang_id" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Age</font>
                                <asp:CustomValidator ID="Registration_age_Validator_Num" OnServerValidate="ValidateNumeric"
                                    runat="server" EnableClientScript="False" ErrorMessage="The value in field Age is incorrect."
                                    ControlToValidate="Registration_age" Display="None"></asp:CustomValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_age" DataTextField="age_desc" DataValueField="age_id" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Gender</font>
                                <asp:CustomValidator ID="Registration_gender_Validator_Num" OnServerValidate="ValidateNumeric"
                                    runat="server" EnableClientScript="False" ErrorMessage="The value in field Gender is incorrect."
                                    ControlToValidate="Registration_gender" Display="None"></asp:CustomValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_gender" DataTextField="gender_desc" DataValueField="gender_id"
                                    runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Education</font>
                                <asp:CustomValidator ID="Registration_education_Validator_Num" OnServerValidate="ValidateNumeric"
                                    runat="server" EnableClientScript="False" ErrorMessage="The value in field Education is incorrect."
                                    ControlToValidate="Registration_education" Display="None"></asp:CustomValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_education" DataTextField="education_desc" DataValueField="education_id"
                                    runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Income</font>
                                <asp:CustomValidator ID="Registration_income_Validator_Num" OnServerValidate="ValidateNumeric"
                                    runat="server" EnableClientScript="False" ErrorMessage="The value in field Income is incorrect."
                                    ControlToValidate="Registration_income" Display="None"></asp:CustomValidator></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:DropDownList Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    ID="Registration_income" DataTextField="income_desc" DataValueField="income_id"
                                    runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #BCBC7A; border-left: 1 solid #FFFFFF; border-right: 1 solid #000000;
                                border-top: 1 solid #FFFFFF; border-bottom: 1 solid #000000">
                                <font style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica">
                                    Describe Yourself</font></td>
                            <td style="background-color: #DDDDBD; color: #000000; border-right: 1 solid #000000;
                                border-bottom: 1 solid #000000">
                                <asp:TextBox ID="Registration_notes" Style="font-size: 10pt; color: #000000; font-family: Arial, Tahoma, Verdana, Helvetica"
                                    TextMode="MultiLine" Rows="5" Columns="50" runat="server">
	
                                </asp:TextBox>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <input type="button" id="Registration_insert" value="Submit" runat="server">
                                <input type="button" id="Registration_update" value="Apply" runat="server">
                                <input type="button" id="Registration_delete" value="Delete" runat="server">
                                <input type="button" id="Registration_cancel" value="Cancel" runat="server">
                            </td>
                        </tr>
                    </table>
                    <font face="arial" size="2"><b>* - indicates Required Fields</b> </font>
                </td>
            </tr>
        </table>
</asp:Content>
