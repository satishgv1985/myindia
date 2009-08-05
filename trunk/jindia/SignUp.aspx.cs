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

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbName.Text = "Kumar";
            tbOccupation.Text = "woking";
            tbAddress.Text = "some address";
            tbCity.Text = "Bangalore";
            ddlState.SelectedIndex = 2;
            tbDistrict.Text = "district";
            tbPincode.Text = "560078";
            tbEmailId.Text = "mailid@gmail.com";
            tbMobileNo.Text = "9989998989";
            tbUserNameLogin.Text = "user1";
            //tbPassword.Text = "sample";
            //tbReeneterPassword.Text = "sample";
            tbSecretQuestion.Text = "my secret question";
            tbSecretAnswer.Text = "answer to above";
            tbNominee.Text = "name2";
            tbNomineeRelation.Text = "mother";

            lblUserMessage.Visible = false;
        }


    }
    protected void lbSubmit_Click(object sender, EventArgs e)
    {
        //UserData udNewUser = new UserData();
        //udNewUser.Name = tbName.Text;
        //udNewUser.Address = tbAddress.Text;
        //udNewUser.City = tbCity.Text;
        //udNewUser.State = ddlState.SelectedValue;
        //udNewUser.District = tbDistrict.Text;
        //udNewUser.Pincode = tbPincode.Text;
        //udNewUser.EmailId = tbEmailId.Text;
        //udNewUser.MobileNo = tbMobileNo.Text;

        //udNewUser.UserName = tbUserNameLogin.Text;
        //udNewUser.Password = tbPassword.Text;
        //udNewUser.SecretQuestion = tbSecretQuestion.Text;
        //udNewUser.SecretAnswer = tbSecretAnswer.Text;
        //udNewUser.NomineeName = tbNominee.Text;
        //udNewUser.NomineeRelation = tbNomineeRelation.Text;

        JayahoIndiaDSTableAdapters.UserDataTableAdapter udta = new JayahoIndiaDSTableAdapters.UserDataTableAdapter();
        //JayahoIndiaDS.UserDataDataTable uddtUserIntroducerCheck = udta.GetUserDataTableByUserName(tbIntrodueId.Text);
        //JayahoIndiaDS.UserDataDataTable uddtUserCheck = udta.GetUserDataTableByUserName(tbUserNameLogin.Text);

        //if (uddtUserIntroducerCheck.Rows.Count == 0)
        //{
        //    //Error user name already in use
        //    lblUserMessage.Visible = true;
        //    lblUserMessage.Text = "Introducer Does not exists. Please Check Introducer User Name";
        //    tbIntrodueId.Text = "";
        //    tbIntrodueId.BackColor = System.Drawing.Color.LightSkyBlue;
        //    return;
        //}

        
        //if (uddtUserCheck.Rows.Count > 0)
        //{
        //    //Error user name already in use
        //    lblUserMessage.Visible = true;
        //    lblUserMessage.Text = "User Name already exists. Please Use Different Name";
        //    tbUserNameLogin.Text = "";
        //    tbUserNameLogin.BackColor = System.Drawing.Color.LightSkyBlue;
        //    return;
        //}
        //int rowsAffected = udta.Insert(tbUserNameLogin.Text, tbPassword.Text, tbName.Text, tbAddress.Text, tbCity.Text, ddlState.SelectedValue, tbDistrict.Text, tbPincode.Text, tbMobileNo.Text, tbEmailId.Text, tbNominee.Text, tbNomineeRelation.Text, tbSecretQuestion.Text, tbSecretAnswer.Text);
        //if (rowsAffected == 1)
        //{
        //    lblUserMessage.Visible = true;
        //    lblUserMessage.Text = "User Added Successfully. You Can login from Home Page";
        //}

        Guid guidPinNo;
        try
        {
            guidPinNo = new Guid(tbPinNo.Text);
        }
        catch (Exception)
        {
            lblUserMessage.Visible = true;
            lblUserMessage.Text = "Pin is not in the Correct Format";
            
            return;
        }
         

        //JayahoIndiaDS.UserDataDataTable uddtInsert = udta.InsertUserData( new Guid(tbPinNo.Text),tbUserNameLogin.Text, tbIntrodueId.Text, ddlPosition.SelectedValue,tbPassword.Text,  tbName.Text, tbAddress.Text, tbCity.Text, ddlState.SelectedValue, tbDistrict.Text, tbPincode.Text, tbMobileNo.Text, tbEmailId.Text, tbNominee.Text, tbNomineeRelation.Text, tbSecretQuestion.Text, tbSecretAnswer.Text);
        //lblUserMessage.Visible = true;
        //lblUserMessage.Text = Convert.ToString(uddtInsert.Rows[0][0]);

        JayahoIndiaDSTableAdapters.InsertUserTableAdapter iuta = new JayahoIndiaDSTableAdapters.InsertUserTableAdapter();
        JayahoIndiaDS.InsertUserDataTable iudt = iuta.GetDataFinal(new Guid(tbPinNo.Text), tbUserNameLogin.Text, tbIntrodueId.Text, ddlPosition.SelectedValue, tbPassword.Text, tbName.Text, tbAddress.Text, tbCity.Text, ddlState.SelectedValue, tbDistrict.Text, tbPincode.Text, tbMobileNo.Text, tbEmailId.Text, tbNominee.Text, tbNomineeRelation.Text, tbSecretQuestion.Text, tbSecretAnswer.Text);

        lblUserMessage.Visible = true;
        lblUserMessage.Text = Convert.ToString(iudt.Rows[0][0]);
    }
}
