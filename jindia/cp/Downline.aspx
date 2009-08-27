<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="Downline.aspx.cs" Inherits="Downline" Title="Downline Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table width="100%">
        <tbody>
            <tr>
                <td align="left" colspan="2">
                    <span class="innerHeading">Downline Summary</span>
                    <br /><br />
                    <asp:GridView ID="GridView1" CellPadding="6" CellSpacing="0" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
