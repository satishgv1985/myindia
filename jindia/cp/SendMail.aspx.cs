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
using System.Net.Mail;
using System.Net;

public partial class HelpDesk : System.Web.UI.Page
{
    public static UserData ud;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userdata"] != null)
                ud = (UserData)Session["userdata"];
        }

    }
    protected void btnSubmitMessage_Click(object sender, EventArgs e)
    {
        bool typeofMail = rbAdvertisements.Checked;
        string subject = "Regarding Advertisements";
        if (!typeofMail)
        {
            typeofMail = rbBusiness.Checked;
            subject = "Regarding Business";
        }
        if (!typeofMail)
        {
            typeofMail = rbEnquiry.Checked;
            subject = "Regarding an Enquiry";
        }
        if (!typeofMail)
        {
            typeofMail = rbIncentives.Checked;
            subject = "Regarding Incentive";
        }
        if (!typeofMail)
        {
            typeofMail = rbOther.Checked;
            subject = "Regarding Other";
        }
        if (!typeofMail)
        {
            typeofMail = rbPayCards.Checked;
            subject = "Regarding Pay Cards";
        }

        string from = "noreply@jayahoindia.com";
        string to = "admin@jayahoindia.com";
        subject = ud.UserName + "(user name)" + " has sent a Message." + "< " + subject + " >";
        string body = "<br />" + tbMessage.Text + "<br/><br />His Contact No:" + tbContactNo.Text + "<br />His Email Id:" + tbEmailId.Text; ;
        string replyTo = tbEmailId.Text;


        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        MailAddress fromAddress = new MailAddress(from, ud.UserName);
        MailAddress toAddress = new MailAddress(to);

        MailAddress replyToAddress = new MailAddress(replyTo);

        mail.Subject = subject;
        mail.Body = body;
        mail.IsBodyHtml = true;
        mail.From = fromAddress;
        mail.To.Add(toAddress);
        mail.ReplyTo = replyToAddress;



        System.Net.Mail.SmtpClient objSmtpClient = new System.Net.Mail.SmtpClient();
        objSmtpClient.Host = "smtp.gmail.com";
        objSmtpClient.Port = 587;
        objSmtpClient.EnableSsl = true;
        objSmtpClient.Credentials = new NetworkCredential("noreply@jayahoindia.com", "indianoreply");
        try
        {
            objSmtpClient.Send(mail);
        }
        catch (Exception exp)
        {
            lblMessage.Text = "Problem in Sending Mail.";
            lblMessage.Text += exp.Message;
        }

        lblMessage.Visible = true;

        //tbEmailId.Text = "";
        //tbContactNo.Text = "";
        //tbMessage.Text = "";

    }
}
