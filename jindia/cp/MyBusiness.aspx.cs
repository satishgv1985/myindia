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

public partial class MyBusiness : System.Web.UI.Page
{
    public static UserData ud;
    public static double disbursedAmount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userdata"] != null)
        {
            ud = (UserData)Session["userdata"];

            JayahoIndiaDSTableAdapters.PaymentsByUserIdTableAdapter puta = new JayahoIndiaDSTableAdapters.PaymentsByUserIdTableAdapter();
            JayahoIndiaDS.PaymentsByUserIdDataTable pudt = puta.GetData(new Guid(ud.UserId));
            gvAmountDisbursedDetails.DataSource = pudt;
            gvAmountDisbursedDetails.DataBind();

            lblPayCardNo.Text = ud.BankPayCardNumber;
        }
    }
    public string LeftCount()
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter qta = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj = qta.jispFindNodeCountById(new Guid(ud.UserId), "left");
        return Convert.ToString(obj);
    }
    public string RightCount()
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter qta = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj = qta.jispFindNodeCountById(new Guid(ud.UserId), "right");
        return Convert.ToString(obj);
    }

    //public string DirectCount()
    //{
    //    int left = Convert.ToInt32(LeftCount());
    //    int right = Convert.ToInt32(LeftCount());
    //    if (left > 0 && right > 0)
    //        return 1;
    //    else return 0;
    //}

    public string LevelCount()
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter qta = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj = qta.jiQueryGetLevelCount(new Guid(ud.UserId));
        if ((Convert.ToInt32(obj)) > 0)
            return Convert.ToString(obj);
        else
            return "0";
    }
    public string AmountEarned()
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter qta = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj = qta.jiQueryGetAmountEarned(new Guid(ud.UserId));
        if ((Convert.ToInt32(obj)) > 0)
            return Convert.ToString(obj);
        else
            return "0";
    }

    public string SMSAmountEarned()
    {
        JayahoIndiaDSTableAdapters.QueriesTableAdapter qta = new JayahoIndiaDSTableAdapters.QueriesTableAdapter();
        Object obj = qta.jiQueryGetUserSMSBalance(new Guid(ud.UserId));
        if ((Convert.ToInt32(obj)) > 0)
            return Convert.ToString(obj);
        else
            return "0";
    }

    public string TotalAmountEarned()
    {
        double binaryAmount = Convert.ToDouble(AmountEarned());
        double smsAmount = Convert.ToDouble(SMSAmountEarned());

        double totalAmount = 0.0;
        if (binaryAmount > 0)
            totalAmount += binaryAmount;
        if (smsAmount > 0)
            totalAmount += smsAmount;

        return Convert.ToString(totalAmount);
    }


}
