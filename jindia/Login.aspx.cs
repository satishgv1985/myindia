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

            if (!IsPostBack)
            {
                lblUserLogout.Visible = false;

                if (Convert.ToBoolean(Session["logout"]))
                {
                    lblUserLogout.Visible = true;
                    Session.RemoveAll();
                }
                else
                {
                    lblUserLogout.Text = "Session Expired. Please Login again";
                    lblUserLogout.Visible = true;
                }
            }
        }


        //        protected void btnReset_Click(object sender, EventArgs e)
        //        {
        //            tbLoginName.Text = "";
        //            tbPassword.Text = "";
        //        }


        //        protected void lbLogin_Click(object sender, EventArgs e)
        //        {
        //            string username = tbLoginName.Text;
        //            string password = tbPassword.Text;
        //            password = "admin";



        //        }
        //        protected void lbReset_Click(object sender, EventArgs e)
        //        {
        //            tbLoginName.Text = "";
        //            tbPassword.Text = "";
        //        }
        //}
    }
}