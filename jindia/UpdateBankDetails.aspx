<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UpdateBankDetails.aspx.cs" Inherits="UpdateBankDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table>
        <tr>
            <td>
                <b>Update Bank Details</b></td>
        </tr>
        <tr>
            <td>
                <table width="568" id="tableBankInformation" style="vertical-align:text-top;" runat="server" border="0" cellpadding="0"
                    cellspacing="0">
                    <tr>
                        <td class="navigator" width="200" height="35">
                            <b>PAN Number</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal" width="347">
                            <asp:TextBox ID="tbPanNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator" width="200" height="35">
                            <b>Bank Account Number</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal" width="347">
                            <asp:TextBox ID="tbBankAccountNumber" runat="server"></asp:TextBox>&nbsp;*
                            <asp:RequiredFieldValidator ID="rfvBankAccountNumber" runat="server" ControlToValidate="tbBankAccountNumber"
                                ErrorMessage="Please Enter Bank Account Number" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator" width="169" height="35">
                            <b>Bank Name</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal" width="347">
                            <asp:TextBox ID="tbBankName" runat="server"></asp:TextBox>&nbsp;*
                            <asp:RequiredFieldValidator ID="rfvBankName" runat="server" ControlToValidate="tbBankName"
                                ErrorMessage="Please Enter Bank Name" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator" width="169" height="35">
                            <b>Bank Branch</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal" width="347">
                            <asp:TextBox ID="tbBankBranch" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="navigator" height="35">
                            <b>Bank Pay Card Number</b>
                        </td>
                        <td class="navigator" width="21" background="files/line.gif">
                            &nbsp;
                        </td>
                        <td class="navigator_normal">
                            <asp:TextBox ID="tbPayCardNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:LinkButton ID="lbBankDetailsUpdate" Text="Update" runat="server" OnClick="lbBankDetailsUpdate_Click"></asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
