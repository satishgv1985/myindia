using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

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
                textBoxState.Text = userdetails[0].State.ToString();
                textBoxPin.Text = userdetails[0].Pincode.ToString();
                textBoxPan.Text = userdetails[0].PANNumber.ToString();
                textBoxAccount.Text = userdetails[0].BankAccountNumber.ToString();
                textBoxPaycard.Text = userdetails[0].BankPayCardNumber.ToString();
                textBoxCourierName.Text = userdetails[0].CourierName.ToString();
                textBoxCourierNumber.Text = userdetails[0].CourierNumber.ToString();
                dispatchStatus.Text = userdetails[0].DispatchStatus.ToString();
                try
                {
                    dispatchdate.Value = userdetails[0].DispatchDate;
                }
                catch (Exception)
                {

                    dispatchdate.Value = DateTime.Now;
                }
            }
        }


        private void buttonSearchCourier_Click(object sender, EventArgs e)
        {
            string search = null;
            if (radioButtonBeginsCourier.Checked)
                search = "begins";
            else if (radioButtonContainsCourier.Checked)
                search = "contains";
            string selectedValue = "";
            switch (comboBoxCourierDetails.SelectedIndex)
            {

                case 0:
                    selectedValue = "-1";
                    break;
                case 1: selectedValue = "0";
                    break;
                case 2: selectedValue = "1";
                    break;
                case 3: selectedValue = "2";
                    break;
                default:
                    break;
            }
            listBoxUsers.DataSource = null;
            listBoxUsers.Items.Clear();
            JayahoIndiaDataSetTableAdapters.UserCourierDetailsTableAdapter objcour = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UserCourierDetailsTableAdapter();
            JayahoIndiaDataSet.UserCourierDetailsDataTable userdata = objcour.GetData(selectedValue, textBoxUserNameCourierSearch.Text, search);
            listBoxUsers.DisplayMember = "UserName";
            listBoxUsers.DataSource = userdata;


        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string username = listBoxUsers.Text;
                JayahoIndiaDataSetTableAdapters.UpdateUserDetailsTableAdapter objupdatenew = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UpdateUserDetailsTableAdapter();
                int result  = objupdatenew.Update(listBoxUsers.Text,
                    textBoxName.Text,
                    textBoxAddress.Text,
                    textBoxState.Text,
                    textBoxPin.Text,
                    textBoxPaycard.Text,
                 textBoxPaycard.Text,
                 textBoxAccount.Text,
                 textBoxCourierName.Text,
                 textBoxCourierNumber.Text,
                 dispatchdate.Value,
                 getDispatchStatus());
                
                MessageBox.Show("Updation Successful");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Updation Failed" + ex.Message);
            }
        }

        private string getDispatchStatus()
        {
            switch (comboBoxCourierDetails.SelectedItem.ToString())
            {

                case "Pending":
                    return "0";
                    break;
                case "Delivered From Office But Pending":
                    return "1";
                    break;
                case "Completed":
                    return "2";
                    break;

                default:
                    break;
            }
            return "";
        }

        private void buttonbuttonBankDetails_Click(object sender, EventArgs e)
        {
            string search = null;
            int select = 0;
            if (radioButtonBeginsBank.Checked)
                search = "begins";
            else if (radioButtonContainsBank.Checked)
                search = "contains";

            if (comboBoxBankDetails.Text == "Account Not Assigned")
                select = 1;
            else
                if (comboBoxBankDetails.Text == "Account Assigned")
                    select = 2;

            listBoxUsers.DataSource = null;
            listBoxUsers.Items.Clear();
            JayahoIndiaDataSetTableAdapters.UserBankDetailsTableAdapter objbank = new JayahoIndia.JayahoIndiaDataSetTableAdapters.UserBankDetailsTableAdapter();
            JayahoIndiaDataSet.UserBankDetailsDataTable userdata = objbank.GetData(textBoxUserNameBankDetails.Text, search, select);
            listBoxUsers.DisplayMember = "UserName";
            listBoxUsers.DataSource = userdata;
        }

        private void comboBoxCourierDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}