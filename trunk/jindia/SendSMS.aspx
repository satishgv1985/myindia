<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="SendSMS.aspx.cs" Inherits="SendSMS" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table>
        <tr>
            <td>
                <div class="borderchange" style="background-image: url('original\changeprofile.png');
                    background-repeat: no-repeat;">
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" class="text">
                        <tr>
                            <td width="29%" />
                            <td width="1%">
                            </td>
                            <td width="70%">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                            </td>
                            <td align="right">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" align="right">
                                Mobile Number
                            </td>
                            <td align="right">
                            </td>
                            <td>
                                <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
                                <%--<input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                                    background-color: White; font-family: Verdana; font-size: 0.9em;" maxlength="10" />
                                    <table width="200" cellspacing="0" cellpadding="0" border="0" style="display: none;
                                    position: absolute;">
                                    <tr valign="top" style="height: 100%;">
                                        <td width="20" align="right" style="height: 100%; vertical-align: top;">
                                            <table cellspacing="0" cellpadding="0" border="0" style="height: 100%;">
                                                <tr>
                                                    <td valign="top" align="right" style="font-size: 1px; padding-top: 8px;">
                                                        <div style="border-top: 1px solid black; font-size: 1px; position: relative; left: 1px;
                                                            width: 15px;">
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 14px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 13px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 12px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 11px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 10px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 9px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 8px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 7px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 6px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 5px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 4px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 3px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 2px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 1px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="20" style="border-top: 1px solid black; border-left: 1px solid black;
                                            border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon;">
                                            <img border="0" src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWjXx-AGqlKHeUohV85A9x5bJZDPTFtdLGVvJEC3DrWXM1&amp;t=633284344760000000" /></td>
                                        <td width="100%" style="border-top: 1px solid black; border-bottom: 1px solid black;
                                            padding: 5px; background-color: LemonChiffon; font-family: verdana; font-size: 10px;">
                                            Please Enter Mobile No</td>
                                        <td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black;
                                            padding: 2px; background-color: lemonchiffon; vertical-align: top; text-align: right;">
                                            <img src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWPbDqjsu24UcTun2ik-ejdn21eTMG-ARXZ-KJVhh_ybk1&amp;t=633284344760000000"
                                                style="cursor: pointer;" /></td>
                                    </tr>
                                </table>--%>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" align="right">
                                Messages</td>
                            <td align="right">
                            </td>
                            <td>
                            <asp:TextBox ID="tbTextMessage" runat="server"  MaxLength="80" TextMode="MultiLine"></asp:TextBox>
                                <%--<textarea style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128); background-color: White;
                                    font-family: Verdana; font-size: 0.9em;" onkeypress="if(this.value.length>=80) return false;"
                                    id="ctl00_ContentPlaceHolder1_txtmessage" cols="40" rows="5" name="ctl00$ContentPlaceHolder1$txtmessage" />
                                <span style="color: Red; display: none;"  />--%>
                                <br />
                                (Max 80 Characters Allowed)
                                <table width="200" cellspacing="0" cellpadding="0" border="0" style="display: none;
                                    position: absolute;">
                                    <tr valign="top" style="height: 100%;">
                                        <td width="20" align="right" style="height: 100%; vertical-align: top;">
                                            <table cellspacing="0" cellpadding="0" border="0" style="height: 100%;">
                                                <tr>
                                                    <td valign="top" align="right" style="font-size: 1px; padding-top: 8px;">
                                                        <div style="border-top: 1px solid black; font-size: 1px; position: relative; left: 1px;
                                                            width: 15px;">
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 14px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 13px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 12px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 11px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 10px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 9px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 8px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 7px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 6px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 5px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 4px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 3px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 2px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                            <div style="border-left: 1px solid black; overflow: hidden; width: 1px; height: 1px;
                                                                background-color: LemonChiffon;" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="20" style="border-top: 1px solid black; border-left: 1px solid black;
                                            border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon;">
                                            <img border="0" src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWjXx-AGqlKHeUohV85A9x5bJZDPTFtdLGVvJEC3DrWXM1&amp;t=633284344760000000" /></td>
                                        <td width="100%" style="border-top: 1px solid black; border-bottom: 1px solid black;
                                            padding: 5px; background-color: LemonChiffon; font-family: verdana; font-size: 10px;">
                                            Please Enter Message</td>
                                        <td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black;
                                            padding: 2px; background-color: lemonchiffon; vertical-align: top; text-align: right;">
                                            <img src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWPbDqjsu24UcTun2ik-ejdn21eTMG-ARXZ-KJVhh_ybk1&amp;t=633284344760000000"
                                                style="cursor: pointer;" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr align="right">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" />
                            <td align="right" />
                            <td>
                                <input type="submit" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                                    background-color: rgb(248, 247, 244); font-weight: bold;" class="button" id="ctl00_ContentPlaceHolder1_butsubmit"
                                    onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$butsubmit", "", true, "vg", "", false, false))'
                                    value="Send" name="ctl00$ContentPlaceHolder1$butsubmit" />
                                <br />
                                <span style="color: Red;" id="ctl00_ContentPlaceHolder1_lblmsg" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
           <%-- <td valign="top">
                <div>
                    <table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana;
                        font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_gridcontactus"
                        class="text">
                        <tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold;
                            height: 30px;">
                            <th align="center" scope="col">
                                Sno</th>
                            <th scope="col">
                                Date</th>
                            <th scope="col">
                                Total SMS</th>
                            <th scope="col">
                                Team</th>
                            <th scope="col">
                                Out Side</th>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                1
                            </td>
                            <td>
                                01-Apr-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl02_lblmobile1">1</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl02_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl02_lblmobile3">1</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                2
                            </td>
                            <td>
                                07-Mar-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl03_lblmobile1">4</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl03_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl03_lblmobile3">4</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                3
                            </td>
                            <td>
                                18-Mar-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl04_lblmobile1">2</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl04_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl04_lblmobile3">2</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                4
                            </td>
                            <td>
                                09-Mar-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl05_lblmobile1">55</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl05_lblmobile2">2</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl05_lblmobile3">53</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                5
                            </td>
                            <td>
                                23-Mar-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl06_lblmobile1">1</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl06_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl06_lblmobile3">1</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                6
                            </td>
                            <td>
                                06-May-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl07_lblmobile1">1</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl07_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl07_lblmobile3">1</span>
                            </td>
                        </tr>
                        <tr align="center" style="color: Black;">
                            <td align="center">
                                7
                            </td>
                            <td>
                                10-Mar-2009</td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl08_lblmobile1">2</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl08_lblmobile2">0</span>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_gridcontactus_ctl08_lblmobile3">2</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td align="left">
                            </td>
                            <td align="left">
                            </td>
                            <td align="left">
                            </td>
                        </tr>
                    </table>
                </div>
            </td>--%>
        </tr>
        <%--<tr>
            <td align="left">
                <br />
                Search By
                <select id="ctl00_ContentPlaceHolder1_ddlsearch" name="ctl00$ContentPlaceHolder1$ddlsearch">
                    <option value="Select">Select</option>
                    <option value="Group">Group</option>
                    <option value="Name">Name</option>
                    <option value="City">City</option>
                    <option value="Occupation">Occupation</option>
                    <option value="Mobileno">Mobileno</option>
                    <option value="EmailId">EmailId</option>
                </select>
                <input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                    background-color: White; font-family: Verdana; font-size: 0.9em;" id="ctl00_ContentPlaceHolder1_txtsearch"
                    name="ctl00$ContentPlaceHolder1$txtsearch" />
                <span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_rfv">Enter Data</span>
                <input type="submit" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128);
                    background-color: rgb(248, 247, 244); font-weight: bold;" class="button" id="ctl00_ContentPlaceHolder1_btngo"
                    onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$btngo", "", true, "vg2", "", false, false))'
                    value="Go" name="ctl00$ContentPlaceHolder1$btngo" />
                <table width="200" cellspacing="0" cellpadding="0" border="0" style="display: none;
                    position: absolute;">
                    <tr valign="top" style="height: 100%;">
                        <td width="20" align="right" style="height: 100%; vertical-align: top;">
                            <table cellspacing="0" cellpadding="0" border="0" style="height: 100%;">
                                <tr>
                                    <td valign="top" align="right" style="font-size: 1px; padding-top: 8px;">
                                        <div style="border-top: 1px solid black; font-size: 1px; position: relative; left: 1px;
                                            width: 15px;">
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 14px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 13px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 12px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 11px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 10px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 9px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 8px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 7px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 6px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 5px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 4px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 3px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 2px; height: 1px;
                                                background-color: LemonChiffon;" />
                                            <div style="border-left: 1px solid black; overflow: hidden; width: 1px; height: 1px;
                                                background-color: LemonChiffon;" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="20" style="border-top: 1px solid black; border-left: 1px solid black;
                            border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon;">
                            <img border="0" src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWjXx-AGqlKHeUohV85A9x5bJZDPTFtdLGVvJEC3DrWXM1&amp;t=633284344760000000" /></td>
                        <td width="100%" style="border-top: 1px solid black; border-bottom: 1px solid black;
                            padding: 5px; background-color: LemonChiffon; font-family: verdana; font-size: 10px;">
                            Enter Data</td>
                        <td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black;
                            padding: 2px; background-color: lemonchiffon; vertical-align: top; text-align: right;">
                            <img src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWPbDqjsu24UcTun2ik-ejdn21eTMG-ARXZ-KJVhh_ybk1&amp;t=633284344760000000"
                                style="cursor: pointer;" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div>
                    <table rules="all" cellspacing="0" border="1" align="left" style="width: 100%; border-collapse: collapse;"
                        id="ctl00_ContentPlaceHolder1_GridView1" class="text">
                        <tr align="center" style="color: White; background-color: rgb(64, 149, 66);">
                            <th align="center" scope="col">
                                Sno</th>
                            <th scope="col">
                                Name</th>
                            <th scope="col">
                                Mobile No</th>
                        </tr>
                        <tr>
                            <td align="center">
                                1
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl02_lblfname">abi</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9989769996"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl02_lblmobile">
                                    9989769996</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                2
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl03_lblfname">abi</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9701597930"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl03_lblmobile">
                                    9701597930</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                3
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl04_lblfname">amar</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9885552944"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl04_lblmobile">
                                    9885552944</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                4
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl05_lblfname">asrith</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9840050759"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl05_lblmobile">
                                    9840050759</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                5
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl06_lblfname">balaji</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9966557732"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl06_lblmobile">
                                    9966557732</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                6
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl07_lblfname">balu</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9000002354"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl07_lblmobile">
                                    9000002354</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                7
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl08_lblfname">bharath</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9966450035"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl08_lblmobile">
                                    9966450035</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                8
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl09_lblfname">chaitanya</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9963919493"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl09_lblmobile">
                                    9963919493</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                9
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl10_lblfname">chandu</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9000099337"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl10_lblmobile">
                                    9000099337</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                10
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_GridView1_ctl11_lblfname">dileep</span>
                            </td>
                            <td align="left">
                                <a href="sendsms.aspx?Y=9703078797"><span id="ctl00_ContentPlaceHolder1_GridView1_ctl11_lblmobile">
                                    9703078797</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table border="0">
                                    <tr>
                                        <td>
                                            <span>1</span></td>
                                        <td>
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$GridView1','Page$2')">2</a></td>
                                        <td>
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$GridView1','Page$3')">3</a></td>
                                        <td>
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$GridView1','Page$4')">4</a></td>
                                        <td>
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$GridView1','Page$5')">5</a></td>
                                        <td>
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$GridView1','Page$6')">6</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>--%>
    </table>
</asp:Content>
