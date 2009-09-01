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

public partial class SendSMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbSubmit_Click(object sender, EventArgs e)
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter queryTA = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj=queryTA.jispUserSMSUpdation(new Guid(Convert.ToString(Session["userid"])), tbMobileNumber.Text, tbTextMessage.Text);
        lblMessage.Visible = true;
        tbMobileNumber.Text = "";
        tbTextMessage.Text = "";
    }
}
