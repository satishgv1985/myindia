<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="PhoneBook.aspx.cs" Inherits="PhoneBook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
<table cellspacing="0" cellpadding="0" border="0" class="text_1">
<tbody>
<tr>
                <td style="font-size: 13px;">
                    <b><u>Phone Book</u></b></td>
            </tr><tr>
<td align="left"><br/>
Search By   
<select id="ctl00_ContentPlaceHolder1_phone_ddlsearch" name="ctl00$ContentPlaceHolder1$phone$ddlsearch">
	<option value="Select">Select</option>
	<option value="Group">Group</option>
	<option value="Name">Name</option>
	<option value="City">City</option>
	<option value="Occupation">Occupation</option>
	<option value="Mobileno">Mobileno</option>
	<option value="EmailId">EmailId</option>

</select>
<input type="text" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128); background-color: White; font-family: Verdana; font-size: 0.9em;" id="ctl00_ContentPlaceHolder1_phone_txtsearch" name="ctl00$ContentPlaceHolder1$phone$txtsearch"/>
<span style="color: Red; display: none;" id="ctl00_ContentPlaceHolder1_phone_rfv">Enter Data</span>

<input type="submit" style="border: 1pt solid rgb(88, 88, 128); color: rgb(88, 88, 128); background-color: rgb(248, 247, 244); font-weight: bold;" class="button" id="ctl00_ContentPlaceHolder1_phone_btngo" onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder1$phone$btngo", "", true, "vg2", "", false, false))' value="Go" name="ctl00$ContentPlaceHolder1$phone$btngo"/>
<table width="200" cellspacing="0" cellpadding="0" border="0" style="display: none; position: absolute;"><tbody><tr valign="top" style="height: 100%;"><td width="20" align="right" style="height: 100%; vertical-align: top;"><table cellspacing="0" cellpadding="0" border="0" style="height: 100%;"><tbody><tr><td valign="top" align="right" style="font-size: 1px; padding-top: 8px;"><div style="border-top: 1px solid black; font-size: 1px; position: relative; left: 1px; width: 15px;"><div style="border-left: 1px solid black; overflow: hidden; width: 14px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 13px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 12px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 11px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 10px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 9px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 8px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 7px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 6px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 5px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 4px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 3px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 2px; height: 1px; background-color: LemonChiffon;"/><div style="border-left: 1px solid black; overflow: hidden; width: 1px; height: 1px; background-color: LemonChiffon;"/></div></td></tr></tbody></table></td><td width="20" style="border-top: 1px solid black; border-left: 1px solid black; border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon;"><img border="0" src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWjXx-AGqlKHeUohV85A9x5bJZDPTFtdLGVvJEC3DrWXM1&amp;t=633284344760000000"/></td><td width="100%" style="border-top: 1px solid black; border-bottom: 1px solid black; padding: 5px; background-color: LemonChiffon; font-family: verdana; font-size: 10px;">Enter Data</td><td style="border-top: 1px solid black; border-right: 1px solid black; border-bottom: 1px solid black; padding: 2px; background-color: lemonchiffon; vertical-align: top; text-align: right;"><img src="/WebResource.axd?d=NhGWjpyOIAMOM-43g11tImv9ccREvDPk5zafRlvxW3RqRehxZAYlcNAezy9ywHPWPbDqjsu24UcTun2ik-ejdn21eTMG-ARXZ-KJVhh_ybk1&amp;t=633284344760000000" style="cursor: pointer;"/></td></tr></tbody></table></td>
</tr>
<tr>
<td><br/>
<div>
	<table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana; font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_phone_gridcontactus" class="text">
		<tbody><tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold; height: 30px;">
			<th align="center" scope="col">Sno</th><th scope="col">Name</th><th scope="col">City</th><th scope="col">Occupation</th><th scope="col">Mobile No</th><th scope="col">Email ID</th><th scope="col">Group</th><th scope="col">Edit</th><th scope="col">Delete</th>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        1
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lblfname">abi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lblmobile">9989769996</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lblemail">abhisoma_dewsoft@yahoo.com</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4239"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl02$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl02_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        2
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lblfname">abi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lblcity">hyderabad</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lblmobile">9701597930</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4240"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl03$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl03_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        3
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lblfname">amar</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lblmobile">9885552944</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4242"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl04$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl04_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        4
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lblfname">asrith</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lblcity">chennai</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lblmobile">9840050759</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4243"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl05$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl05_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        5
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lblfname">balaji</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lblmobile">9966557732</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4244"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl06$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl06_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        6
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lblfname">balu</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lblmobile">9000002354</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4245"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl07$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl07_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        7
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lblfname">bharath</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lblmobile">9966450035</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4248"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl08$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl08_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        8
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lblfname">chaitanya</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lblmobile">9963919493</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lblgroup">f</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4270"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl09$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl09_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        9
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lblfname">chandu</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lblmobile">9000099337</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lblgroup">f</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4324"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl10$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl10_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr align="center" style="color: Black;">
			<td align="center">
        10
        </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lblfname">dileep</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lblcity">tirupathi</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lbloccupation">student</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lblmobile">9703078797</span>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lblemail"/>
            </td><td align="left">
            <span id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lblgroup">friends</span>
            </td><td align="left">
          <a href="editphonebook.aspx?n=4256"> <img style="border: 0pt none ;" src="original/edit_32.png"/></a>
          </td><td align="center">
                                            <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus$ctl11$lnkbtndelete','')" id="ctl00_ContentPlaceHolder1_phone_gridcontactus_ctl11_lnkbtndelete" onclick="return confirm('Are you sure,you want to delete this Record?');"><img style="border: 0pt none ;" src="original/delete-16x16.png"/></a>
                                        </td>
		</tr><tr>
			<td> </td><td align="left"> </td><td align="left"> </td><td align="left"> </td><td align="left"> </td><td align="left"> </td><td align="left"> </td><td align="left"> </td><td> </td>
		</tr><tr>
			<td colspan="9"><table border="0">
				<tbody><tr>
					<td><span>1</span></td><td><a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus','Page$2')">2</a></td><td><a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus','Page$3')">3</a></td><td><a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus','Page$4')">4</a></td><td><a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus','Page$5')">5</a></td><td><a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$phone$gridcontactus','Page$6')">6</a></td>
				</tr>
			</tbody></table></td>
		</tr>
	</tbody></table>
</div>
</td>
</tr>

</tbody></table>
</asp:Content>

