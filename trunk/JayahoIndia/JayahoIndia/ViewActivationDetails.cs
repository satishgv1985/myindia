using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class ViewActivationDetails : Form
    {
        public ViewActivationDetails()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DateTime objFrom =Convert.ToDateTime( dateTimePicker1.Value.ToShortDateString());
            DateTime objTo =Convert.ToDateTime( dateTimePicker2.Value.ToShortDateString());
            
                objTo = objTo.AddDays(1);
            
           JayahoIndiaDataSetTableAdapters.jispGetActivationDetailsTableAdapter objspActivationDetails = new JayahoIndia.JayahoIndiaDataSetTableAdapters.jispGetActivationDetailsTableAdapter();
           JayahoIndiaDataSet.jispGetActivationDetailsDataTable objdataTable = objspActivationDetails.GetData(objFrom, objTo);
           dataGridView1.DataSource = objdataTable;

           


        }

        private void ViewActivationDetails_Load(object sender, EventArgs e)
        {

        }
    }
}