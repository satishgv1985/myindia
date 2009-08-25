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

        }
        protected void lbSubmit_Click(object sender, EventArgs e)
        {
            if (cvExistingPassword.IsValid)
            {

            }
        }
        protected void validateExistingPassword(object sender, ServerValidateEventArgs args)
        {
            UserData ud = (UserData)Session["userdata"];
            if (ud.Password != txtExistingPassword.Text)
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
