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
            //when user clicks this button user 
            // check how many messages are remaining for that day
            // if less than the limit then display a message that exceeded the limit
            //
        SendMessage objSendMessage = new SendMessage();
        string sentStatus =  objSendMessage.Send(tbTextMessage.Text, tbMobileNumber.Text, Convert.ToString(Session["userid"]));

       
        lblMessage.Visible = true;
        lblMessage.Text = sentStatus;
        tbMobileNumber.Text = "";
        tbTextMessage.Text = "";
    }
}
