using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class GeneratePayments : Form
    {
        public GeneratePayments()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            JayahoIndiaDataSetTableAdapters.OriginalMLMTableAdapter original = new JayahoIndia.JayahoIndiaDataSetTableAdapters.OriginalMLMTableAdapter();
            JayahoIndiaDataSet.OriginalMLMDataTable objOriginal = original.GetData();
            MessageBox.Show(objOriginal.Rows[0][0].ToString());
        }

        private void buttonNo_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}