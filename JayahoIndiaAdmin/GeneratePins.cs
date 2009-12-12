using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using JayahoIndia.JayahoIndiaDataSetTableAdapters;
namespace JayahoIndia
{
    public partial class GeneratePins : Form
    {
        public GeneratePins()
        {
            InitializeComponent();
        }

        private void buttonGeneratePins_Click(object sender, EventArgs e)
        {
            try
            {
                int pinscount = Convert.ToInt32(pinCount.Text);
                PinsTableAdapter objpta = new PinsTableAdapter();
                objpta.Insert(pinscount);
                MessageBox.Show("Pins Generated Successfully");
                this.Close();
            }
            catch (Exception)
            {

                MessageBox.Show("Pins Generation Failed");  
            }
           

        }

        private void GeneratePins_Load(object sender, EventArgs e)
        {

        }

    }
}