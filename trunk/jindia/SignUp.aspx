<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="SignUp" Title="Jayaho India - Register Here" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin-left: 15px; width: 95%">
        <tr>
            <td valign="top" style="width: 545px;">
                <div class="subheading2">
                    Register</div>
                <div class="text">
                    With your efforts and our knowledge, the opportunity can become everything from
                    a means of earning a little extra cash to building an international business. Please
                    Register with us today
                </div>
                <table cellspacing="0" cellpadding="2" border="0" align="center" width="100%">
                    <tr>
                        <td colspan="2">
                            <br />
                            <span style="color: rgb(255, 0, 0);">* </span><strong>Mandatory Fields </strong>
                            <br />
                            <asp:Label ID="lblUserMessage" ForeColor="red" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <b>Account Details</b>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Introducer User Name</td>
                        <td>
                            <asp:TextBox ID="tbIntrodueId" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbIntrodueId" SetFocusOnError="true"
                                ID="rfvIntrodueId" Text="Please provide Introducr Id" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Pin No</td>
                        <td>
                            <asp:TextBox ID="tbPinNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbPinNo" SetFocusOnError="true" ID="rfvPinNo"
                                Text="Please provide Pin No" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Position</td>
                        <td>
                            <asp:DropDownList ID="ddlPosition" runat="server">
                                <asp:ListItem Selected="true" Value="left" Text="Left"></asp:ListItem>
                                <asp:ListItem Value="right" Text="Right"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Name
                        </td>
                        <td>
                            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbName" SetFocusOnError="true" ID="rfvName"
                                Text="Please provide Your Name" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Occupation
                        </td>
                        <td>
                            <asp:TextBox ID="tbOccupation" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <b>Personal Details</b>
                        </td>
                    </tr>
                    <%-- <tr>
                                                            <td align="right">
                                                                Date Of Birth</td>
                                                            <td>
                                                                <asp:Calendar ID="calDOB" runat="server"></asp:Calendar>
                                                            </td>
                                                        </tr>--%>
                    <tr>
                        <td align="right">
                            Address
                        </td>
                        <td>
                            <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbAddress" SetFocusOnError="true"
                                ID="rfvAddress" Text="Please provide Your Address" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            City
                        </td>
                        <td>
                            <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbCity" SetFocusOnError="true" ID="rfvCity"
                                Text="Please provide City" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            State
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlState" runat="server">
                                <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator InitialValue="0" ControlToValidate="ddlState" SetFocusOnError="true"
                                ID="rfvState" Text="Please Select a State" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                            <%--    <select style="width: 208px;" id="ctl00_ContentPlaceHolder1_reg1_ddlstate" name="ctl00$ContentPlaceHolder1$reg1$ddlstate">
                                                                    <option value="0">Select</option>
                                                                    <option value="Andaman &amp; Nicobar Islands">Andaman & Nicobar Islands</option>
                                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                                    <option value="Assam">Assam</option>
                                                                    <option value="Bihar">Bihar</option>
                                                                    <option value="Chandigarh">Chandigarh</option>
                                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                                    <option value="Delhi">Delhi</option>
                                                                    <option value="Goa">Goa</option>
                                                                    <option value="Gujarat">Gujarat</option>
                                                                    <option value="Haryana">Haryana</option>
                                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                                    <option value="Jharkhand">Jharkhand</option>
                                                                    <option value="Karnataka">Karnataka</option>
                                                                    <option value="Kerala">Kerala</option>
                                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                                    <option value="Maharashtra">Maharashtra</option>
                                                                    <option value="Manipur">Manipur</option>
                                                                    <option value="Meghalaya">Meghalaya</option>
                                                                    <option value="Mizoram">Mizoram</option>
                                                                    <option value="Nagaland">Nagaland</option>
                                                                    <option value="Orissa">Orissa</option>
                                                                    <option value="Puducherry">Puducherry</option>
                                                                    <option value="Punjab">Punjab</option>
                                                                    <option value="Rajasthan">Rajasthan</option>
                                                                    <option value="Sikkim">Sikkim</option>
                                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                                    <option value="Tripura">Tripura</option>
                                                                    <option value="Uttarakhand">Uttarakhand</option>
                                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                                    <option value="West Bengal">West Bengal</option>
                                                                </select>
                                                                <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvstate">
                                                                    Select State</span><font color="red">*</font>--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            District
                        </td>
                        <td>
                            <asp:TextBox ID="tbDistrict" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Zip / Postcode
                        </td>
                        <td>
                            <asp:TextBox ID="tbPincode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbPincode" SetFocusOnError="true"
                                ID="rfvPincode" Text="Please provide ZipCode" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNumericValidatorZipCode" runat="server" ControlToValidate="tbPincode"
                                ErrorMessage="Enter only Numbers" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Email
                        </td>
                        <td>
                            <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbEmailId" SetFocusOnError="true"
                                ID="rfvEmailId" Text="Please provide Email Id" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Mobile No
                        </td>
                        <td>
                            <asp:TextBox ID="tbMobileNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="tbMobileNo" SetFocusOnError="true"
                                ID="rfvMobileNo" Text="Please provide Mobile No" runat="server" ForeColor="Red"
                                Display="dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revNumberValidator" runat="server" SetFocusOnError="true"
                                ControlToValidate="tbMobileNo" ErrorMessage="Enter only 10 digit Mobile Number without 0 or 91"
                                ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$" Display="dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <b>Security Details</b>
                        </td>
                    </tr>
                    <%--   <tr id="ctl00_ContentPlaceHolder1_reg1_tr1">
                                                            <td align="right" width="246">
                                                                Memberid ID
                                                            </td>
                                                            <td width="739">
                                                                <input type="text" style="width: 80px;" id="ctl00_ContentPlaceHolder1_reg1_txtmemberid"
                                                                    onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$reg1$txtmemberid\',\'\')', 0)"
                                                                    maxlength="20" name="ctl00$ContentPlaceHolder1$reg1$txtmemberid" />
                                                                <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvmemid">
                                                                    Provide Memberid</span><font color="red">*</font> <span style="border-style: none;
                                                                        border-color: rgb(153, 153, 255); width: 10px; color: rgb(0, 0, 0);" id="spancheck" />
                                                            </td>
                                                        </tr>--%>
                    <tr>
                        <td align="right">
                            UserName To Login
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserNameLogin" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserNameLogin" runat="server" ControlToValidate="tbUserNameLogin"
                                Text="Enter UserName"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right">
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword"
                                Text="Enter Password"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="right">
                            Retype Password
                        </td>
                        <td>
                            <asp:TextBox ID="tbReeneterPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvReEnterPassword" runat="server" ControlToValidate="tbReeneterPassword"
                                Text="Enter Password" Display="dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="tbReeneterPassword"
                                ControlToCompare="tbPassword" Text="Enter Same Password" Display="dynamic"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Forgot Password Secret Question
                        </td>
                        <td>
                            <asp:TextBox ID="tbSecretQuestion" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSecretQuestion" runat="server" ControlToValidate="tbSecretQuestion"
                                Text="Enter Secret Question"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Secret Answer
                        </td>
                        <td>
                            <asp:TextBox ID="tbSecretAnswer" runat="server" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSecretAnswer" runat="server" ControlToValidate="tbSecretAnswer"
                                Text="Enter Secret Answer"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Nominee Name</td>
                        <td>
                            <asp:TextBox ID="tbNominee" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNominee" runat="server" ControlToValidate="tbNominee"
                                Text="Provide Nominee"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Relation</td>
                        <td>
                            <asp:TextBox ID="tbNomineeRelation" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNomineeRelation" runat="server" ControlToValidate="tbNomineeRelation"
                                Text="Provide Nominee"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdSubmitButton" colspan="2">
                            <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit" OnClick="lbSubmit_Click"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
