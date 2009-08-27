<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="TreeView.aspx.cs" Inherits="TreeView" Title="Tree View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table align="center" width="700">
     <tr>
            <td colspan="8">
                <span class="innerHeading">Tree View</span>
            </td>
        </tr>
        
        <tr>
            <td align="center" colspan="8">
                <div id="ctl00_ContentPlaceHolder1_uctreeview_div11">
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <span id="ctl00_ContentPlaceHolder1_uctreeview_Span1"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <asp:LinkButton ID="lnkRoot" runat="server"></asp:LinkButton><br />
                <img style="border-width: 0px;" src="../man/lev1.png" id="ctl00_ContentPlaceHolder1_uctreeview_img1" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="8">
                <img height="28" width="364" src="../man/line1.png" /></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:GridView runat="server" ID="gvTreeViewLeft" EmptyDataText="Empty" AutoGenerateColumns="false" OnRowDataBound="gvTreeViewLeft_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild1Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev1.png" id="img1left" />
            </td>
            <td align="center" colspan="4">
                <asp:GridView runat="server" ID="gvTreeViewRight" EmptyDataText="Empty" AutoGenerateColumns="false" OnRowDataBound="gvTreeViewRight_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild1Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image runat="server" style="border-width: 0px;" ImageUrl="../man/lev1.png" id="img1right" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="8">
                <img height="33" width="545" src="../man/line2.png" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView runat="server" ID="gvTreeView21left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView21left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild21left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image runat="server" style="border-width: 0px;" ImageUrl="../man/lev3.png" id="img21left" /></td>
            <td align="center" colspan="2">
                <asp:GridView runat="server" ID="gvTreeView22Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView22Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild22Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image runat="server" style="border-width: 0px;" ImageUrl="../man/lev3.png" id="img22right" />
            </td>
            <td align="center" colspan="2">
                <asp:GridView runat="server" ID="gvTreeView23Left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView23Left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild23Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image style="border-width: 0px;" ImageUrl="../man/lev3.png" runat="server" id="img23left" />
            </td>
            <td align="center" colspan="2">
                <asp:GridView runat="server" ID="gvTreeView24Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView24Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild24Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Image runat="server" style="border-width: 0px;" ImageUrl="../man/lev3.png" id="img24right" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="8">
                <img height="20" width="639" src="../man/line3.png" /></td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView31Left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView31Left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild31Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img31left" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView32Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView32Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild32Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img32right" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView33Left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView33Left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild33Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4b.png" id="img33left" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView34Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView34Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild34Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img34right" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView35Left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView35Left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild35Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img35left" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView36Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView36Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild36Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img36right" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView37Left" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView37Left_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild37Left" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img37left" />
            </td>
            <td align="center">
                <asp:GridView runat="server" ID="gvTreeView38Right" EmptyDataText="Empty" AutoGenerateColumns="false"
                    OnRowDataBound="gvTreeView38Right_RowDataBound" OnRowCommand="Common_CommandEventArgs">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkChild38Right" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Image style="border-width: 0px;" runat="server" ImageUrl="../man/lev4.png" id="img38right" />
            </td>
        </tr>
    </table>
</asp:Content>
