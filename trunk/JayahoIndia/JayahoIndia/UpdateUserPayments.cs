using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class UpdateUserPayments : Form
    {
        public UpdateUserPayments()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void UpdateUserPayments_Load(object sender, EventArgs e)
        {
            MessageBox.Show("here we need to show the user name, bank account number , pay card number and amount paying  here in the grid");

            MessageBox.Show("so on clicking of the update button it should be upadated into the database");

        }
    }
}