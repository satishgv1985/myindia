using System;
using System.Web.Security;

namespace JayahoIndia
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                UserData ud =(UserData) Session["userdata"];
                lblName.Text = ud.Name;
            }
        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {
            //FormsAuthentication.SignOut();
            Session["logout"] = true;
            Response.Redirect("Login.aspx");
        }
}
}