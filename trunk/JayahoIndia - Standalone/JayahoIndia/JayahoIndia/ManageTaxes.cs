using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class ManageTaxes : Form
    {
        public ManageTaxes()
        {
            InitializeComponent();
        }

        private void ManageTaxes_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'jayahoIndiaDataSet.Tax' table. You can move, or remove it, as needed.
            this.taxTableAdapter.Fill(this.jayahoIndiaDataSet.Tax);

        }

        private void taxBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

         //   taxTableAdapter.Update(jayahoIndiaDataSet.Tax);
            
        }

        private void comboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
         DataRow[] dr= jayahoIndiaDataSet.Tax.Select("tax_id=" + Convert.ToInt32(comboBoxEdit.SelectedValue));
         editName.Text =  dr[0].ItemArray[1].ToString();
         editValue1.Text = dr[0].ItemArray[2].ToString();
        }

        private void comboBoxDelete_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataRow[] dr = jayahoIndiaDataSet.Tax.Select("tax_id=" + Convert.ToInt32(comboBoxDelete.SelectedValue));
            
            DeleteValue.Text = dr[0].ItemArray[2].ToString();
        }

        private void buttonEdit_Click(object sender, EventArgs e)
        {


            try
            {
                DataRow[] dr = jayahoIndiaDataSet.Tax.Select("tax_id=" + Convert.ToInt32(comboBoxEdit.SelectedValue));
                TextBox objtb = (TextBox)this.groupBox1.Controls["editValue1"];
                TextBox objtb1 = (TextBox)this.groupBox1.Controls["editName"];
                string s = ""+objtb1.Text;
                string s1 = "" + objtb.Text;

                dr[0][1] = s;
                dr[0][2] = s1;
                taxTableAdapter.Update(dr[0]);
                MessageBox.Show("Updated Successfully");
                this.Close();
            }
            catch (Exception ee)
            {
                MessageBox.Show("Enter Valid Data");
            
            }
        }

        private void buttonDelete_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow[] dr = jayahoIndiaDataSet.Tax.Select("tax_id=" + Convert.ToInt32(comboBoxEdit.SelectedValue));
                MessageBox.Show("Deleted Successfully");
                taxTableAdapter.Delete(Convert.ToInt32(dr[0][0].ToString()), dr[0][1].ToString(), Convert.ToDouble(dr[0][2].ToString()));
                this.Close();
            }
            catch (Exception ee)
            {
                MessageBox.Show("Enter Valid Data");

            }
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            try
            {
                taxTableAdapter.Insert(AddName.Text, Convert.ToDouble(AddValue.Text));
                MessageBox.Show("Tax Added Successfully");
                this.Close();
            }
            catch (Exception ee)
            {
                MessageBox.Show("Enter Valid Data");
            }
        }
    }
}