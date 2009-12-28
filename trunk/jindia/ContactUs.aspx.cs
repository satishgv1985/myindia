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
using System.Net.Mail;
using System.Net;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitMessage_Click(object sender, EventArgs e)
    {
        string from = "noreply@jayahoindia.com";
        string to = "admin@jayahoindia.com";
        string subject = tbSubject.Text + "< " + tbYourName.Text + " has sent a Message.>";

        string body = "<br />" + tbMessage.Text + "<br/><br />His Contact No:" + tbPhoneNo.Text + "<br />His Email Id:"+tbYourEmail.Text;
        string replyTo = tbYourEmail.Text;


        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        MailAddress fromAddress = new MailAddress(from, tbYourName.Text);
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

        //tbMessage.Text = "";
        //tbPhoneNo.Text = "";
        //tbSubject.Text = "";
        //tbYourEmail.Text = "";
        //tbYourName.Text = "";
    }
}
