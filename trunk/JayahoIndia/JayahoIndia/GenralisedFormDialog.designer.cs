namespace JayahoIndia
{
    partial class GenralisedFormDialog
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
            this.CommonPanel = new BSE.Windows.Forms.Panel();
            this.SuspendLayout();
            // 
            // CommonPanel
            // 
            this.CommonPanel.BackColor = System.Drawing.Color.Transparent;
            this.CommonPanel.BorderColor = System.Drawing.Color.Empty;
            this.CommonPanel.CaptionFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
            this.CommonPanel.CaptionForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.CommonPanel.CloseIconForeColor = System.Drawing.Color.Empty;
            this.CommonPanel.CollapsedCaptionForeColor = System.Drawing.Color.Empty;
            this.CommonPanel.ColorCaptionGradientBegin = System.Drawing.Color.FromArgb(((int)(((byte)(127)))), ((int)(((byte)(177)))), ((int)(((byte)(250)))));
            this.CommonPanel.ColorCaptionGradientEnd = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(53)))), ((int)(((byte)(145)))));
            this.CommonPanel.ColorCaptionGradientMiddle = System.Drawing.Color.FromArgb(((int)(((byte)(82)))), ((int)(((byte)(127)))), ((int)(((byte)(208)))));
            this.CommonPanel.ColorContentPanelGradientBegin = System.Drawing.Color.Empty;
            this.CommonPanel.ColorContentPanelGradientEnd = System.Drawing.Color.Empty;
            this.CommonPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.CommonPanel.ForeColor = System.Drawing.SystemColors.ControlText;
            this.CommonPanel.Image = null;
            this.CommonPanel.InnerBorderColor = System.Drawing.Color.Empty;
            this.CommonPanel.LinearGradientMode = System.Drawing.Drawing2D.LinearGradientMode.Vertical;
            this.CommonPanel.Location = new System.Drawing.Point(0, 0);
            this.CommonPanel.Name = "CommonPanel";
            this.CommonPanel.Padding = new System.Windows.Forms.Padding(0, 25, 0, 0);
            this.CommonPanel.PanelStyle = BSE.Windows.Forms.PanelStyle.Default;
            this.CommonPanel.ShowCloseIcon = true;
            this.CommonPanel.ShowTransparentBackground = false;
            this.CommonPanel.Size = new System.Drawing.Size(604, 464);
            this.CommonPanel.TabIndex = 0;
            this.CommonPanel.TabStop = false;
            this.CommonPanel.Text = "panel1";
            this.CommonPanel.MouseUp += new System.Windows.Forms.MouseEventHandler(this.CaptionBar_MouseUp);
            this.CommonPanel.MouseMove += new System.Windows.Forms.MouseEventHandler(this.CaptionBar_MouseMove);
            this.CommonPanel.MouseDown += new System.Windows.Forms.MouseEventHandler(this.CaptionBar_MouseDown);
            this.CommonPanel.CloseClick += new System.EventHandler<System.EventArgs>(this.CommonPanel_CloseClick);
            this.CommonPanel.Click += new System.EventHandler(this.CommonPanel_Click);
            // 
            // GenralisedFormDialog
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(604, 464);
            this.Controls.Add(this.CommonPanel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "GenralisedFormDialog";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "GenralisedFormDialog";
            this.ResumeLayout(false);

        }

        #endregion

        public BSE.Windows.Forms.Panel CommonPanel;
    }
}