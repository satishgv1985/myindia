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
using System.Data.SqlClient;

namespace JayahoIndia
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserData ud = (UserData)Session["userdata"];
                lblCustomerName.Text = ud.Name;
                lblOccupation.Text = Convert.ToString(ud.Occupation);
                lblAddress.Text = ud.Address;
                lblCity.Text = ud.City;
                lblState.Text = ud.State;
                lblDistrict.Text = ud.District;
                lblPinCode.Text = ud.Pincode;
                lblEmailAddress.Text = ud.EmailId;
                lblMobileNo.Text = ud.MobileNo;

                lblPinActivationDate.Text = Convert.ToString(ud.DateCreated);
                lblPanNumber.Text = Convert.ToString(ud.PanNumber);
                lblBankActNo.Text = Convert.ToString(ud.BankAccountNumber);
                lblPayCardNo.Text = Convert.ToString(ud.BankPayCardNumber);

            }
        }
    }

}