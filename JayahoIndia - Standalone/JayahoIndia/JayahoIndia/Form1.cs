using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace JayahoIndia
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void panel1_Click(object sender, EventArgs e)
        {

        }
        
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void exitToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void linkLabel1_LinkClicked_1(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabelGeneratePins_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            GeneratePins objgp = new GeneratePins();
            objgp.ShowDialog();
        }

        private void linkLabelViewActivationDetails_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ViewActivationDetails objView = new ViewActivationDetails();
            objView.ShowDialog();
        }

        private void linkLabelSetTaxes_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ManageTaxes objmt = new ManageTaxes();
            objmt.ShowDialog();
        }

        private void linkLabelPinSales_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            PinSales objPinSales = new PinSales();
            objPinSales.ShowDialog();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            UserBankAndCorrierDetails objUserBankAndCorrierDetails = new UserBankAndCorrierDetails();
            objUserBankAndCorrierDetails.ShowDialog();
        }

        private void linkLabel1_LinkClicked_2(object sender, LinkLabelLinkClickedEventArgs e)
        {
            UserEntry objue = new UserEntry();
            objue.ShowDialog();
        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            GeneratePayments objgp = new GeneratePayments();
            objgp.ShowDialog();
           
        }

        private void updateuserpayments_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            UpdateUserPayments objUpdateUserPayments = new UpdateUserPayments();
            objUpdateUserPayments.ShowDialog();
        }

        private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Form2 objform2 = new Form2();
            objform2.ShowDialog();
        }

        private void pendingpaymentstousers_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void linkLabelAddEmployee_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void employeeLoginToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //xPanderPanel1.Enabled = false;
            //LoginForm objlf = new LoginForm();
            //string objResult = objlf.showWindow();
            //if (objResult == "admin")
            //{
            //    xPanderPanelAdmin.Enabled = true;
            //    xPanderPanel1.Enabled = true;

            //}
            //else if (objResult == "staff")
            //{
            //    xPanderPanelAdmin.Enabled = false;

            //}
            //else
            //{
            //    MessageBox.Show("Login Failed");
            //    this.Close();
            //}

        }
    }
}