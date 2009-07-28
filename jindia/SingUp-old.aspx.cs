using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace jayahoindia
{
    public partial class SingUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private bool Registration_Validate()
        {
            bool result = true;
            Registration_ValidationSummary.Text = "";

            for (int i = 0; i < Page.Validators.Count; i++)
            {
                if (((System.Web.UI.WebControls.BaseValidator)Page.Validators[i]).ID.ToString().StartsWith("Registration"))
                {
                    if (!Page.Validators[i].IsValid)
                    {
                        Registration_ValidationSummary.Text += Page.Validators[i].ErrorMessage + "<br>";
                        result = false;
                    }
                }
            }

            Registration_ValidationSummary.Visible = (!result);
            return result;
        }

        /*===============================
         Display Record Form
        -------------------------------*/


        void Registration_Show()
        {

            // Registration Show begin
            

      



            // Registration Open Event begin
            // Registration Open Event end

            // Registration Show Event begin
            // Registration Show Event end

            // Registration Show end

            // Registration Close Event begin
            // Registration Close Event end

        }

        // Registration Action begin

        bool Registration_insert_Click(Object Src, EventArgs E)
        {
            string sSQL = "";
            bool bResult = Registration_Validate();

            

                // Registration AfterInsert Event begin
                // Registration AfterInsert Event end
            
            return bResult;
        }


        void Registration_BeforeSQLExecute(string SQL, String Action)
        {

            // Registration BeforeExecute Event begin
            // Registration BeforeExecute Event end

        }


        bool Registration_update_Click(Object Src, EventArgs E)
        {
            string sWhere = "";
            string sSQL = "";

            bool bResult = Registration_Validate();
            if (bResult)
            {

                
                }

                if (bResult)
                {
                    // Registration AfterUpdate Event begin
                    // Registration AfterUpdate Event end
                }
            
            return bResult;
        }

       

   

        void Registration_Action(Object Src, EventArgs E)
        {
           
        }
        // Registration Action end

    }
}
