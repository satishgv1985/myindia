namespace JayahoIndia
{
    partial class UserEntry
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
            this.panel1 = new BSE.Windows.Forms.Panel();
            this.comboBoxJoinAt = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textBoxParentUsername = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxusername = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxUserPin = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
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
            this.panel1.Controls.Add(this.comboBoxJoinAt);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.textBoxParentUsername);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.textBoxusername);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.textBoxUserPin);
            this.panel1.Controls.Add(this.button1);
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
            this.panel1.Size = new System.Drawing.Size(477, 269);
            this.panel1.TabIndex = 0;
            this.panel1.Text = "User Entry";
            this.panel1.Click += new System.EventHandler(this.panel1_Click);
            // 
            // comboBoxJoinAt
            // 
            this.comboBoxJoinAt.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxJoinAt.FormattingEnabled = true;
            this.comboBoxJoinAt.Items.AddRange(new object[] {
            "Left",
            "Right"});
            this.comboBoxJoinAt.Location = new System.Drawing.Point(187, 163);
            this.comboBoxJoinAt.Name = "comboBoxJoinAt";
            this.comboBoxJoinAt.Size = new System.Drawing.Size(121, 21);
            this.comboBoxJoinAt.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(59, 166);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Join At";
            // 
            // textBoxParentUsername
            // 
            this.textBoxParentUsername.Location = new System.Drawing.Point(187, 124);
            this.textBoxParentUsername.Name = "textBoxParentUsername";
            this.textBoxParentUsername.Size = new System.Drawing.Size(263, 20);
            this.textBoxParentUsername.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(59, 127);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(122, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Enter Parent User Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(59, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Enter User Name";
            // 
            // textBoxusername
            // 
            this.textBoxusername.Location = new System.Drawing.Point(187, 90);
            this.textBoxusername.Name = "textBoxusername";
            this.textBoxusername.Size = new System.Drawing.Size(263, 20);
            this.textBoxusername.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(59, 59);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Enter Pin";
            // 
            // textBoxUserPin
            // 
            this.textBoxUserPin.Location = new System.Drawing.Point(187, 56);
            this.textBoxUserPin.Name = "textBoxUserPin";
            this.textBoxUserPin.Size = new System.Drawing.Size(263, 20);
            this.textBoxUserPin.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(187, 218);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "Update";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // UserEntry
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(477, 269);
            this.Controls.Add(this.panel1);
            this.Name = "UserEntry";
            this.Text = "Jayaho India";
            this.Load += new System.EventHandler(this.UserEntry_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private BSE.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBoxUserPin;
        private System.Windows.Forms.TextBox textBoxParentUsername;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxusername;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxJoinAt;
        private System.Windows.Forms.Label label4;
    }
}