using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Configuration;
using System.Net;
using System.IO;
/// <summary>
/// Summary description for SendMessage
/// </summary>
public class SendMessage
{
    ////      <add key="MessageServerURL" value="http://202.71.152.238/desk2web/SendSMS.aspx"></add>
    ////    <add key="UserName" value="sisms"/>
    ////    <add key="Password" value="si123"/>
    ////    <add key="SenderID" value="INFINI"/>
    ////    <add key="CDMAHeader" value="9000000000"/>

    ////http://202.71.152.238/desk2web/SendSMS.aspx?UserName=sisms&password=sisms&MobileNo=9844188697&SenderID=INFINI&CDMAHeader=9000000000&Message=hi This is a testmessage&isFlash=false

    //    http://202.71.152.238/desk2web/CreditCheck.aspx?Username=xxxx&Password=xxxx

    public const string MESSAGE = "#MESSAGE#";
    public const string MOBILENUMBER = "#MOBILENUMBER#";
    public string url = "";
    public static string MessageGUID = "";
    public SendMessage()
    {
        url = ConfigurationManager.AppSettings["MessageServerURL"] + "?";
        url += "UserName=" + ConfigurationManager.AppSettings["UserName"] + "&";
        url += "password=" + ConfigurationManager.AppSettings["Password"] + "&";
        url += "MobileNo=" + MOBILENUMBER + "&";
        url += "SenderID=" + ConfigurationManager.AppSettings["SenderID"] + "&";
        url += "CDMAHeader=" + ConfigurationManager.AppSettings["CDMAHeader"] + "&";
        url += "Message=" + MESSAGE + "&";
        url += "isFlash=false";

    }

    public string Send(string message, string mobileNumber, string userId)
    {
        try
        {
            url = url.Replace(MESSAGE, message);
            url = url.Replace(MOBILENUMBER, mobileNumber);
            WebRequest objWebRequest = WebRequest.Create(url);
            WebResponse objWebResponse = objWebRequest.GetResponse();
            StreamReader objResponse = new StreamReader(objWebResponse.GetResponseStream());
            string responseString = objResponse.ReadToEnd();
            string result = ProcessResponse(responseString);
            if (result == "Sent Successfully")
            {
                JayahoIndiaDSTableAdapters.QueriesTableAdapter queryTA = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
                Object obj = queryTA.jispUserSMSUpdation(new Guid(userId), mobileNumber+"|"+MessageGUID, message);
            }
        }
        catch (Exception e)
        {
           // return "Sent Failed";
        }
        return "Sent Failed";
    }

    private string ProcessResponse(string responseString)
    {
        if (responseString.Contains("Invalid UserName or Password"))
            return "Send Failed";
        else if (responseString.Contains("GUID="))
        {
            int startPosition = responseString.IndexOf("GUID=") + 6;
            int length = responseString.IndexOf("SUBMITDATE") - startPosition;
            MessageGUID = responseString.Substring(startPosition, length - 2).Trim();
            return "Sent Successfully";
            // getMessageDeliveryStatus(messageId);
        }
        return "Send Failed";
    }

    private string getMessageDeliveryStatus(string messageId)
    {
        string muri = "http://202.71.152.238/desk2web/GetReports.aspx?MessageID=" + messageId;
        WebRequest objWebRequest = WebRequest.Create(muri);
        WebResponse objWebResponse = objWebRequest.GetResponse();
        StreamReader objResponse = new StreamReader(objWebResponse.GetResponseStream());
        string responseString = objResponse.ReadToEnd();

        return (ProcessDeliveryResponse(responseString));
        //http://202.71.152.238/desk2web/GetReports.aspx?MessageID=6178050
    }

    private string ProcessDeliveryResponse(string responseString)
    {
        string result = "";
        if (responseString.Contains("8448"))
        {
            result = "Delivered";
        }
        else if (responseString.Contains("8449"))
        {
            result = "Failed";
        }
        else if (responseString.Contains("8450"))
        {
            result = "Invalid";
        }
        else if (responseString.Contains("Code=0"))
        {
            result = "Request Failed";
        }
        else if (responseString.Trim() == string.Empty)
        {
            result = "Reports Pending";
        }
        return result;

    }

}
