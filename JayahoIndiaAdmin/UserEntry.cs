using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class UserEntry : Form
    {
        public UserEntry()
        {
            InitializeComponent();
        }

        private void UserEntry_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            JayahoIndiaDataSetTableAdapters.InsertUserTableAdapter objInsertUser = new JayahoIndiaDataSetTableAdapters.InsertUserTableAdapter();

            JayahoIndiaDataSet.InsertUserDataTable  objiu = objInsertUser.GetData(new Guid(textBoxUserPin.Text), textBoxusername.Text, textBoxParentUsername.Text, comboBoxJoinAt.SelectedItem.ToString(), "password", textBoxusername.Text, "Bangalore", "AP", "", "Atp", "560078", "9986430161", "dmnreddy@gmail.com", "test relation", "brother", "pet name", "dog");
                  
            MessageBox.Show(Convert.ToString(objiu.Rows[0][0]));
        }

        private void panel1_Click(object sender, EventArgs e)
        {
            
        }
    }
}