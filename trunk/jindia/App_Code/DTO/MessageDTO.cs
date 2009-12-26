using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for MessageDTO
/// </summary>
/// 
[Serializable]
public class MessageDTO
{
    
    public MessageDTO()
    {
    }
        private string _message;

	public string Message
	{
		get { return _message;}
		set { _message = value;}
	}

    private string _mobileNumber;

	public string MobileNumber
	{
		get { return _mobileNumber;}
		set { _mobileNumber = value;}
	}

    private string _uri;

    public string URI
    {
        get { return _uri; }
        set { _uri = value; }
    }

    private int myVar;

    public int MyProperty
    {
        get { return myVar; }
        set { myVar = value; }
    }
    private string _userId;

    public string UserId
    {
        get { return _userId; }
        set { _userId = value; }
    }
    private string _password;

    public string Password
    {
        get { return _password; }
        set { _password = value; }
    }
    private string _senderID;

    public string SenderID
    {
        get { return _senderID; }
        set { _senderID = value; }
    }
    private string _CDMAHeader;

    public string CDMAHeader
    {
        get { return _CDMAHeader; }
        set { _CDMAHeader = value; }
    }
     
    
}
