using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {

        }

        public string showWindow()
        {

            this.ShowDialog();
            return result;
        
        
        }

        public static string result = "";

        private void buttonLogin_Click(object sender, EventArgs e)
        {
            if (textBoxUserName.Text == "admin" && textBoxPassword.Text == "admin")
                result = "admin";
            if (textBoxUserName.Text == "dmnreddy" && textBoxPassword.Text == "pepsi123")
                result = "staff";
            this.Close();
        }


    }
}