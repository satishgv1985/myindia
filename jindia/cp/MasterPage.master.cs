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
                if (Session["userdata"] == null)
                    Response.Redirect("../Login.aspx");

                UserData ud =(UserData) Session["userdata"];
                lblName.Text = ud.Name;
                hlTreeView.NavigateUrl = "TreeView.aspx?ID="+ud.UserId;
            }
        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["logout"] = true;
            Response.Redirect("../Login.aspx");
        }
}
}