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

namespace JayahoIndia
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblMessage.Visible = false;
        }
        protected void lbSubmit_Click(object sender, EventArgs e)
        {
            if (cvExistingPassword.IsValid)
            {
                JayahoIndiaDSTableAdapters.UpdateUserDataTableAdapter uudta = new JayahoIndiaDSTableAdapters.UpdateUserDataTableAdapter();
                int status = uudta.jispUpdateUserPassword(tbPassword.Text, new Guid(Convert.ToString(Session["userid"])));
                if (status == 1)
                    lblMessage.Visible = true;
            }
        }
        protected void validateExistingPassword(object sender, ServerValidateEventArgs args)
        {
            lblMessage.Visible = false;

            UserData ud = (UserData)Session["userdata"];
            if (ud.Password != tbExistingPassword.Text)
            {
                args.IsValid = false;
                cvExistingPassword.IsValid = false;
            }
            else
            {
                cvExistingPassword.IsValid = true;
            }


        }
    }
}
