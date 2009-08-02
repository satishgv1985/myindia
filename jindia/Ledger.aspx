<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ledger.aspx.cs" Inherits="Ledger" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
<div>
	<table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana; font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_ucledger_gridledger">
		<tbody><tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold; height: 30px;">
			<th scope="col">Voucher ID</th><th scope="col">Member ID</th><th scope="col">Name</th><th scope="col">Transaction Date</th><th scope="col">Credit</th><th scope="col">Card No</th><th scope="col">Remarks</th>
		</tr><tr align="center" style="color: Black;">
			<td>6953</td><td>ZATOICHI</td><td> k.sravan kumar reddy</td><td>3/30/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>6952</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>3/28/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12178</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>3/17/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12177</td><td>ZATOICHI</td><td> k.sravan kumar reddy</td><td>3/12/2009</td><td>2541</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>6955</td><td>ZATOICHI</td><td>K.SRAVAN KUMAR REDDY</td><td>2/26/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12179</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>2/18/2009</td><td>1694</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12176</td><td>ZATOICHI</td><td> k.sravan kumar reddy </td><td>2/12/2009</td><td>2541</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12175</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>2/11/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12173</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>2/6/2009</td><td>847</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12174</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>2/6/2009</td><td>1694</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>6954</td><td>ZATOICHI</td><td>k.sravan kumar reddy </td><td>2/5/2009</td><td>2541</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>12172</td><td>ZATOICHI</td><td> k.sravan kumar reddy </td><td>2/2/2009</td><td>1694</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>6951</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>1/27/2009</td><td>5579</td><td>4629520316555580</td><td> </td>
		</tr><tr align="center" style="color: Black;">
			<td>6950</td><td>ZATOICHI</td><td> K.SRAVAN KUMAR REDDY</td><td>1/24/2009</td><td>2541</td><td>4629520316555580</td><td> </td>
		</tr><tr>
			<td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td>
		</tr>
	</tbody></table>
</div>
<div>
    <asp:GridView ID="gvLedger" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
            <asp:CheckBoxField DataField="CanView" HeaderText="CanView" SortExpression="CanView" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>"
        SelectCommand="SELECT [GroupName], [CanView] FROM [Groups]"></asp:SqlDataSource>
</div>
</asp:Content>

