using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Drawing.Drawing2D;

namespace JayahoIndia
{
    public partial class GenralisedFormDialog : Form
    {
        public static BSE.Windows.Forms.PanelColors ActiveSkinColor;
        public GenralisedFormDialog()
        {
            InitializeComponent();

            //if (ActiveSkinColor == null)
            //{
            //    //   ActiveSkinColor = new BSE.Windows.Forms.PanelColors();
            //    ApplyDefaultPanelColor(ref CommonPanel);

            //}
            //else
            //{
            //    BSE.Windows.Forms.PanelSettingsManager.SetPanelProperties(this.Controls, BSE.Windows.Forms.PanelStyle.Default, ActiveSkinColor);
            //}
            CommonPanel.Size = this.Size;
           

        }

       private void ApplyDefaultPanelColor(ref BSE.Windows.Forms.Panel panel1)
        {

            panel1.PanelStyle = BSE.Windows.Forms.PanelStyle.Default;
            panel1.ColorScheme = BSE.Windows.Forms.ColorScheme.Custom;
            panel1.BorderColor = System.Drawing.Color.SlateGray;
            panel1.CaptionFont = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold);
            panel1.CaptionForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            panel1.CloseIconForeColor = System.Drawing.Color.Empty;
            panel1.CollapsedCaptionForeColor = System.Drawing.Color.Empty;
            panel1.ColorCaptionGradientBegin = System.Drawing.Color.Gray;
            panel1.ColorCaptionGradientEnd = System.Drawing.Color.Black;
            panel1.ColorCaptionGradientMiddle = System.Drawing.Color.Transparent;
            panel1.ColorContentPanelGradientBegin = System.Drawing.Color.LightGray;
            panel1.ColorContentPanelGradientEnd = System.Drawing.Color.DarkGray;
        }
       public bool Active = false;
       public  int X = 0, Y = 0;

        public void CaptionBar_MouseDown(object sender, MouseEventArgs e)
        {
            X = e.X;
            Y = e.Y;

            if (X < CommonPanel.Width && Y < CommonPanel.CaptionHeight)
            {
                Active = true;
                this.Cursor = Cursors.Hand;
            }
        }
        public void CaptionBar_MouseMove(object sender, MouseEventArgs e)
        {
            if (Active)
            {

                this.Cursor = Cursors.Hand;
            }

        }
        public void CaptionBar_MouseUp(object sender, MouseEventArgs e)
        {
            if (Active)
            {
                this.Cursor = Cursors.Hand;
                this.Location = new Point(this.Left + e.X - X, this.Top + e.Y - Y);
                CommonPanel.Refresh();
                this.Cursor = Cursors.Default;
            }
            Active = false;
        }



        /////////////
        private GraphicsPath GetRoundedRect(RectangleF baseRect, float radius)
        {
            // if corner radius is less than or equal to zero, 
            // return the original rectangle 
            if (radius <= 0.0F)
            {
                GraphicsPath mPath = new GraphicsPath();
                mPath.AddRectangle(baseRect);
                mPath.CloseFigure();
                return mPath;
            }

            // if the corner radius is greater than or equal to 
            // half the width, or height (whichever is shorter) 
            // then return a capsule instead of a lozenge 
            if (radius >= (Math.Min(baseRect.Width, baseRect.Height)) / 2.0)
                return GetCapsule(baseRect);

            // create the arc for the rectangle sides and declare 
            // a graphics path object for the drawing 
            float diameter = radius * 2.0F;
            SizeF sizeF = new SizeF(diameter, diameter);
            RectangleF arc = new RectangleF(baseRect.Location, sizeF);
            GraphicsPath path = new System.Drawing.Drawing2D.GraphicsPath();

            // top left arc 
            path.AddArc(arc, 180, 90);

            // top right arc 
            arc.X = baseRect.Right - diameter;
            path.AddArc(arc, 270, 90);

            // bottom right arc 
            arc.Y = baseRect.Bottom - 0;
            path.AddArc(arc, 0, 90);

            // bottom left arc
            arc.X = baseRect.Left;
            path.AddArc(arc, 90, 90);

            path.CloseFigure();
            return path;
        }

        #region Gets the desired Capsular path.
        private GraphicsPath GetCapsule(RectangleF baseRect)
        {
            float diameter;
            RectangleF arc;
            GraphicsPath path = new System.Drawing.Drawing2D.GraphicsPath();
            try
            {
                if (baseRect.Width > baseRect.Height)
                {
                    // return horizontal capsule 
                    diameter = baseRect.Height;
                    SizeF sizeF = new SizeF(diameter, diameter);
                    arc = new RectangleF(baseRect.Location, sizeF);
                    path.AddArc(arc, 90, 180);
                    arc.X = baseRect.Right - diameter;
                    path.AddArc(arc, 270, 180);
                }
                else if (baseRect.Width < baseRect.Height)
                {
                    // return vertical capsule 
                    diameter = baseRect.Width;
                    SizeF sizeF = new SizeF(diameter, diameter);
                    arc = new RectangleF(baseRect.Location, sizeF);
                    path.AddArc(arc, 180, 180);
                    arc.Y = baseRect.Bottom - diameter;
                    path.AddArc(arc, 0, 180);
                }
                else
                {
                    // return circle 
                    path.AddEllipse(baseRect);
                }
            }
            catch (Exception ex)
            {
                path.AddEllipse(baseRect);
            }
            finally
            {
                path.CloseFigure();
            }
            return path;
        }
        #endregion 

        public void CommonPanel_CloseClick(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CommonPanel_Click(object sender, EventArgs e)
        {

        }


      


      
    }
}