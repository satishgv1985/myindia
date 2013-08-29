<%@ Page Title="" Language="C#" MasterPageFile="~/JntuSite.Master" AutoEventWireup="true" CodeBehind="ManageExamTimeTable.aspx.cs" Inherits="JEMS.admin.ManageExamTimeTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="10" cellspacing="0" width="100%">
        <tr>
            <td colspan="2">
                <telerik:RadButton ID="rbHeading" runat="server" Style="top: 0px; left: 0px; height: 21px;"
                    Text="Manage Examination Time Table">
                </telerik:RadButton>
            </td>
        </tr>
        <tr id="trMessage" runat="server">
            <td colspan="2" class="statusMessage">
                <asp:Label ID="lblMessage" runat="server" Text="Data Saved Successfully."></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Select Notification:
            </td>
            <td>
                <telerik:RadComboBox ID="rcbNotification" runat="server" DataSourceID="sdsExamNotification"
                    DataTextField="Description" DataValueField="ExamNotificationID" AutoPostBack="true" EmptyMessage="--Select Notification--">
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="sdsExamNotification" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="SELECT ExamNotificationID, Description FROM ExamNotification"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Select Course:
            </td>
            <td>
                <telerik:RadComboBox ID="rcbCourses" runat="server" DataSourceID="sdsCourses"
                    DataTextField="CourseName" DataValueField="CourseID" Enabled="false">
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="sdsCourses" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="SELECT CourseID, CourseName, CourseCode FROM Course where CourseID IN(SELECT CourseID FROM ExamNotification WHERE ExamNotificationID=@ExamNotificationID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rcbNotification" Name="ExamNotificationID" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Select Semester:
            </td>
            <td>
                <telerik:RadComboBox ID="rcbSemester" runat="server" DataSourceID="sdsSemester"
                    DataTextField="SemesterName" DataValueField="SemesterID" Enabled="false">
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="sdsSemester" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="SELECT SemesterID, SemesterName FROM Semester where SemesterID IN(SELECT SemesterID FROM ExamNotification WHERE ExamNotificationID=@ExamNotificationID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rcbNotification" Name="ExamNotificationID" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>

        <%--<tr>
            <td>Select Branch:
            </td>
            <td>
                <telerik:RadComboBox ID="rcbBranches" runat="server" DataSourceID="sdsBranch"
                    DataTextField="BranchName" DataValueField="BranchID" AutoPostBack="true">
                    <Items>
                        <telerik:RadComboBoxItem Text="--Select Notification--" />
                    </Items>
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="sdsBranch" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="SELECT BranchID, BranchName FROM Branch where CourseID=@courseID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rcbNotification" Name="CourseID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>--%>

        <tr>
            <td colspan="2">

                <telerik:RadGrid ID="rgTimeTable" runat="server" ShowHeader="true" AutoGenerateColumns="false" DataSourceID="sdsBranches"
                     OnItemCreated="rgTimeTable_ItemCreated" OnPreRender="rgTimeTable_PreRender">
                    <MasterTableView DataSourceID="sdsBranches" DataKeyNames="BranchID" GroupLoadMode="Client" HierarchyDefaultExpanded="true">
                        <ExpandCollapseColumn></ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="BranchID" FilterControlAltText="Filter BranchID column"
                                HeaderText="BranchID" ReadOnly="True" SortExpression="BranchID" UniqueName="BranchID"
                                Visible="false">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="BranchCode" FilterControlAltText="Filter BranchCode column"
                                HeaderText="BranchCode" SortExpression="BranchCode" UniqueName="BranchCode" ItemStyle-Width="50px">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="BranchName" FilterControlAltText="Filter BranchName column" ItemStyle-Width="300Px"
                                HeaderText="BranchName" SortExpression="BranchName" UniqueName="BranchName">
                            </telerik:GridBoundColumn>
                        </Columns>

                        <DetailTables>

                            <telerik:GridTableView DataSourceID="sdsSubjects" DataKeyNames="SubjectID" AutoGenerateColumns="false" 
                                AllowAutomaticUpdates="true">
                                <ParentTableRelation>
                                    <telerik:GridRelationFields DetailKeyField="BranchID" MasterKeyField="BranchID"></telerik:GridRelationFields>
                                </ParentTableRelation>
                                <Columns>
                                    <telerik:GridBoundColumn DataField="SubjectID" FilterControlAltText="Filter SubjectID column"
                                        HeaderText="SubjectID" ReadOnly="True" SortExpression="SubjectID" UniqueName="SubjectID"
                                        Visible="false">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SubjectCode" FilterControlAltText="Filter SubjectCode column" ItemStyle-Width="150Px"
                                        HeaderText="SubjectCode" ReadOnly="True" SortExpression="SubjectCode" UniqueName="SubjectCode">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SubjectName" FilterControlAltText="Filter SubjectName column" ItemStyle-Width="300Px"
                                        HeaderText="SubjectName" ReadOnly="True" SortExpression="SubjectName" UniqueName="SubjectName">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SubjectOrder" FilterControlAltText="Filter SubjectID column" ItemStyle-Width="100Px"
                                        HeaderText="SubjectOrder"  SortExpression="SubjectOrder" UniqueName="SubjectOrder">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SubjectTypeFullName" FilterControlAltText="Filter SubjectTypeFullName column" ItemStyle-Width="150Px"
                                        HeaderText="SubjectTypeFullName" ReadOnly="True" SortExpression="SubjectTypeFullName" UniqueName="SubjectTypeFullName">
                                    </telerik:GridBoundColumn>
                                    
                                </Columns>
                            </telerik:GridTableView>
                        </DetailTables>

                    </MasterTableView>
                </telerik:RadGrid>

                <asp:SqlDataSource ID="sdsBranches" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="select * from Branch WHERE courseId=@courseId">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rcbNotification" Name="CourseID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="sdsSubjects" runat="server" ConnectionString="<%$ ConnectionStrings:JntuDBConnectionString %>"
                    SelectCommand="select s.SubjectID, s.SubjectCode, s.SubjectName, s.SubjectOrder, s.SubjectTypeID, st.SubjectTypeFullName from Subject s
                    JOIN SubjectType st on s.SubjectTypeID=st.SubjectTypeID
                    WHERE s.courseId=@courseId and s.branchid=@branchID and s.SemesterID=@SemesterID Order By s.SubjectOrder">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rcbCourses" Name="CourseID" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="rcbSemester" Name="SemesterID" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="rgTimeTable" Name="BranchID" />
                    </SelectParameters>
                </asp:SqlDataSource>


            </td>
        </tr>
    </table>
</asp:Content>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace JEMS.admin
{
    public partial class ManageExamTimeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rgTimeTable_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem)
            {
                e.Item.Edit = true;
            }
        }

        protected void rgTimeTable_PreRender(object sender, EventArgs e)
        {
            foreach (GridDataItem item in rgTimeTable.MasterTableView.DetailTables[0].Items)
            {
                if (item.HasChildItems)
                {
                    GridTableView childTable = (GridTableView)item.ChildItem.NestedTableViews[0];


                    foreach (GridDataItem childitem in childTable.Items)
                    {

                        //Check for the newly inserted row 
                        //and set in edit mode 
                        childitem.Edit=true; 
                    }
                }

            }


            //foreach (GridItem item in RadGrid1.MasterTableView.Items)
            //{
            //    if (item is GridEditableItem)
            //    {
            //        GridEditableItem editableItem = item as GridDataItem;
            //        editableItem.Edit = true;
            //    }
            //}
            //RadGrid1.Rebind();

            rgTimeTable.MasterTableView.Rebind();
        }

    }
}