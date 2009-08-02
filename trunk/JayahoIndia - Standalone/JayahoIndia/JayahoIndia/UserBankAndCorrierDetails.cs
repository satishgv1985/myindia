using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Collections;
namespace JayahoIndia
{
    public partial class UserBankAndCorrierDetails : Form
    {
        public UserBankAndCorrierDetails()
        {
            InitializeComponent();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

     
        private void listBoxUsers_SelectedIndexChanged(object sender, EventArgs e)
        {
            groupBox8.Enabled = true;
            if (listBoxUsers.Text != "")
            {
                JayahoIndiaDataSetTableAdapters.UserDetailsTableAdapter objuserdetails = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UserDetailsTableAdapter();
                JayahoIndiaDataSet.UserDetailsDataTable userdetails = objuserdetails.GetData(listBoxUsers.Text);
                textBoxName.Text = userdetails[0].UserName.ToString();
                textBoxAddress.Text = userdetails[0].Address.ToString();
                textBoxPlace.Text = userdetails[0].Place.ToString();
                textBoxState.Text = userdetails[0].State.ToString();
                textBoxPin.Text = userdetails[0].Pincode.ToString();
                textBoxPan.Text = userdetails[0].PANNumber.ToString();
                textBoxAccount.Text = userdetails[0].BankAccountNumber.ToString();
                textBoxPaycard.Text = userdetails[0].BankPayCardNumber.ToString();
                textBoxCourierName.Text = userdetails[0].CourierName.ToString();
                textBoxCourierNumber.Text = userdetails[0].CourierNumber.ToString();
                dispatchStatus.Text = userdetails[0].DispatchStatus.ToString();
                dispatchdate.Value = userdetails[0].DispatchDate;
            }
        }

     
        private void buttonSearchCourier_Click(object sender, EventArgs e)
        {
            string search=null;
            if(radioButtonBeginsCourier.Checked)
              search="begins";
          else if (radioButtonContainsCourier.Checked)
                search="contains";
            
            listBoxUsers.DataSource = null;
            listBoxUsers.Items.Clear();
            JayahoIndiaDataSetTableAdapters.UserCourierDetailsTableAdapter objcour = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UserCourierDetailsTableAdapter();
            JayahoIndiaDataSet.UserCourierDetailsDataTable userdata = objcour.GetData(comboBoxCourierDetails.SelectedValue.ToString(), textBoxUserNameCourierSearch.Text, search);
            listBoxUsers.DisplayMember = "UserName";
            listBoxUsers.DataSource = userdata;
        

        }

         private void buttonUpdate_Click(object sender, EventArgs e)
        {
            string username = listBoxUsers.Text;
            JayahoIndiaDataSetTableAdapters.UpdateUserDetailsTableAdapter objupdatenew = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UpdateUserDetailsTableAdapter();
            JayahoIndiaDataSet.UpdateUserDetailsDataTable userupadte = objupdatenew.GetData(username, textBoxName.Text,
             textBoxAddress.Text, textBoxPlace.Text, textBoxState.Text, textBoxPin.Text, textBoxPan.Text, textBoxPaycard.Text,
             textBoxAccount.Text, textBoxCourierName.Text, textBoxCourierNumber.Text, dispatchdate.Value, dispatchStatus.Text);
            groupBox8.Enabled = false;
        }

        private void buttonbuttonBankDetails_Click(object sender, EventArgs e)
        {
            string search = null;
            int select=0;
            if (radioButtonBeginsBank.Checked)
                search = "begins";
            else if (radioButtonContainsBank.Checked)
                search = "contains";

            if (comboBoxBankDetails.SelectedValue.ToString() == "-1")
                select = 2;
            else
             if (comboBoxBankDetails.SelectedValue.ToString() == "-2")
                    select = 1;
            
            listBoxUsers.DataSource = null;
            listBoxUsers.Items.Clear();
            JayahoIndiaDataSetTableAdapters.UserBankDetailsTableAdapter objbank = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UserBankDetailsTableAdapter();
            JayahoIndiaDataSet.UserBankDetailsDataTable userdata = objbank.GetData(textBoxUserNameBankDetails.Text, search, select);
            listBoxUsers.DisplayMember = "UserName";
            listBoxUsers.DataSource = userdata;
        }

        private void UserBankAndCorrierDetails_Load(object sender, EventArgs e)
        {
            
            comboBoxCourierDetails.Items.Add(new OptionsDto("Not Assigned","-1"));
            comboBoxCourierDetails.Items.Add(new OptionsDto("Pending","-2"));
            comboBoxCourierDetails.Items.Add(new OptionsDto("Delivered But Pending","-3"));
            comboBoxCourierDetails.Items.Add(new OptionsDto("Completed","-4"));

            comboBoxCourierDetails.DisplayMember = "OptionName";
            comboBoxCourierDetails.ValueMember = "OptionValue";
           comboBoxCourierDetails.DataSource =    comboBoxCourierDetails.Items;
            ArrayList objal = new ArrayList();
            objal.Add(new OptionsDto("Assigned","-1"));
            objal.Add(new OptionsDto("Not Assigned","-2"));

            comboBoxBankDetails.DisplayMember = "OptionName";
            comboBoxBankDetails.ValueMember = "OptionValue";
            comboBoxBankDetails.DataSource = objal;
        }
    }

    class OptionsDto
    {

        public OptionsDto(string oname, string ovalue)
        {
            OptionName = oname;
            OptionValue = ovalue;
        }

        private string _optionName;

        public string OptionName
        {
            get { return _optionName; }
            set { _optionName = value; }
        }

        private string _optionValue;

        public string OptionValue
        {
            get { return _optionValue; }
            set { _optionValue = value; }
        }




    }

}