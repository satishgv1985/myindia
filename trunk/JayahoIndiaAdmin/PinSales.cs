using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class PinSales : Form
    {
        public PinSales()
        {
            InitializeComponent();
        }

        private void panel1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            this.groupBox2.Controls.Remove(this.panel2);
            this.groupBox2.Controls.Add(this.panel3);
            panel3.Visible = true;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            panel3.Visible = false;
            panel2.Visible = true;
            this.groupBox2.Controls.Add(this.panel2);
            
        }

        private void buttonSales_Click(object sender, EventArgs e)
        {
            int value=0;
            JayahoIndiaDataSetTableAdapters.PinSalesTableAdapter objpinsales = new JayahoIndia.JayahoIndiaDataSetTableAdapters.PinSalesTableAdapter();
            JayahoIndiaDataSet.PinSalesDataTable i = objpinsales.GetData(Convert.ToInt32(tbPinCount.Text), 
                tbUserName.Text,
                tbCustName.Text,
                tbEmailId.Text, 
                tbPhoneNumber.Text,
                tbAddress.Text, 
                tbPaymentMode.Text,
                tbReferenceNumber.Text,
                tbBankTransactionNumber.Text,
                Convert.ToDecimal(tbAmountPaid.Text),
                new Guid("00000000-0000-0000-0000-000000000000"));

            if (i.Rows.Count == 1 && i.Rows[0][0].ToString() == "00000000-0000-0000-0000-000000000000") MessageBox.Show("Please Ask Administrator To Generate Pins");
            else
            {
                MessageBox.Show("Pins Successfully Activated");
                ActivatedPins objActivatePins = new ActivatedPins(i);
                objActivatePins.ShowDialog();
                this.Close();
            }
            


        }
    }
}