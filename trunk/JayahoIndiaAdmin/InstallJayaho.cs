using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using JayahoIndia.DTO;
using System.Collections.Generic;
using System.Collections;
using JayahoIndia.JayahoIndiaDataSetTableAdapters;
namespace JayahoIndia
{
    public partial class InstallJayaho : Form
    {
        public InstallJayaho()
        {
            InitializeComponent();
        }

        private void buttonInstall_Click(object sender, EventArgs e)
        {
            try
            {
                int pinCount = Convert.ToInt32(comboBoxJoinAt.SelectedItem);
                JayahoIndiaDataSet.PinSalesDataTable objPinsList = getGeneratedPinsList(pinCount);
                int level = getLevelOfCreation(pinCount);

                jispGetUserByLevelTableAdapter objgetusersbyLevel = new jispGetUserByLevelTableAdapter();
                JayahoIndiaDataSet.jispGetUserByLevelDataTable objUserList = objgetusersbyLevel.GetData(level-1);

                AssignKeysToUsers(objPinsList, objUserList, level);
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.StackTrace);
            }
            MessageBox.Show("Installation Completed Successfully");

        }

        private void AssignKeysToUsers(JayahoIndiaDataSet.PinSalesDataTable objPinsList, JayahoIndiaDataSet.jispGetUserByLevelDataTable objUserList,int level)
        {

            if (objPinsList.Count == 2 * objUserList.Count)
            {
                int count = 0;
                string left = "Left";
                string right = "Right";
                foreach (JayahoIndia.JayahoIndiaDataSet.jispGetUserByLevelRow userRow in objUserList)
                {
                    //left assign
                    CreateUserAt(left, userRow.username, objPinsList[count].ActivatedPins,level,count);
                    count++;
                    //right assign
                    CreateUserAt(right, userRow.username, objPinsList[count].ActivatedPins,level,count);
                    count++;
                }
            
            
            
            }


        }

        private void CreateUserAt(string position, string parentUserName, Guid key,int level,int count)
        {
            InsertUserTableAdapter objInsertUser = new InsertUserTableAdapter();
            JayahoIndiaDataSet.InsertUserDataTable objiu = 
                objInsertUser.GetData(
                key, 
                "admin"+level+""+count, 
                parentUserName, 
                position, 
                "password",
                "admin" + level + "" + count, 
                "Bangalore", "AP", "", "Atp", "560078", "9986430161", "dmnreddy@gmail.com", "test relation", "brother", "pet name", "dog");
 
        }

        private int getLevelOfCreation(int pinCount)
        {
            switch (pinCount)
            {
                case 2:
                    return 1;
                    
                case 4:
                    return 2;
                    
                case 8:
                    return 3;                    

                case 16:
                    return 4;
                   
                case 32:
                    return 5;
                    
                case 64:
                    return 6;

                case 128:
                    return 7;
                    
                case 256:
                    return 8;
                default:
                    break;
            }
            return -1;

        }

        private JayahoIndiaDataSet.PinSalesDataTable getGeneratedPinsList(int pinCount)
        {
            try
            {
                PinsTableAdapter objpta = new PinsTableAdapter();
                objpta.Insert(pinCount);
            }
            catch (Exception e)
            {
                MessageBox.Show(e.StackTrace);
            }

            PinSalesTableAdapter objpinsales = new PinSalesTableAdapter();
            JayahoIndiaDataSet.PinSalesDataTable pinsTable = objpinsales.GetData(pinCount, "admin", "", "", "", "", "", "", "", Convert.ToDecimal(1000.00), new Guid("f3f8c1ae-a748-4810-bf79-c71841cd3cc1"));

            return pinsTable;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                //generate one pin
                clearDBTableAdapter objclearDB = new clearDBTableAdapter();
                objclearDB.GetData();

                int? i11 = 1;
                PinsTableAdapter objpta = new PinsTableAdapter();
                objpta.Insert(i11);               
                //insert one employee
                jispInsertEmployeeTableAdapter objInsertEmployee = new jispInsertEmployeeTableAdapter();
                Guid objGuid = new Guid();
                objInsertEmployee.Insert(objGuid, "admin", "admin", 1, "admin");
                //sell that pin through that employee
                JayahoIndiaDataSetTableAdapters.PinSalesTableAdapter objpinsales = new JayahoIndia.JayahoIndiaDataSetTableAdapters.PinSalesTableAdapter();
                JayahoIndiaDataSet.PinSalesDataTable i = objpinsales.GetData(1, "", "admincustomer", "", "", "", "", "", "", Convert.ToDecimal(1000.00), objGuid);
                Guid objAdminId = i[0].ActivatedPins;
                //insert into all 3 tables user userdata and settled payments 
                InstallAdminTableAdapter objInstallAdmin = new InstallAdminTableAdapter();
                objInstallAdmin.Insert(objAdminId);
                MessageBox.Show("Installation Completed Successfully");
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.StackTrace);
            }

        }

//delete from customer
//delete from users
//delete from userdata
//delete from user_payments
//delete from pins
//delete from payment_history
//delete from employee
//delete from Settled_Payments
//delete from UserSMSData
//delete from UserSMSBalance
//delete from Settled_Payments_History
//delete from Settled_Payments
//delete from Employee
//delete from Customer

    }
}