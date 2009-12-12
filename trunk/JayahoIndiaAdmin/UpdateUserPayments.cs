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
            // TODO: This line of code loads data into the 'jayahoIndiaDataSet.GetUserPayments' table. You can move, or remove it, as needed.
            // this.getUserPaymentsTableAdapter.Fill(this.jayahoIndiaDataSet.GetUserPayments);
            JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter objget = new JayahoIndia.JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter();
            JayahoIndiaDataSet.GetUserPaymentsDataTable objgupdt = objget.GetData();

            dataGridView1.DataSource = objgupdt;



            //MessageBox.Show("here we need to show the user name, bank account number , pay card number and amount paying  here in the grid");

            // MessageBox.Show("so on clicking of the update button it should be upadated into the database");

        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
            int error = 0;
            JayahoIndiaDataSetTableAdapters.UpdateSettledPaymentsTableAdapter updateSettlement = new JayahoIndiaDataSetTableAdapters.UpdateSettledPaymentsTableAdapter();
            for (int i = 0; i < dataGridView1.Rows.Count;i++)
            {

                JayahoIndiaDataSet.UpdateSettledPaymentsDataTable dtUpdate = updateSettlement.GetData(new Guid(Convert.ToString(dataGridView1.Rows[i].Cells[0].Value)), Convert.ToDecimal(dataGridView1.Rows[i].Cells[5].Value));
                if(dtUpdate.Rows[0][0].ToString().Contains("Failed"))
                {
                    error = 1;
                    MessageBox.Show(dtUpdate.Rows[0][0].ToString()+"for "+Convert.ToString(dataGridView1.Rows[i].Cells[1].Value));
                }
            }
            if (error == 0)
                MessageBox.Show("Payments Updated Successfully");
        }
    }
}