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
using JayahoIndia;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Downline : System.Web.UI.Page
{
    public class Levels
    {
        private int _level;

        public int Level
        {
            get { return _level; }
            set { _level = value; }
        }
        private int _leftCount;

        public int LeftCount
        {
            get { return _leftCount; }
            set { _leftCount = value; }
        }
        private int _rightCount;

        public int RightCount
        {
            get { return _rightCount; }
            set { _rightCount = value; }
        }
	
	
    }
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["jayahoConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                SqlGuid id;
                if (Request.QueryString["ID"] == null)
                    id = new SqlGuid("82403D57-DBC3-4D2F-B990-383A59582174");
                else
                    id = new SqlGuid(Request.QueryString["ID"]);
                int rightcount = GetTotalRightUsersCount(id);
                int leftcount = GetTotalLeftUsersCount(id);
                UserData userLeft = GetLeftChild(id);
                UserData userRight = GetRightChild(id);
                List<UserData> _users = new List<UserData>();
                _users.Add(userLeft);
                SortedList sortlistleft = GetLevelSpecificUsers(_users);
                //int levelid = 3 + @levelid;
                _users.Clear();
                _users.Add(userRight);
                SortedList sortlistright = GetLevelSpecificUsers(_users);
                int totallevelcount = sortlistleft.Count > sortlistright.Count ? sortlistleft.Count : sortlistright.Count;
                List<Levels> level_users = new List<Levels>();
                for (int i = 1; i <= totallevelcount; i++)
                {
                    Levels level = new Levels();
                    level.Level = i;
                    List<UserData> left = (List<UserData>)sortlistleft[i];
                    if (left != null)
                        level.LeftCount = left.Count;
                    else
                        level.LeftCount = 0;
                    List<UserData> right = (List<UserData>)sortlistright[i];
                    if (right != null)
                        level.RightCount = right.Count;
                    else
                        level.RightCount = 0;
                    level_users.Add(level);
                }
                if (level_users != null)
                {
                    GridView1.DataSource = level_users;
                    GridView1.DataBind();
                }
                //while ((childList = getChildrenList(parentsLIst)).Count != 0)
                //{



                //}


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

    private SortedList GetLevelSpecificUsers(List<UserData> users)
    {
        List<UserData> _users = new List<UserData>();
        List<UserData> _tempusers = new List<UserData>();
        _users = users;
        SortedList sortlist = new SortedList();
        int count = 1;
        sortlist.Add(count, _users);
        while (true)
        {
            count++;
            for (int j = 0; j < _users.Count; j++)
            {
                if (_tempusers.Count != 0)
                    _tempusers.AddRange(GetUsers(_users[j].UserId));
                else
                    _tempusers = GetUsers(_users[j].UserId);

            }
            
            
            if (_tempusers.Count == 0)
                break;
            _users=new List<UserData>();
            _users.AddRange(_tempusers);
            sortlist.Add(count, _users);
            _tempusers.Clear();
        }
        return sortlist;
    }

    private List<UserData> GetUsers(string parentId)
    {
        SqlCommand cmd = new SqlCommand("GetUsersByLevelIdParentId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@parentId", SqlDbType.UniqueIdentifier).Value = new SqlGuid(parentId);
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

    private int GetTotalLeftUsersCount(SqlGuid id)
    {
        UserData _usersleft = GetLeftChild(id);
        List<UserData> childList = new List<UserData>();
        childList.Add(_usersleft);
        if (childList.Count > 0)
        {
            for (int i = 0; i < childList.Count; i++)
            {
                UserData _userL = GetLeftChild(new SqlGuid(childList[i].UserId));
                UserData _userR = GetRightChild(new SqlGuid(childList[i].UserId));
                if (_userR != null)
                    childList.Add(_userR);
                if (_userL != null)
                    childList.Add(_userL);
            }
        }
        return childList.Count;
    }

    private int GetTotalRightUsersCount(SqlGuid id)
    {
        UserData _usersright = GetRightChild(id);
        List<UserData> childList = new List<UserData>();
        childList.Add(_usersright);
        if (childList.Count > 0)
        {
            for (int i = 0; i < childList.Count; i++)
            {
                UserData _userL = GetLeftChild(new SqlGuid(childList[i].UserId));
                UserData _userR = GetRightChild(new SqlGuid(childList[i].UserId));
                if (_userR != null)
                    childList.Add(_userR);
                if (_userL != null)
                    childList.Add(_userL);
            }
        }
        return childList.Count;
    }
    public UserData GetLeftChild(SqlGuid parentId)
    {
        SqlCommand cmd = new SqlCommand("GetLeftChildByParentId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@parentId", SqlDbType.UniqueIdentifier).Value = parentId;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        UserData user = null;
        while (dr.Read())
        {
            user = new UserData();
            user.UserId = Convert.ToString(dr[0]);
            user.UserName = Convert.ToString(dr[1]);
        }
        cn.Close();
        return user;
    }

    public UserData GetRightChild(SqlGuid parentId)
    {
        SqlCommand cmd = new SqlCommand("GetRightChildByParentId", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@parentId", SqlDbType.UniqueIdentifier).Value = parentId;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        UserData user = null;
        while (dr.Read())
        {
            user = new UserData();
            user.UserId = Convert.ToString(dr[0]);
            user.UserName = Convert.ToString(dr[1]);
        }
        cn.Close();
        return user;
    }
}
