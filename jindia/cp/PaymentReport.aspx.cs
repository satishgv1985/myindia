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


public partial class PaymentReport : System.Web.UI.Page
{
    public static UserData ud;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ud = (UserData)Session["userdata"];
            JayahoIndiaDSTableAdapters.PaymentReportTableAdapter prTA = new JayahoIndiaDSTableAdapters.PaymentReportTableAdapter();
            JayahoIndiaDS.PaymentReportDataTable objPaymentReport = prTA.GetData(new Guid(ud.UserId));
            dgPaymentReport.DataSource = objPaymentReport;
            dgPaymentReport.DataBind();
        }


    }
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
}

