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

public partial class userControls_LeftColumn : System.Web.UI.UserControl
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

    //protected void btnReset_Click(object sender, EventArgs e)
    //{
    //    tbLoginName.Text = "";
    //    tbPassword.Text = "";
    //}

    protected void lbLogin_Click(object sender, EventArgs e)
    {
        string username = tbLoginName.Text;
        string password = tbPassword.Text;
        //password = "admin";


        JayahoIndiaDSTableAdapters.UserDataTableAdapter objta = new JayahoIndiaDSTableAdapters.UserDataTableAdapter();
        JayahoIndiaDS.UserDataDataTable objSvudt = objta.GetUserData(username, password);

        if (objSvudt.Rows.Count == 0)
        {
            lblInvalidError.Visible = true;
        }
        else
        {
            DataRow drUser = objSvudt.Rows[0];

            UserData ud = new UserData();
            ud.UserId = Convert.ToString(drUser["userId"]);
            ud.Name = Convert.ToString(drUser["name"]);
            //ud.Occupation = Convert.ToString(drUser["occupation"]);
            ud.Address = Convert.ToString(drUser["address"]);
            ud.City = Convert.ToString(drUser["City"]);
            ud.State = Convert.ToString(drUser["state"]);
            ud.District = Convert.ToString(drUser["District"]);
            ud.Pincode = Convert.ToString(drUser["pincode"]);
            ud.EmailId = Convert.ToString(drUser["EmailId"]);
            ud.MobileNo = Convert.ToString(drUser["MobileNo"]);
            //ud.DateCreated = Convert.ToString(drUser["DateCreated"]);
            ud.PanNumber = Convert.ToString(drUser["pannumber"]);
            ud.BankAccountNumber = Convert.ToString(drUser["bankaccountnumber"]);
            ud.BankPayCardNumber = Convert.ToString(drUser["bankpaycardnumber"]);

            ud.Password = Convert.ToString(drUser["password"]);
            Session["userdata"] = ud;
            FormsAuthentication.RedirectFromLoginPage(ud.Name,false);
            //Response.Redirect("MyProfile.aspx");
        }

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
    //protected void lbReset_Click(object sender, EventArgs e)
    //{
    //    tbLoginName.Text = "";
    //    tbPassword.Text = "";
    //}


}
