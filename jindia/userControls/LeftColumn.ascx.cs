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

    protected void lbLogin_Click(object sender, EventArgs e)
    {
        string username = tbLoginName.Text;
        string password = tbPassword.Text;

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
            ud.UserName = Convert.ToString(drUser["UserName"]);
            ud.Password = Convert.ToString(drUser["password"]);
            ud.UserId = Convert.ToString(drUser["userId"]);
            ud.Name = Convert.ToString(drUser["name"]);
            ud.Occupation = Convert.ToString(drUser["occupation"]);
            ud.Address = Convert.ToString(drUser["address"]);
            ud.City = Convert.ToString(drUser["City"]);
            ud.State = Convert.ToString(drUser["state"]);
            ud.District = Convert.ToString(drUser["District"]);
            ud.Pincode = Convert.ToString(drUser["pincode"]);
            ud.EmailId = Convert.ToString(drUser["EmailId"]);
            ud.MobileNo = Convert.ToString(drUser["MobileNo"]);
            ud.DateCreated = Convert.ToString(drUser["DateCreated"]);
            ud.PanNumber = Convert.ToString(drUser["pannumber"]);
            ud.BankAccountNumber = Convert.ToString(drUser["bankaccountnumber"]);
            ud.BankPayCardNumber = Convert.ToString(drUser["bankpaycardnumber"]);

            
            Session["userdata"] = ud;
            Session["userid"] = ud.UserId;
            
            FormsAuthentication.RedirectFromLoginPage(ud.UserName,false);
            //Response.Redirect("MyProfile.aspx");
        }

    }
    //protected void lbReset_Click(object sender, EventArgs e)
    //{
    //    tbLoginName.Text = "";
    //    tbPassword.Text = "";
    //}


}
