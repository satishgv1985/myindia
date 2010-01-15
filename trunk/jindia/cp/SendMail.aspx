<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="SendMail.aspx.cs" Inherits="HelpDesk" Title="Send Mail To Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <div class="regborder">
        <table width="100%" cellspacing="2" cellpadding="2" align="center" id="Table1" class="text">
            <tr>
                <td style="text-align: center;">
                    <asp:Label Font-Bold="true" ForeColor="BlueViolet" ID="lblMessage" runat="server"
                        Visible="false" Text="!Mail Sent Successfully. We will contact you soon."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="innerHeading">Send Mail To Admin</span></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <span id="ctl00_ContentPlaceHolder1_lblmsg" />
                </td>
            </tr>
            <tr align="left">
                <td colspan="2">
                    Welcome to the online Help!
                    <br />
                    This Page is intended for Jayaho India Customers, who require technical assistance.
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Type</td>
                <td align="left">
                    <table border="0">
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbPayCards" runat="server" Checked="true" GroupName="rbType"
                                    Text="Pay Cards" />
                                <%-- <input type="radio" checked="checked" value="Pay Cards" name="ctl00$ContentPlaceHolder1$ddltype"
                                            id="ctl00_ContentPlaceHolder1_ddltype_0" /><label for="ctl00_ContentPlaceHolder1_ddltype_0">Pay
                                                Cards</label>--%>
                            </td>
                            <td>
                                <asp:RadioButton ID="rbAdvertisements" runat="server" GroupName="rbType" Text="Advertisements" />
                                <%--<input type="radio" value="Advertisements" name="ctl00$ContentPlaceHolder1$ddltype"
                                        id="ctl00_ContentPlaceHolder1_ddltype_3" /><label for="ctl00_ContentPlaceHolder1_ddltype_3">Advertisements</label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbBusiness" runat="server" GroupName="rbType" Text="Business" />
                                <%--<input type="radio" value="Business" name="ctl00$ContentPlaceHolder1$ddltype" id="ctl00_ContentPlaceHolder1_ddltype_1" /><label
                                        for="ctl00_ContentPlaceHolder1_ddltype_1">Business</label>--%>
                            </td>
                            <td>
                                <asp:RadioButton ID="rbEnquiry" runat="server" GroupName="rbType" Text="Enquiry" />
                                <%-- <input type="radio" value="Enquiry" name="ctl00$ContentPlaceHolder1$ddltype" id="ctl00_ContentPlaceHolder1_ddltype_4" /><label
                                        for="ctl00_ContentPlaceHolder1_ddltype_4">Enquiry</label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbIncentives" runat="server" GroupName="rbType" Text="Incentives" />
                                <%-- <input type="radio" value="Incentives" name="ctl00$ContentPlaceHolder1$ddltype" id="ctl00_ContentPlaceHolder1_ddltype_2" /><label
                                        for="ctl00_ContentPlaceHolder1_ddltype_2">Incentives</label>--%>
                            </td>
                            <td>
                                <asp:RadioButton ID="rbOther" runat="server" GroupName="rbType" Text="Other" />
                                <%-- <input type="radio" value="Other Issues" name="ctl00$ContentPlaceHolder1$ddltype"
                                        id="ctl00_ContentPlaceHolder1_ddltype_5" /><label for="ctl00_ContentPlaceHolder1_ddltype_5">Other
                                            Issues</label>--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 24px;">
                    Your Email Id</td>
                <td align="left" style="height: 24px;">
                    <asp:TextBox ID="tbEmailId" Text="youremailid@mailserver.com" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revYourEmail" runat="server" ControlToValidate="tbEmailId"
                                            ErrorMessage="Please Enter Valid Email Id" SetFocusOnError="true" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="rfvYourEmail" runat="server" ControlToValidate="tbEmailId"
                                            ForeColor="red" ErrorMessage="Please Enter Email ID"></asp:RequiredFieldValidator>
                    <%--<input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                            background-color: White; font-family: Verdana; font-size: 0.9em;" id="ctl00_ContentPlaceHolder1_txtmail"
                            maxlength="60" value="sravankenshi@gmail.com" name="ctl00$ContentPlaceHolder1$txtmail" />
                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_rfv">Please enter
                            Email id</span> <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_RegularExpressionValidator1">
                                Please Enter Valid Email</span></td>--%>
            </tr>
            <tr>
                <td>
                    Contact No</td>
                <td align="left">
                    <asp:TextBox ID="tbContactNo" Text="" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ControlToValidate="tbContactNo"
                                            ForeColor="red" ErrorMessage="Please Enter Phone No"></asp:RequiredFieldValidator>
                                            
                    <%--<input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                            background-color: White; font-family: Verdana; font-size: 0.9em;" id="ctl00_ContentPlaceHolder1_txtcontactno"
                            maxlength="10" value="9985886992" name="ctl00$ContentPlaceHolder1$txtcontactno" />
                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_rfv1">Please
                            enter Contact number</span>--%>
                </td>
            </tr>
            <tr>
                <td>
                    Message</td>
                <td align="left">
                    <asp:TextBox ID="tbMessage" TextMode="MultiLine" runat="server" Height="60"></asp:TextBox>
                    <%-- <textarea style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128); background-color: White;
                            font-family: Verdana; font-size: 0.9em;" id="ctl00_ContentPlaceHolder1_txtmessage"
                            cols="55" rows="6" name="ctl00$ContentPlaceHolder1$txtmessage" />
                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_rfv2">please
                            enter Message</span>--%>
                </td>
            </tr>
            <tr>
                <td />
                <td align="left">
                    <asp:LinkButton ID="btnSubmitMessage" runat="server" Text="Submit" OnClick="btnSubmitMessage_Click"></asp:LinkButton>
                    <%--<input type="submit" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                            background-color: rgb(248, 247, 244); font-weight: bold;" class="button" id="ctl00_ContentPlaceHolder1_btnsubmit"
                            onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$btnsubmit", "", true, "vg", "", false, false))'
                            value="Submit" name="ctl00$ContentPlaceHolder1$btnsubmit" />--%>
                </td>
            </tr>
            <%--   <tr>
                    <td class="text" colspan="2">
                        <div>
                            <table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana;
                                font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_gridcontactus"
                                class="text">
                                <tbody>
                                    <tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold;
                                        height: 30px;">
                                        <th align="center" scope="col">
                                            Token No</th>
                                        <th scope="col">
                                            Type</th>
                                        <th scope="col">
                                            Message</th>
                                        <th scope="col">
                                            Posted Date</th>
                                        <th scope="col">
                                            Reply Message</th>
                                    </tr>
                                    <tr align="center" style="color: Black;">
                                        <td align="center">
                                            1048
                                        </td>
                                        <td align="left">
                                            <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl02_lblfname">Business</span>
                                        </td>
                                        <td align="left">
                                            <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl02_lblcity">when will be the amount
                                                is to be credit for our messages </span>
                                        </td>
                                        <td>
                                            03/04/2009</td>
                                        <td align="left">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td align="left">
                                        </td>
                                        <td align="left">
                                        </td>
                                        <td>
                                        </td>
                                        <td align="left">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>--%>
        </table>
    </div>
</asp:Content>
