namespace JayahoIndia
{
    partial class InstallJayaho
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
            this.Installjayahopanel = new BSE.Windows.Forms.Panel();
            this.comboBoxJoinAt = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonInstall = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.Installjayahopanel.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // Installjayahopanel
            // 
            this.Installjayahopanel.BackColor = System.Drawing.Color.Transparent;
            this.Installjayahopanel.BorderColor = System.Drawing.Color.Empty;
            this.Installjayahopanel.CaptionFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
            this.Installjayahopanel.CaptionForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Installjayahopanel.CloseIconForeColor = System.Drawing.Color.Empty;
            this.Installjayahopanel.CollapsedCaptionForeColor = System.Drawing.Color.Empty;
            this.Installjayahopanel.ColorCaptionGradientBegin = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(177)))), ((int)(((byte)(250)))));
            this.Installjayahopanel.ColorCaptionGradientEnd = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(53)))), ((int)(((byte)(145)))));
            this.Installjayahopanel.ColorCaptionGradientMiddle = System.Drawing.Color.FromArgb(((int)(((byte)(82)))), ((int)(((byte)(127)))), ((int)(((byte)(208)))));
            this.Installjayahopanel.ColorContentPanelGradientBegin = System.Drawing.Color.Empty;
            this.Installjayahopanel.ColorContentPanelGradientEnd = System.Drawing.Color.Empty;
            this.Installjayahopanel.Controls.Add(this.button2);
            this.Installjayahopanel.Controls.Add(this.button1);
            this.Installjayahopanel.Controls.Add(this.panel1);
            this.Installjayahopanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Installjayahopanel.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Installjayahopanel.Image = null;
            this.Installjayahopanel.InnerBorderColor = System.Drawing.Color.Empty;
            this.Installjayahopanel.LinearGradientMode = System.Drawing.Drawing2D.LinearGradientMode.Vertical;
            this.Installjayahopanel.Location = new System.Drawing.Point(0, 0);
            this.Installjayahopanel.Name = "Installjayahopanel";
            this.Installjayahopanel.Padding = new System.Windows.Forms.Padding(0, 25, 0, 0);
            this.Installjayahopanel.PanelStyle = BSE.Windows.Forms.PanelStyle.Default;
            this.Installjayahopanel.ShowTransparentBackground = false;
            this.Installjayahopanel.Size = new System.Drawing.Size(611, 210);
            this.Installjayahopanel.TabIndex = 1;
            this.Installjayahopanel.Text = "Installation";
            // 
            // comboBoxJoinAt
            // 
            this.comboBoxJoinAt.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxJoinAt.FormattingEnabled = true;
            this.comboBoxJoinAt.Items.AddRange(new object[] {
            "2",
            "4",
            "8",
            "16",
            "32",
            "64",
            "128",
            "256"});
            this.comboBoxJoinAt.Location = new System.Drawing.Point(213, 17);
            this.comboBoxJoinAt.Name = "comboBoxJoinAt";
            this.comboBoxJoinAt.Size = new System.Drawing.Size(121, 21);
            this.comboBoxJoinAt.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(85, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Enter Number Of Pins";
            // 
            // buttonInstall
            // 
            this.buttonInstall.Location = new System.Drawing.Point(172, 60);
            this.buttonInstall.Name = "buttonInstall";
            this.buttonInstall.Size = new System.Drawing.Size(75, 23);
            this.buttonInstall.TabIndex = 0;
            this.buttonInstall.Text = "Install";
            this.buttonInstall.UseVisualStyleBackColor = true;
            this.buttonInstall.Click += new System.EventHandler(this.buttonInstall_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.buttonInstall);
            this.panel1.Controls.Add(this.comboBoxJoinAt);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(174, 44);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(412, 100);
            this.panel1.TabIndex = 9;
            this.panel1.Visible = false;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 44);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 10;
            this.button1.Text = "Install Admin";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(12, 87);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 11;
            this.button2.Text = "Install Childs";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // InstallJayaho
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(611, 210);
            this.Controls.Add(this.Installjayahopanel);
            this.Name = "InstallJayaho";
            this.Text = "InstallJayaho";
            this.Installjayahopanel.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private BSE.Windows.Forms.Panel Installjayahopanel;
        private System.Windows.Forms.ComboBox comboBoxJoinAt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonInstall;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
    }
}