using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class PendingPaymentsToUsers : Form
    {
        public PendingPaymentsToUsers()
        {
            InitializeComponent();
        }

        private void PendingPaymentsToUsers_Load(object sender, EventArgs e)
        {
            MessageBox.Show("here we need to show the user name, bank account number , pay card number here in the grid");
        }
    }
}