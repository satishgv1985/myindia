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


public partial class EditProfile : System.Web.UI.Page
{
    public static UserData ud;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMessage.Visible = false;

            if(Session["userdata"]!=null)
                ud = (UserData)Session["userdata"];
            lblCustomerName.Text = ud.Name;
            tbOccupation.Text = ud.Occupation;
            tbAddress.Text = ud.Address;
            tbCity.Text = ud.City;
            ddlState.SelectedValue = ud.State;
            tbDistrict.Text = ud.District;
            tbPincode.Text = ud.Pincode;
            tbEmailId.Text = ud.EmailId;
            tbMobileNo.Text = ud.MobileNo;
        }
    }
    protected void lbSubmit_Click(object sender, EventArgs e)
    {
        JayahoIndiaDSTableAdapters.UpdateUserDataTableAdapter uudta = new JayahoIndiaDSTableAdapters.UpdateUserDataTableAdapter();
        JayahoIndiaDS.UpdateUserDataDataTable updateUserDataDataTable = uudta.GetData(tbOccupation.Text, tbAddress.Text, tbCity.Text, ddlState.SelectedValue, tbDistrict.Text, tbPincode.Text, tbEmailId.Text, tbMobileNo.Text, new Guid(ud.UserId));
        lblMessage.Visible = true;

        JayahoIndiaDSTableAdapters.UserDataTableAdapter objta = new JayahoIndiaDSTableAdapters.UserDataTableAdapter();
        JayahoIndiaDS.UserDataDataTable objSvudt = objta.GetUserData(ud.UserName, ud.Password);

        //remove from session before updating the data
        Session.Remove("userdata");

        if (objSvudt.Rows.Count == 0)
        {
            
        }
        else
        {
            DataRow drUser = objSvudt.Rows[0];

            ud = new UserData();
            ud.UserName = Convert.ToString(drUser["UserName"]);
            ud.Password = Convert.ToString(drUser["password"]);
            ud.UserId = Convert.ToString(drUser["userId"]);
            ud.Name = Convert.ToString(drUser["name"]);
            ud.Occupation = Convert.ToString(drUser["occupation"]);
            ud.Address = Convert.ToString(drUser["address"]);
            ud.City = Convert.ToString(drUser["City"]);
            ud.State = Convert.ToString(drUser["state"]);
            ud.District = Convert.ToString(drUser["District"]);
            ud.Pincode = Convert.ToString(drUser["pincode"]);
            ud.EmailId = Convert.ToString(drUser["EmailId"]);
            ud.MobileNo = Convert.ToString(drUser["MobileNo"]);
            ud.DateCreated = Convert.ToString(drUser["DateCreated"]);
            ud.PanNumber = Convert.ToString(drUser["pannumber"]);
            ud.BankAccountNumber = Convert.ToString(drUser["bankaccountnumber"]);
            ud.BankPayCardNumber = Convert.ToString(drUser["bankpaycardnumber"]);

            Session["userdata"] = ud;
           
            //Response.Redirect("MyProfile.aspx");
        }

    }
}
