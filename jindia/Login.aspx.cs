using System;
using System.Data;
using System.Web.Security;


namespace JayahoIndia
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserLogout.Visible = false;
            lblInvalidError.Visible = false;

            if (!IsPostBack)
            {
                lblUserLogout.Visible = false;

                if (Convert.ToBoolean(Session["logout"]))
                {
                    lblUserLogout.Visible = true;
                    Session.RemoveAll();
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
            password = "admin";


            //JayahoIndiaDSTableAdapters.spValidateUserTableAdapter objta = new JayahoIndiaDSTableAdapters.spValidateUserTableAdapter();
            //JayahoIndiaDS.spValidateUserDataTable objSvudt = objta.GetData(username, password);

            //if (objSvudt.Rows.Count == 0)
            //{
            //    lblInvalidError.Visible = true;
            //}
            //else
            //{
            //    DataRow drUser = objSvudt.Rows[0];

            //    UserData ud = new UserData();
            //    ud.UserId = Convert.ToString(drUser["userId"]);
            //    ud.Name = Convert.ToString(drUser["name"]);
            //    ud.Address = Convert.ToString(drUser["address"]);
            //    ud.Place = Convert.ToString(drUser["place"]);
            //    ud.State = Convert.ToString(drUser["state"]);
            //    ud.Pincode = Convert.ToString(drUser["pincode"]);

            //    ud.PanNumber = Convert.ToString(drUser["pannumber"]);
            //    ud.BankAccountNumber = Convert.ToString(drUser["bankaccountnumber"]);
            //    ud.BankPayCardNumber = Convert.ToString(drUser["bankpaycardnumber"]);
                
                
            //    Session["userdata"] = ud;
            //    //FormsAuthentication.RedirectFromLoginPage(ud.Name,false);
            //    Response.Redirect("MyProfile.aspx");
            //}

            //string userId;
            ////userId= Conveert.ToString(Session["userid"]);
            ////userId = "";
            ////string ConnectionString = ConfigurationSettings.AppSettings["jayahoConnectionString"].ToString();

            ////SqlConnection con = new SqlConnection(ConnectionString);
            //string sqlQuery = string.Format("SELECT userId FROM userdata WHERE username='{0}' and password='{1}' ", DBConfig.Sanitize(username), DBConfig.Sanitize(password));
            ////SqlCommand cmd = new SqlCommand(sqlQuery);

            ////con.Open();
            ////SqlDataReader dr;
            ////dr = cmd.ExecuteReader();

            //Connection c = DBConfig.createSQLConnection();
            //c.ExecuteReader(sqlQuery);

            //if (c.Reader.Read())
            //{
            //    // Session["verified"] = true;
            //    Session["userid"] = Convert.ToString(c.Reader[0]);
            //    Response.Redirect("MyProfile.aspx");
            //}
            //else
            //{
            //    //Session["verified"] = false;
            //    lblInvalidError.Visible = true;
            //}
            //c.CloseReader();
        }
        protected void lbReset_Click(object sender, EventArgs e)
        {
            tbLoginName.Text = "";
            tbPassword.Text = "";
        }
}
}