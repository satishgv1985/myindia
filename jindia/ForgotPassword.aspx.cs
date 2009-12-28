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

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbSubmit_Click(object sender, EventArgs e)
    {
        Guid guidPinNo;
        try
        {
            guidPinNo = new Guid(txtPin.Text);
        }
        catch (Exception)
        {
            lblUserMessage.Visible = true;
            lblUserMessage.Text = "Pin is not in the Correct Format";

            return;
        }

        JayahoIndiaDSTableAdapters.UserForgotPasswordTableAdapter ufpTA = new JayahoIndiaDSTableAdapters.UserForgotPasswordTableAdapter();
        JayahoIndiaDS.UserForgotPasswordDataTable ufpDataTable = ufpTA.GetData(guidPinNo, txtEmailID.Text);

        if (ufpDataTable.Rows.Count > 0)
        {
            //send password in mail to that email id
        }
    }
}
