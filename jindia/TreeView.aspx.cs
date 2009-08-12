using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Collections.Generic;
using JayahoIndia;

public partial class TreeView : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["jayahoConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                SqlGuid id = new SqlGuid("82403D57-DBC3-4D2F-B990-383A59582174");
                List<UserData> _usersleft = GetLeftChild(id);
                gvTreeViewLeft.DataSource = _usersleft;
                gvTreeViewLeft.DataBind();
                List<UserData> _usersright = GetRightChild(id);
                gvTreeViewRight.DataSource = _usersright;
                gvTreeViewRight.DataBind();
                if (_usersright.Count == 0)
                {
                    gvTreeView23Left.DataSource = _usersright;
                    gvTreeView23Left.DataBind();
                    gvTreeView24Right.DataSource = _usersright;
                    gvTreeView24Right.DataBind();
                    gvTreeView35Left.DataSource = _usersright;
                    gvTreeView35Left.DataBind();
                    gvTreeView36Right.DataSource = _usersright;
                    gvTreeView36Right.DataBind();
                    gvTreeView37Left.DataSource = _usersright;
                    gvTreeView37Left.DataBind();
                    gvTreeView38Right.DataSource = _usersright;
                    gvTreeView38Right.DataBind();
                }
                if (_usersleft.Count == 0)
                {
                    gvTreeView21left.DataSource = _usersleft;
                    gvTreeView21left.DataBind();
                    gvTreeView22Right.DataSource = _usersleft;
                    gvTreeView22Right.DataBind();
                    gvTreeView31Left.DataSource = _usersleft;
                    gvTreeView31Left.DataBind();
                    gvTreeView32Right.DataSource = _usersleft;
                    gvTreeView32Right.DataBind();
                    gvTreeView33Left.DataSource = _usersleft;
                    gvTreeView33Left.DataBind();
                    gvTreeView34Right.DataSource = _usersleft;
                    gvTreeView34Right.DataBind();
                }
            }

        }
        catch (Exception e1)
        {
            Response.Write(e1.Message);
        }
        finally
        {
            if (cn.State == ConnectionState.Open)
                cn.Close();
        }


    }

    public List<UserData> GetLeftChild(SqlGuid parentId)
    {
        SqlCommand cmd = new SqlCommand("GetLeftChildByParentId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@parentId", SqlDbType.UniqueIdentifier).Value = parentId;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        List<UserData> _users = new List<UserData>();
        while (dr.Read())
        {
            UserData user = new UserData();
            user.UserId = Convert.ToString(dr[0]);
            user.UserName = Convert.ToString(dr[1]);
            _users.Add(user);
        }
        cn.Close();
        return _users;
    }

    public List<UserData> GetRightChild(SqlGuid parentId)
    {
        SqlCommand cmd = new SqlCommand("GetRightChildByParentId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@parentId", SqlDbType.UniqueIdentifier).Value = parentId;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        List<UserData> _users = new List<UserData>();
        while (dr.Read())
        {
            UserData user = new UserData();
            user.UserId = Convert.ToString(dr[0]);
            user.UserName = Convert.ToString(dr[1]);
            _users.Add(user);
        }
        cn.Close();
        return _users;
    }

    protected void gvTreeViewLeft_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild1Left = (LinkButton)e.Row.FindControl("lnkChild1Left");
            lnkChild1Left.Text = _user.UserName;
            lnkChild1Left.CommandName = _user.UserId;
            List<UserData> _usersLeft = new List<UserData>();
            _usersLeft = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView21left.DataSource = _usersLeft;
            gvTreeView21left.DataBind();
            List<UserData> _usersRight = new List<UserData>();
            _usersRight = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView22Right.DataSource = _usersRight;
            gvTreeView22Right.DataBind();
            if (_usersLeft.Count == 0)
            {
                gvTreeView31Left.DataSource = _usersLeft;
                gvTreeView31Left.DataBind();
                gvTreeView32Right.DataSource = _usersLeft;
                gvTreeView32Right.DataBind();
            }
            if (_usersRight.Count == 0)
            {
                gvTreeView33Left.DataSource = _usersRight;
                gvTreeView33Left.DataBind();
                gvTreeView34Right.DataSource = _usersRight;
                gvTreeView34Right.DataBind();
            }
        }
    }

    protected void gvTreeViewRight_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild1Right = (LinkButton)e.Row.FindControl("lnkChild1Right");
            lnkChild1Right.Text = _user.UserName;
            lnkChild1Right.CommandName = _user.UserId;
            List<UserData> _usersLeft = new List<UserData>();
            _usersLeft = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView23Left.DataSource = _usersLeft;
            gvTreeView23Left.DataBind();
            List<UserData> _usersRight = new List<UserData>();
            _usersRight = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView24Right.DataSource = _usersRight;
            gvTreeView24Right.DataBind();
            if (_usersLeft.Count == 0)
            {
                gvTreeView35Left.DataSource = _usersLeft;
                gvTreeView35Left.DataBind();
                gvTreeView36Right.DataSource = _usersLeft;
                gvTreeView36Right.DataBind();
            }
            if (_usersRight.Count == 0)
            {
                gvTreeView37Left.DataSource = _usersRight;
                gvTreeView37Left.DataBind();
                gvTreeView38Right.DataSource = _usersRight;
                gvTreeView38Right.DataBind();
            }
        }
    }
    protected void gvTreeView21left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild21left = (LinkButton)e.Row.FindControl("lnkChild21left");
            lnkChild21left.Text = _user.UserName;
            lnkChild21left.CommandName = _user.UserId;
            gvTreeView31Left.DataSource = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView31Left.DataBind();
            gvTreeView32Right.DataSource = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView32Right.DataBind();
        }
    }
    protected void gvTreeView22Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild22Right = (LinkButton)e.Row.FindControl("lnkChild22Right");
            lnkChild22Right.Text = _user.UserName;
            lnkChild22Right.CommandName = _user.UserId;
            gvTreeView33Left.DataSource = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView33Left.DataBind();
            gvTreeView34Right.DataSource = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView34Right.DataBind();
        }
    }
    protected void gvTreeView23Left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild23Left = (LinkButton)e.Row.FindControl("lnkChild23Left");
            lnkChild23Left.Text = _user.UserName;
            lnkChild23Left.CommandName = _user.UserId;
            gvTreeView35Left.DataSource = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView35Left.DataBind();
            gvTreeView36Right.DataSource = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView36Right.DataBind();
        }
    }
    protected void gvTreeView24Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild24Right = (LinkButton)e.Row.FindControl("lnkChild24Right");
            lnkChild24Right.Text = _user.UserName;
            lnkChild24Right.CommandName = _user.UserId;
            gvTreeView37Left.DataSource = GetLeftChild(new SqlGuid(_user.UserId));
            gvTreeView37Left.DataBind();
            gvTreeView38Right.DataSource = GetRightChild(new SqlGuid(_user.UserId));
            gvTreeView38Right.DataBind();
        }
    }
    protected void gvTreeView31Left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild31Left = (LinkButton)e.Row.FindControl("lnkChild31Left");
            lnkChild31Left.Text = _user.UserName;
            lnkChild31Left.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView32Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild32Right = (LinkButton)e.Row.FindControl("lnkChild32Right");
            lnkChild32Right.Text = _user.UserName;
            lnkChild32Right.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView33Left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild33Left = (LinkButton)e.Row.FindControl("lnkChild33Left");
            lnkChild33Left.Text = _user.UserName;
            lnkChild33Left.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView34Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild34Right = (LinkButton)e.Row.FindControl("lnkChild34Right");
            lnkChild34Right.Text = _user.UserName;
            lnkChild34Right.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView35Left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild35Left = (LinkButton)e.Row.FindControl("lnkChild35Left");
            lnkChild35Left.Text = _user.UserName;
            lnkChild35Left.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView36Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild36Right = (LinkButton)e.Row.FindControl("lnkChild36Right");
            lnkChild36Right.Text = _user.UserName;
            lnkChild36Right.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView37Left_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild37Left = (LinkButton)e.Row.FindControl("lnkChild37Left");
            lnkChild37Left.Text = _user.UserName;
            lnkChild37Left.CommandName = _user.UserId;
        }
    }
    protected void gvTreeView38Right_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            UserData _user = (UserData)e.Row.DataItem;
            LinkButton lnkChild38Right = (LinkButton)e.Row.FindControl("lnkChild38Right");
            lnkChild38Right.Text = _user.UserName;
            lnkChild38Right.CommandName = _user.UserId;
        }
    }
}
