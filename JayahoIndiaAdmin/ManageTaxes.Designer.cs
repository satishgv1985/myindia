namespace JayahoIndia
{
    partial class ManageTaxes
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
            this.taxBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.jayahoIndiaDataSet = new JayahoIndia.JayahoIndiaDataSet();
            this.jayahoIndiaDataSet1 = new JayahoIndia.JayahoIndiaDataSet();
            this.taxTableAdapter = new JayahoIndia.JayahoIndiaDataSetTableAdapters.TaxTableAdapter();
            this.panel1 = new BSE.Windows.Forms.Panel();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.taxNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.taxValueDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.DeleteValue = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.comboBoxDelete = new System.Windows.Forms.ComboBox();
            this.buttonDelete = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.editValue1 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.editName = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.comboBoxEdit = new System.Windows.Forms.ComboBox();
            this.buttonEdit = new System.Windows.Forms.Button();
            this.groupBoxAddTax = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.AddValue = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.AddName = new System.Windows.Forms.TextBox();
            this.buttonAdd = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.taxBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet1)).BeginInit();
            this.panel1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBoxAddTax.SuspendLayout();
            this.SuspendLayout();
            // 
            // taxBindingSource
            // 
            this.taxBindingSource.DataMember = "Tax";
            this.taxBindingSource.DataSource = this.jayahoIndiaDataSet;
            this.taxBindingSource.CurrentChanged += new System.EventHandler(this.taxBindingSource_CurrentChanged);
            // 
            // jayahoIndiaDataSet
            // 
            this.jayahoIndiaDataSet.DataSetName = "JayahoIndiaDataSet";
            this.jayahoIndiaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // jayahoIndiaDataSet1
            // 
            this.jayahoIndiaDataSet1.DataSetName = "JayahoIndiaDataSet";
            this.jayahoIndiaDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // taxTableAdapter
            // 
            this.taxTableAdapter.ClearBeforeFill = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BorderColor = System.Drawing.Color.Empty;
            this.panel1.CaptionFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
            this.panel1.CaptionForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.panel1.CloseIconForeColor = System.Drawing.Color.Empty;
            this.panel1.CollapsedCaptionForeColor = System.Drawing.Color.Empty;
            this.panel1.ColorCaptionGradientBegin = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(177)))), ((int)(((byte)(250)))));
            this.panel1.ColorCaptionGradientEnd = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(53)))), ((int)(((byte)(145)))));
            this.panel1.ColorCaptionGradientMiddle = System.Drawing.Color.FromArgb(((int)(((byte)(82)))), ((int)(((byte)(127)))), ((int)(((byte)(208)))));
            this.panel1.ColorContentPanelGradientBegin = System.Drawing.Color.Empty;
            this.panel1.ColorContentPanelGradientEnd = System.Drawing.Color.Empty;
            this.panel1.Controls.Add(this.groupBox3);
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.groupBoxAddTax);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panel1.Image = null;
            this.panel1.InnerBorderColor = System.Drawing.Color.Empty;
            this.panel1.LinearGradientMode = System.Drawing.Drawing2D.LinearGradientMode.Vertical;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Padding = new System.Windows.Forms.Padding(0, 25, 0, 0);
            this.panel1.PanelStyle = BSE.Windows.Forms.PanelStyle.Default;
            this.panel1.ShowTransparentBackground = false;
            this.panel1.Size = new System.Drawing.Size(785, 400);
            this.panel1.TabIndex = 0;
            this.panel1.Text = "Manage Taxes";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.dataGridView1);
            this.groupBox3.Location = new System.Drawing.Point(400, 220);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(326, 142);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Tax View";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.taxNameDataGridViewTextBoxColumn,
            this.taxValueDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.taxBindingSource;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(3, 16);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(320, 123);
            this.dataGridView1.TabIndex = 0;
            // 
            // taxNameDataGridViewTextBoxColumn
            // 
            this.taxNameDataGridViewTextBoxColumn.DataPropertyName = "Tax_Name";
            this.taxNameDataGridViewTextBoxColumn.HeaderText = "Tax_Name";
            this.taxNameDataGridViewTextBoxColumn.Name = "taxNameDataGridViewTextBoxColumn";
            // 
            // taxValueDataGridViewTextBoxColumn
            // 
            this.taxValueDataGridViewTextBoxColumn.DataPropertyName = "Tax_Value";
            this.taxValueDataGridViewTextBoxColumn.HeaderText = "Tax_Value";
            this.taxValueDataGridViewTextBoxColumn.Name = "taxValueDataGridViewTextBoxColumn";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.DeleteValue);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.comboBoxDelete);
            this.groupBox2.Controls.Add(this.buttonDelete);
            this.groupBox2.Location = new System.Drawing.Point(23, 220);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(326, 142);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Delete Tax";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(37, 71);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(58, 13);
            this.label5.TabIndex = 16;
            this.label5.Text = "Tax Value:";
            // 
            // DeleteValue
            // 
            this.DeleteValue.Enabled = false;
            this.DeleteValue.Location = new System.Drawing.Point(115, 68);
            this.DeleteValue.Name = "DeleteValue";
            this.DeleteValue.Size = new System.Drawing.Size(100, 20);
            this.DeleteValue.TabIndex = 15;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(35, 39);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(64, 13);
            this.label8.TabIndex = 12;
            this.label8.Text = "Choose Tax";
            // 
            // comboBoxDelete
            // 
            this.comboBoxDelete.DataSource = this.taxBindingSource;
            this.comboBoxDelete.DisplayMember = "Tax_Name";
            this.comboBoxDelete.FormattingEnabled = true;
            this.comboBoxDelete.Location = new System.Drawing.Point(115, 31);
            this.comboBoxDelete.Name = "comboBoxDelete";
            this.comboBoxDelete.Size = new System.Drawing.Size(121, 21);
            this.comboBoxDelete.TabIndex = 11;
            this.comboBoxDelete.ValueMember = "Tax_Id";
            this.comboBoxDelete.SelectedIndexChanged += new System.EventHandler(this.comboBoxDelete_SelectedIndexChanged);
            // 
            // buttonDelete
            // 
            this.buttonDelete.Location = new System.Drawing.Point(189, 113);
            this.buttonDelete.Name = "buttonDelete";
            this.buttonDelete.Size = new System.Drawing.Size(75, 23);
            this.buttonDelete.TabIndex = 1;
            this.buttonDelete.Text = "Delete";
            this.buttonDelete.UseVisualStyleBackColor = true;
            this.buttonDelete.Click += new System.EventHandler(this.buttonDelete_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.textBox3);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.editValue1);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.editName);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.comboBoxEdit);
            this.groupBox1.Controls.Add(this.buttonEdit);
            this.groupBox1.Location = new System.Drawing.Point(400, 39);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(326, 142);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Edit Tax";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(112, 110);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 20);
            this.textBox3.TabIndex = 14;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(83, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 13;
            this.label3.Text = "Tax Value:";
            // 
            // editValue1
            // 
            this.editValue1.Location = new System.Drawing.Point(146, 78);
            this.editValue1.Name = "editValue1";
            this.editValue1.Size = new System.Drawing.Size(100, 20);
            this.editValue1.TabIndex = 12;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(81, 52);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "Tax Name:";
            // 
            // editName
            // 
            this.editName.Location = new System.Drawing.Point(146, 45);
            this.editName.Name = "editName";
            this.editName.Size = new System.Drawing.Size(100, 20);
            this.editName.TabIndex = 10;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(81, 26);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(64, 13);
            this.label7.TabIndex = 9;
            this.label7.Text = "Choose Tax";
            // 
            // comboBoxEdit
            // 
            this.comboBoxEdit.DataSource = this.taxBindingSource;
            this.comboBoxEdit.DisplayMember = "Tax_Name";
            this.comboBoxEdit.FormattingEnabled = true;
            this.comboBoxEdit.Location = new System.Drawing.Point(146, 18);
            this.comboBoxEdit.Name = "comboBoxEdit";
            this.comboBoxEdit.Size = new System.Drawing.Size(121, 21);
            this.comboBoxEdit.TabIndex = 8;
            this.comboBoxEdit.ValueMember = "Tax_Id";
            this.comboBoxEdit.SelectedIndexChanged += new System.EventHandler(this.comboBoxEdit_SelectedIndexChanged);
            // 
            // buttonEdit
            // 
            this.buttonEdit.Location = new System.Drawing.Point(226, 110);
            this.buttonEdit.Name = "buttonEdit";
            this.buttonEdit.Size = new System.Drawing.Size(75, 23);
            this.buttonEdit.TabIndex = 7;
            this.buttonEdit.Text = "Edit";
            this.buttonEdit.UseVisualStyleBackColor = true;
            this.buttonEdit.Click += new System.EventHandler(this.buttonEdit_Click);
            // 
            // groupBoxAddTax
            // 
            this.groupBoxAddTax.Controls.Add(this.label2);
            this.groupBoxAddTax.Controls.Add(this.AddValue);
            this.groupBoxAddTax.Controls.Add(this.label1);
            this.groupBoxAddTax.Controls.Add(this.AddName);
            this.groupBoxAddTax.Controls.Add(this.buttonAdd);
            this.groupBoxAddTax.Location = new System.Drawing.Point(23, 39);
            this.groupBoxAddTax.Name = "groupBoxAddTax";
            this.groupBoxAddTax.Size = new System.Drawing.Size(326, 142);
            this.groupBoxAddTax.TabIndex = 0;
            this.groupBoxAddTax.TabStop = false;
            this.groupBoxAddTax.Text = "Add Tax";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(37, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Tax Value:";
            // 
            // AddValue
            // 
            this.AddValue.Location = new System.Drawing.Point(100, 55);
            this.AddValue.Name = "AddValue";
            this.AddValue.Size = new System.Drawing.Size(100, 20);
            this.AddValue.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(35, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Tax Name:";
            // 
            // AddName
            // 
            this.AddName.Location = new System.Drawing.Point(100, 22);
            this.AddName.Name = "AddName";
            this.AddName.Size = new System.Drawing.Size(100, 20);
            this.AddName.TabIndex = 1;
            // 
            // buttonAdd
            // 
            this.buttonAdd.Location = new System.Drawing.Point(189, 110);
            this.buttonAdd.Name = "buttonAdd";
            this.buttonAdd.Size = new System.Drawing.Size(75, 23);
            this.buttonAdd.TabIndex = 0;
            this.buttonAdd.Text = "Add";
            this.buttonAdd.UseVisualStyleBackColor = true;
            this.buttonAdd.Click += new System.EventHandler(this.buttonAdd_Click);
            // 
            // ManageTaxes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(785, 400);
            this.Controls.Add(this.panel1);
            this.Name = "ManageTaxes";
            this.Text = "ManageTaxes";
            this.Load += new System.EventHandler(this.ManageTaxes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.taxBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jayahoIndiaDataSet1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBoxAddTax.ResumeLayout(false);
            this.groupBoxAddTax.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private JayahoIndiaDataSet jayahoIndiaDataSet1;
        private JayahoIndiaDataSet jayahoIndiaDataSet;
        private System.Windows.Forms.BindingSource taxBindingSource;
        private JayahoIndia.JayahoIndiaDataSetTableAdapters.TaxTableAdapter taxTableAdapter;
        private BSE.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn taxNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn taxValueDataGridViewTextBoxColumn;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button buttonDelete;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonEdit;
        private System.Windows.Forms.GroupBox groupBoxAddTax;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox AddValue;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox AddName;
        private System.Windows.Forms.Button buttonAdd;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox comboBoxDelete;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox comboBoxEdit;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox DeleteValue;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox editName;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox editValue1;
    }
}