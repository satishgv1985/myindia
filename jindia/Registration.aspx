<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td valign="top" style="width: 545px;">
                <table width="100%" style="padding-left: 15px;">
                    <tr>
                        <td class="subheading2">
                            Register</td>
                    </tr>
                    <tr>
                        <td>
                            With your efforts and our knowledge, the Ads On Mobile .biz opportunity can become
                            everything from a means of earning a little extra cash to building an international
                            business. Please Register with us today</td>
                    </tr>
                    <tr>
                        <td>
                            <table cellspacing="0" cellpadding="2" border="0" align="center" width="100%" id="Table1">
                                <tbody>
                                    <tr>
                                        <td colspan="2">
                                            <br />
                                            <span style="color: rgb(255, 0, 0);">* </span><strong>Mandatory Fields </strong>
                                            <span style="color: White;" id="ctl00_ContentPlaceHolder1_reg1_lblmsg" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="regdbg">
                                                Account Details</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Introducer Id</td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtsponserid"
                                                onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$reg1$txtsponserid\',\'\')', 0)"
                                                maxlength="20" name="ctl00$ContentPlaceHolder1$reg1$txtsponserid" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvsponser">
                                                Provide Sponserid</span> <font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Pin No</td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtpinno"
                                                maxlength="40" name="ctl00$ContentPlaceHolder1$reg1$txtpinno" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_RequiredFieldValidator3">
                                                Provide Pin No</span><font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Position</td>
                                        <td>
                                            <select id="ctl00_ContentPlaceHolder1_reg1_dr_position" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$reg1$dr_position\',\'\')', 0)"
                                                name="ctl00$ContentPlaceHolder1$reg1$dr_position">
                                                <option value="Left" selected="selected">Left</option>
                                                <option value="Right">Right</option>
                                            </select>
                                            <font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Name
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtfname"
                                                maxlength="50" name="ctl00$ContentPlaceHolder1$reg1$txtfname" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvfname">
                                                Provide First Name</span> <font color="red">*</font></td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Occupation
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtoccp"
                                                maxlength="50" name="ctl00$ContentPlaceHolder1$reg1$txtoccp" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvoccp">
                                                Provide Occupation</span> <font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="regdbg">
                                                Personal Details</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Date Of Birth</td>
                                        <td>
                                            <input type="text" id="ctl00_ContentPlaceHolder1_reg1_txtdob" name="ctl00$ContentPlaceHolder1$reg1$txtdob" />
                                            <span class="ajax__calendar">
                                                <div tabindex="0" class="ajax__calendar_container" style="display: none; visibility: hidden;
                                                    position: absolute;">
                                                    <div class="ajax__calendar_header">
                                                        <span>
                                                            <div class="ajax__calendar_prev" />
                                                        </span><span>
                                                            <div class="ajax__calendar_next" />
                                                        </span><span>
                                                            <div class="ajax__calendar_title" />
                                                        </span>
                                                    </div>
                                                    <div class="ajax__calendar_body">
                                                        <div class="ajax__calendar_days">
                                                            <table cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
                                                                <thead>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_dayname" />
                                                                        </td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_day">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="ajax__calendar_months" style="display: none; visibility: hidden;">
                                                            <table cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Jan</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Feb</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Mar</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Apr</div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                May</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Jun</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Jul</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Aug</div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Sep</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Oct</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Nov</div>
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_month">
                                                                                <br />
                                                                                Dec</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="ajax__calendar_years" style="display: none; visibility: hidden;">
                                                            <table cellspacing="0" cellpadding="0" border="0" style="margin: auto;">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                        <td>
                                                                            <div class="ajax__calendar_year" />
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <span>
                                                        <div class="ajax__calendar_footer ajax__calendar_today" />
                                                    </span>
                                                </div>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Mother Name
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtfathername"
                                                maxlength="50" name="ctl00$ContentPlaceHolder1$reg1$txtfathername" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Address
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtaddress1"
                                                maxlength="100" name="ctl00$ContentPlaceHolder1$reg1$txtaddress1" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvaddress1">
                                                Provide Address</span><font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Area
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtaddress2"
                                                maxlength="100" name="ctl00$ContentPlaceHolder1$reg1$txtaddress2" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            City
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtcity"
                                                maxlength="30" name="ctl00$ContentPlaceHolder1$reg1$txtcity" />
                                            <font color="red">*</font> <span style="color: Red; visibility: hidden;" id="ctl00_ContentPlaceHolder1_reg1_rfvcity">
                                                Provide City</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            State
                                        </td>
                                        <td>
                                            <select style="width: 208px;" id="ctl00_ContentPlaceHolder1_reg1_ddlstate" name="ctl00$ContentPlaceHolder1$reg1$ddlstate">
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
                                                Select State</span><font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            District
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtdistrict"
                                                maxlength="20" name="ctl00$ContentPlaceHolder1$reg1$txtdistrict" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Zip / Postcode
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtpcode"
                                                maxlength="6" name="ctl00$ContentPlaceHolder1$reg1$txtpcode" />
                                            <font color="red">*</font> <span style="color: Red; visibility: hidden;" id="ctl00_ContentPlaceHolder1_reg1_rfvpcode">
                                                Provide Pincode</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Email
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtemail"
                                                maxlength="50" name="ctl00$ContentPlaceHolder1$reg1$txtemail" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_revEmail">
                                                Invalid Email Id.</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Land Line No
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtresph"
                                                maxlength="15" name="ctl00$ContentPlaceHolder1$reg1$txtresph" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Mobile No
                                        </td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtmobileno"
                                                maxlength="13" name="ctl00$ContentPlaceHolder1$reg1$txtmobileno" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvmobile">
                                                Provide Mobile No</span> <font color="red">*</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Delivery Mode</td>
                                        <td>
                                            <select id="ctl00_ContentPlaceHolder1_reg1_dropdelivery" name="ctl00$ContentPlaceHolder1$reg1$dropdelivery">
                                                <option value="0" selected="selected">Courier</option>
                                                <option value="1">Post</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="regdbg">
                                                Security Details</div>
                                        </td>
                                    </tr>
                                    <tr id="ctl00_ContentPlaceHolder1_reg1_tr1">
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
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Password
                                        </td>
                                        <td>
                                            <input type="password" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtpwd"
                                                maxlength="10" name="ctl00$ContentPlaceHolder1$reg1$txtpwd" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rvfPWD">
                                                Provide Password</span><font color="red">*</font></td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap" align="right">
                                            Retype Password
                                        </td>
                                        <td>
                                            <input type="password" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtpwdre"
                                                maxlength="10" name="ctl00$ContentPlaceHolder1$reg1$txtpwdre" />
                                            <font color="red">*</font> <span style="color: Red; visibility: hidden;" id="ctl00_ContentPlaceHolder1_reg1_rfvtxtpwdre">
                                                Provide Password</span> <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_comp1">
                                                    Password Mismatch</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Pin Secret Answer
                                        </td>
                                        <td>
                                            <input type="password" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtsecans"
                                                maxlength="10" name="ctl00$ContentPlaceHolder1$reg1$txtsecans" />
                                            <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_reg1_rfvans">
                                                Provide Secret Answer</span><font color="red">*</font></td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <span style="color: rgb(255, 0, 0);"></span>Nominee</td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtnominee"
                                                maxlength="30" name="ctl00$ContentPlaceHolder1$reg1$txtnominee" />
                                            <span style="color: Red; visibility: hidden;" id="ctl00_ContentPlaceHolder1_reg1_rfvnominee">
                                                Provide Nominee</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Relation</td>
                                        <td>
                                            <input type="text" style="width: 200px;" id="ctl00_ContentPlaceHolder1_reg1_txtrelation"
                                                maxlength="20" name="ctl00$ContentPlaceHolder1$reg1$txtrelation" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <input type="submit" style="width: 60px;" class="button" id="ctl00_ContentPlaceHolder1_reg1_butcont"
                                                onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$reg1$butcont", "", true, "register", "", false, false))'
                                                value="Submit" name="ctl00$ContentPlaceHolder1$reg1$butcont" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
