using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class ActivatedPins : Form
    {
        public ActivatedPins()
        {
            InitializeComponent();
        }
        public static JayahoIndiaDataSet.PinSalesDataTable populateDataGrid;
        public ActivatedPins(JayahoIndiaDataSet.PinSalesDataTable jid)
        {
            InitializeComponent();
            populateDataGrid = jid;

        }

        

        private void ActivatedPins_Load(object sender, EventArgs e)
        {
            populateDataGrid.Columns.RemoveAt(0);
            dataGridView1.DataSource = populateDataGrid;
            
        }



    }
}