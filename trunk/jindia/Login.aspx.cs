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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserLogout.Visible = false;
        lblInvalidError.Visible = false;

        if (!IsPostBack)
        {
            lblUserLogout.Visible = false;

            if (Convert.ToBoolean(Session["IsUserLogout"]))
            {
                lblUserLogout.Visible = true;
            }
        }
    }
    //protected void btnLogin_Click(object sender, EventArgs e)
    //{
    //    bool success = true;// = userLoginValidation(tbLoginName.Text, tbPassword.Text);
    //    if (success)
    //    {
    //        //Group userGroupDetails = GroupBO.GetGroupDetailsByUserId(Convert.ToInt32(Session["UserId"]));
    //        //if (userGroupDetails.GroupName.ToLower() == "admin")
    //        //{
    //        //    Session["IsAdminUser"] = true;
    //        //}
    //        //else
    //        //{
    //        //    Session["IsAdminUser"] = false;
    //        //}
    //        //Response.Redirect("Default.aspx");
    //        Server.Transfer("Default.aspx");
    //    }
    //    else
    //    {
    //        lblInvalidError.Visible = true;
    //        Session.RemoveAll();
    //    }
    //}

    //private bool userLoginValidation(string loginName, string password)
    //{
    //    string passwordHash = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");

    //    //re change this to the customized code
    //    //User userLogged = UserBO.ValidateUserLogin(DBClass.Sanitize(loginName), DBClass.Sanitize(passwordHash));

    //    //if (userLogged.ValidUser)
    //    //{
    //    //    Session["UserId"] = userLogged.UserId;
    //    //    Session["UserName"] = userLogged.UserName;
    //    //    Session["UserFName"] = userLogged.UserFName;
    //    //    Session["UserLName"] = userLogged.UserLName;
    //    //}

    //    //return userLogged.ValidUser;
    //}

    protected void btnReset_Click(object sender, EventArgs e)
    {
        tbLoginName.Text = "";
        tbPassword.Text = "";
    }

    //public static DataTable ValidateUserLogin(User userDetails)
    //{
    //    string errormsg = null;
    //    DbCommand cmd;
    //    DataTable dt = new DataTable();

    //    try
    //    {
    //        cmd = DBClass.GetCommand();
    //        cmd.Connection = ConnectionClass.GetConnection();
    //        cmd.CommandText = "uspValidateUser";
    //        cmd.CommandType = CommandType.StoredProcedure;
    //        SqlParameter param = new SqlParameter();
    //        param.SqlDbType = SqlDbType.VarChar;
    //        param.ParameterName = "@userName";
    //        param.Direction = ParameterDirection.Input;
    //        param.Value = userDetails.UserName;
    //        cmd.Parameters.Add(param);

    //        SqlParameter param2 = new SqlParameter();
    //        param2.SqlDbType = SqlDbType.VarChar;
    //        param2.ParameterName = "@password";
    //        param2.Direction = ParameterDirection.Input;
    //        param2.Value = userDetails.Password;
    //        cmd.Parameters.Add(param2);

    //        dt = DBClass.GetTable(ref cmd, out errormsg);
    //    }
    //    catch (Exception ex)
    //    {
    //        ex.Message.ToString();
    //    }
    //    return dt;
    //}
    protected void lbLogin_Click(object sender, EventArgs e)
    {
        string username = tbLoginName.Text;
        string password = tbPassword.Text;

        password = "21232F297A57A5A743894A0E4A801FC3";




        string userId;
        //userId= Conveert.ToString(Session["userid"]);
        userId = "";
        string ConnectionString = ConfigurationSettings.AppSettings["jayahoConnectionString"].ToString();

        SqlConnection con = new SqlConnection(ConnectionString);
        string sqlQuery = string.Format("SELECT userId FROM users WHERE username='{0}' and password='{1} ", username, password);
        SqlCommand cmd = new SqlCommand(sqlQuery);

        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["verified"] = true;
            Session["userid"] = dr[0];
            Response.Redirect("MyProfile.aspx");
        }
        else
        {
            Session["verified"] = false;
            lblInvalidError.Visible = true;
        }
        con.Close();

    }
}
