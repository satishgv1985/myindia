namespace JayahoIndia
{
    partial class UpdateUserPayments
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonUpdate = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.getUserPaymentsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.jayahoIndiaDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.jayahoIndiaDataSet = new JayahoIndia.JayahoIndiaDataSet();
            this.getUserPaymentsTableAdapter = new JayahoIndia.JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter();
            this.uSERIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.uSERNAMEDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pAYCARDNODataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Amount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.getUserPaymentsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonUpdate);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox1.Location = new System.Drawing.Point(0, 419);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(729, 100);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // buttonUpdate
            // 
            this.buttonUpdate.Location = new System.Drawing.Point(283, 37);
            this.buttonUpdate.Name = "buttonUpdate";
            this.buttonUpdate.Size = new System.Drawing.Size(75, 23);
            this.buttonUpdate.TabIndex = 0;
            this.buttonUpdate.Text = "Update";
            this.buttonUpdate.UseVisualStyleBackColor = true;
            this.buttonUpdate.Click += new System.EventHandler(this.buttonUpdate_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.uSERIDDataGridViewTextBoxColumn,
            this.uSERNAMEDataGridViewTextBoxColumn,
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn,
            this.pAYCARDNODataGridViewTextBoxColumn,
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn,
            this.Amount});
            this.dataGridView1.DataSource = this.getUserPaymentsBindingSource;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(0, 0);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(729, 419);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // getUserPaymentsBindingSource
            // 
            this.getUserPaymentsBindingSource.DataMember = "GetUserPayments";
            this.getUserPaymentsBindingSource.DataSource = this.jayahoIndiaDataSetBindingSource;
            // 
            // jayahoIndiaDataSetBindingSource
            // 
            this.jayahoIndiaDataSetBindingSource.DataSource = this.jayahoIndiaDataSet;
            this.jayahoIndiaDataSetBindingSource.Position = 0;
            // 
            // jayahoIndiaDataSet
            // 
            this.jayahoIndiaDataSet.DataSetName = "JayahoIndiaDataSet";
            this.jayahoIndiaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // getUserPaymentsTableAdapter
            // 
            this.getUserPaymentsTableAdapter.ClearBeforeFill = true;
            // 
            // uSERIDDataGridViewTextBoxColumn
            // 
            this.uSERIDDataGridViewTextBoxColumn.DataPropertyName = "USERID";
            this.uSERIDDataGridViewTextBoxColumn.HeaderText = "User Id";
            this.uSERIDDataGridViewTextBoxColumn.Name = "uSERIDDataGridViewTextBoxColumn";
            this.uSERIDDataGridViewTextBoxColumn.ReadOnly = true;
            this.uSERIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // uSERNAMEDataGridViewTextBoxColumn
            // 
            this.uSERNAMEDataGridViewTextBoxColumn.DataPropertyName = "USERNAME";
            this.uSERNAMEDataGridViewTextBoxColumn.HeaderText = "User Name";
            this.uSERNAMEDataGridViewTextBoxColumn.Name = "uSERNAMEDataGridViewTextBoxColumn";
            this.uSERNAMEDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // bANKACCOUNTNUMBERDataGridViewTextBoxColumn
            // 
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.DataPropertyName = "BANKACCOUNTNUMBER";
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.HeaderText = "Bank Account No.";
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.Name = "bANKACCOUNTNUMBERDataGridViewTextBoxColumn";
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.ReadOnly = true;
            this.bANKACCOUNTNUMBERDataGridViewTextBoxColumn.Width = 95;
            // 
            // pAYCARDNODataGridViewTextBoxColumn
            // 
            this.pAYCARDNODataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.pAYCARDNODataGridViewTextBoxColumn.DataPropertyName = "PAYCARDNO";
            this.pAYCARDNODataGridViewTextBoxColumn.HeaderText = "Bank PayCard No.";
            this.pAYCARDNODataGridViewTextBoxColumn.Name = "pAYCARDNODataGridViewTextBoxColumn";
            this.pAYCARDNODataGridViewTextBoxColumn.ReadOnly = true;
            this.pAYCARDNODataGridViewTextBoxColumn.Width = 95;
            // 
            // aMOUNTTOBEPAIDDataGridViewTextBoxColumn
            // 
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.DataPropertyName = "AMOUNTTOBEPAID";
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.HeaderText = "Amount to be Paid";
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.Name = "aMOUNTTOBEPAIDDataGridViewTextBoxColumn";
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.ReadOnly = true;
            this.aMOUNTTOBEPAIDDataGridViewTextBoxColumn.Width = 90;
            // 
            // Amount
            // 
            this.Amount.DataPropertyName = "AMOUNTTOBEPAID";
            this.Amount.HeaderText = "Enter Amount";
            this.Amount.Name = "Amount";
            // 
            // UpdateUserPayments
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(729, 519);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox1);
            this.Name = "UpdateUserPayments";
            this.Text = "UpdateUserPayments";
            this.Load += new System.EventHandler(this.UpdateUserPayments_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.getUserPaymentsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button buttonUpdate;
        private System.Windows.Forms.BindingSource jayahoIndiaDataSetBindingSource;
        private JayahoIndiaDataSet jayahoIndiaDataSet;
        private System.Windows.Forms.BindingSource getUserPaymentsBindingSource;
        private JayahoIndia.JayahoIndiaDataSetTableAdapters.GetUserPaymentsTableAdapter getUserPaymentsTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn uSERIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn uSERNAMEDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bANKACCOUNTNUMBERDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pAYCARDNODataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn aMOUNTTOBEPAIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn Amount;
    }
}