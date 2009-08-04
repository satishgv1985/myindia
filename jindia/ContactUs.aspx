<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="padding-left: 15px; width: 100%">
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
                                        <img src="original/contactus.jpg" height="150" width="160" /></td>
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
                                        <b>Skype:</b> researchreporter
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
                                        Name:</td>
                                    <td>
                                        <input type="text" id="ctl00_ContentPlaceHolder1_contact1_txtname" maxlength="50"
                                            name="ctl00$ContentPlaceHolder1$contact1$txtname" />
                                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_contact1_req1">
                                            Please Enter Name</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        Email:</td>
                                    <td>
                                        <input type="text" id="ctl00_ContentPlaceHolder1_contact1_txtemail" maxlength="50"
                                            name="ctl00$ContentPlaceHolder1$contact1$txtemail" />
                                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_contact1_RequiredFieldValidator1">
                                            Please Enter Email ID</span> <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_contact1_rev1">
                                                Invalid Mail Id</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Phone:</td>
                                    <td>
                                        <input type="text" id="ctl00_ContentPlaceHolder1_contact1_txtphone" maxlength="10"
                                            name="ctl00$ContentPlaceHolder1$contact1$txtphone" />
                                        <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_contact1_RequiredFieldValidator2">
                                            Enter Phone No</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Message:</td>
                                    <td>
                                        <textarea onkeypress="if(this.value.length>=60) return false;" cols="30" rows="5"
                                            name="ctl00$ContentPlaceHolder1$contact1$txtmsg" />
                                        <%--
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_contact1_RequiredFieldValidator3">
                                                Please Enter Message</span>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" style="width: 60px;" class="button" id="ctl00_ContentPlaceHolder1_contact1_butSubmit"
                                            value="Submit" name="ctl00$ContentPlaceHolder1$contact1$butSubmit" />
                                        <br />
                                        <span style="color: White;" id="ctl00_ContentPlaceHolder1_contact1_lblmsg" />
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
