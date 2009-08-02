namespace JayahoIndia
{
    partial class Form2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.JayahoIndiaDataSet = new JayahoIndia.JayahoIndiaDataSet();
            this.GetUserPaymentsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.GetUserPaymentsTableAdapter = new JayahoIndia.JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.JayahoIndiaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GetUserPaymentsBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "JayahoIndiaDataSet_GetUserPayments";
            reportDataSource1.Value = this.GetUserPaymentsBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "JayahoIndia.Report1.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(738, 516);
            this.reportViewer1.TabIndex = 0;
            // 
            // JayahoIndiaDataSet
            // 
            this.JayahoIndiaDataSet.DataSetName = "JayahoIndiaDataSet";
            this.JayahoIndiaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // GetUserPaymentsBindingSource
            // 
            this.GetUserPaymentsBindingSource.DataMember = "GetUserPayments";
            this.GetUserPaymentsBindingSource.DataSource = this.JayahoIndiaDataSet;
            // 
            // GetUserPaymentsTableAdapter
            // 
            this.GetUserPaymentsTableAdapter.ClearBeforeFill = true;
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(738, 516);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Form2";
            this.Text = "Form2";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.JayahoIndiaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GetUserPaymentsBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource GetUserPaymentsBindingSource;
        private JayahoIndiaDataSet JayahoIndiaDataSet;
        private JayahoIndia.JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter GetUserPaymentsTableAdapter;
    }
}