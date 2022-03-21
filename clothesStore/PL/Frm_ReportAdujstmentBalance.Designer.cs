﻿namespace clothesStore.PL
{
    partial class Frm_ReportAdujstmentBalance
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frm_ReportAdujstmentBalance));
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.DateFrom = new System.Windows.Forms.DateTimePicker();
            this.btn_Search = new DevExpress.XtraEditors.SimpleButton();
            this.Btn_Print = new DevExpress.XtraEditors.SimpleButton();
            this.DateTo = new System.Windows.Forms.DateTimePicker();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label4.BackColor = System.Drawing.SystemColors.Control;
            this.label4.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.Navy;
            this.label4.Location = new System.Drawing.Point(630, 48);
            this.label4.Name = "label4";
            this.label4.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label4.Size = new System.Drawing.Size(49, 29);
            this.label4.TabIndex = 141;
            this.label4.Text = "إلى :";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label3.BackColor = System.Drawing.SystemColors.Control;
            this.label3.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Navy;
            this.label3.Location = new System.Drawing.Point(627, 4);
            this.label3.Name = "label3";
            this.label3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.label3.Size = new System.Drawing.Size(51, 28);
            this.label3.TabIndex = 140;
            this.label3.Text = " : من";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // DateFrom
            // 
            this.DateFrom.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.DateFrom.CustomFormat = "   dd/MM/yyyy       *      tt  mm:hh    ";
            this.DateFrom.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DateFrom.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.DateFrom.Location = new System.Drawing.Point(485, 5);
            this.DateFrom.Name = "DateFrom";
            this.DateFrom.Size = new System.Drawing.Size(138, 26);
            this.DateFrom.TabIndex = 138;
            this.DateFrom.Value = new System.DateTime(2020, 2, 23, 0, 0, 0, 0);
            // 
            // btn_Search
            // 
            this.btn_Search.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.btn_Search.Appearance.BackColor = System.Drawing.Color.Navy;
            this.btn_Search.Appearance.BackColor2 = System.Drawing.Color.Aqua;
            this.btn_Search.Appearance.BorderColor = System.Drawing.Color.White;
            this.btn_Search.Appearance.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Search.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btn_Search.Appearance.Options.UseBackColor = true;
            this.btn_Search.Appearance.Options.UseBorderColor = true;
            this.btn_Search.Appearance.Options.UseFont = true;
            this.btn_Search.Appearance.Options.UseForeColor = true;
            this.btn_Search.Appearance.Options.UseTextOptions = true;
            this.btn_Search.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.btn_Search.AppearanceDisabled.BackColor = System.Drawing.Color.White;
            this.btn_Search.AppearanceDisabled.BackColor2 = System.Drawing.Color.White;
            this.btn_Search.AppearanceDisabled.BorderColor = System.Drawing.Color.Black;
            this.btn_Search.AppearanceDisabled.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Search.AppearanceDisabled.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.btn_Search.AppearanceDisabled.Options.UseBackColor = true;
            this.btn_Search.AppearanceDisabled.Options.UseBorderColor = true;
            this.btn_Search.AppearanceDisabled.Options.UseFont = true;
            this.btn_Search.AppearanceDisabled.Options.UseTextOptions = true;
            this.btn_Search.AppearanceDisabled.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.btn_Search.AppearanceHovered.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.btn_Search.AppearanceHovered.BackColor2 = System.Drawing.Color.White;
            this.btn_Search.AppearanceHovered.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Search.AppearanceHovered.Options.UseBackColor = true;
            this.btn_Search.AppearanceHovered.Options.UseFont = true;
            this.btn_Search.AppearanceHovered.Options.UseTextOptions = true;
            this.btn_Search.AppearanceHovered.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.btn_Search.AppearancePressed.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btn_Search.AppearancePressed.BackColor2 = System.Drawing.Color.Black;
            this.btn_Search.AppearancePressed.BorderColor = System.Drawing.Color.White;
            this.btn_Search.AppearancePressed.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Search.AppearancePressed.ForeColor = System.Drawing.Color.Black;
            this.btn_Search.AppearancePressed.Options.UseBackColor = true;
            this.btn_Search.AppearancePressed.Options.UseBorderColor = true;
            this.btn_Search.AppearancePressed.Options.UseFont = true;
            this.btn_Search.AppearancePressed.Options.UseForeColor = true;
            this.btn_Search.AppearancePressed.Options.UseTextOptions = true;
            this.btn_Search.AppearancePressed.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.btn_Search.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btn_Search.ImageOptions.Image")));
            this.btn_Search.Location = new System.Drawing.Point(330, 23);
            this.btn_Search.Name = "btn_Search";
            this.btn_Search.Size = new System.Drawing.Size(118, 36);
            this.btn_Search.TabIndex = 143;
            this.btn_Search.Text = "بحث";
            this.btn_Search.Click += new System.EventHandler(this.btn_Search_Click);
            // 
            // Btn_Print
            // 
            this.Btn_Print.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.Btn_Print.Appearance.BackColor = System.Drawing.Color.Black;
            this.Btn_Print.Appearance.BackColor2 = System.Drawing.Color.Black;
            this.Btn_Print.Appearance.BorderColor = System.Drawing.Color.White;
            this.Btn_Print.Appearance.Font = new System.Drawing.Font("Arial", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Print.Appearance.ForeColor = System.Drawing.Color.White;
            this.Btn_Print.Appearance.Options.UseBackColor = true;
            this.Btn_Print.Appearance.Options.UseBorderColor = true;
            this.Btn_Print.Appearance.Options.UseFont = true;
            this.Btn_Print.Appearance.Options.UseForeColor = true;
            this.Btn_Print.Appearance.Options.UseTextOptions = true;
            this.Btn_Print.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.Btn_Print.AppearanceDisabled.BackColor = System.Drawing.Color.White;
            this.Btn_Print.AppearanceDisabled.BackColor2 = System.Drawing.Color.White;
            this.Btn_Print.AppearanceDisabled.BorderColor = System.Drawing.Color.Black;
            this.Btn_Print.AppearanceDisabled.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Print.AppearanceDisabled.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.Btn_Print.AppearanceDisabled.Options.UseBackColor = true;
            this.Btn_Print.AppearanceDisabled.Options.UseBorderColor = true;
            this.Btn_Print.AppearanceDisabled.Options.UseFont = true;
            this.Btn_Print.AppearanceDisabled.Options.UseTextOptions = true;
            this.Btn_Print.AppearanceDisabled.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.Btn_Print.AppearanceHovered.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.Btn_Print.AppearanceHovered.BackColor2 = System.Drawing.Color.White;
            this.Btn_Print.AppearanceHovered.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Print.AppearanceHovered.Options.UseBackColor = true;
            this.Btn_Print.AppearanceHovered.Options.UseFont = true;
            this.Btn_Print.AppearanceHovered.Options.UseTextOptions = true;
            this.Btn_Print.AppearanceHovered.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.Btn_Print.AppearancePressed.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.Btn_Print.AppearancePressed.BackColor2 = System.Drawing.Color.Black;
            this.Btn_Print.AppearancePressed.BorderColor = System.Drawing.Color.White;
            this.Btn_Print.AppearancePressed.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Print.AppearancePressed.ForeColor = System.Drawing.Color.Black;
            this.Btn_Print.AppearancePressed.Options.UseBackColor = true;
            this.Btn_Print.AppearancePressed.Options.UseBorderColor = true;
            this.Btn_Print.AppearancePressed.Options.UseFont = true;
            this.Btn_Print.AppearancePressed.Options.UseForeColor = true;
            this.Btn_Print.AppearancePressed.Options.UseTextOptions = true;
            this.Btn_Print.AppearancePressed.TextOptions.WordWrap = DevExpress.Utils.WordWrap.NoWrap;
            this.Btn_Print.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Print.ImageOptions.Image")));
            this.Btn_Print.Location = new System.Drawing.Point(134, 21);
            this.Btn_Print.Name = "Btn_Print";
            this.Btn_Print.Size = new System.Drawing.Size(147, 36);
            this.Btn_Print.TabIndex = 142;
            this.Btn_Print.Text = "طباعة التقرير";
            this.Btn_Print.Click += new System.EventHandler(this.Btn_Print_Click);
            // 
            // DateTo
            // 
            this.DateTo.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.DateTo.CustomFormat = "   dd/MM/yyyy       *      tt  mm:hh    ";
            this.DateTo.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DateTo.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.DateTo.Location = new System.Drawing.Point(486, 49);
            this.DateTo.Name = "DateTo";
            this.DateTo.Size = new System.Drawing.Size(138, 26);
            this.DateTo.TabIndex = 139;
            this.DateTo.Value = new System.DateTime(2020, 2, 23, 0, 0, 0, 0);
            // 
            // gridControl1
            // 
            this.gridControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridControl1.Location = new System.Drawing.Point(-3, 93);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.gridControl1.Size = new System.Drawing.Size(971, 431);
            this.gridControl1.TabIndex = 144;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Appearance.FocusedRow.Font = new System.Drawing.Font("Arial", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridView1.Appearance.FocusedRow.FontSizeDelta = 1;
            this.gridView1.Appearance.FocusedRow.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.gridView1.Appearance.FocusedRow.Options.UseFont = true;
            this.gridView1.Appearance.GroupRow.Font = new System.Drawing.Font("Arial", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridView1.Appearance.GroupRow.FontSizeDelta = 1;
            this.gridView1.Appearance.GroupRow.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.gridView1.Appearance.GroupRow.Options.UseFont = true;
            this.gridView1.Appearance.GroupRow.Options.UseTextOptions = true;
            this.gridView1.Appearance.GroupRow.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridView1.Appearance.HeaderPanel.Font = new System.Drawing.Font("Arial", 16.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridView1.Appearance.HeaderPanel.FontSizeDelta = 1;
            this.gridView1.Appearance.HeaderPanel.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.gridView1.Appearance.HeaderPanel.ForeColor = System.Drawing.Color.Black;
            this.gridView1.Appearance.HeaderPanel.Options.UseFont = true;
            this.gridView1.Appearance.HeaderPanel.Options.UseForeColor = true;
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridView1.Appearance.Row.Font = new System.Drawing.Font("Arial", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridView1.Appearance.Row.FontSizeDelta = 1;
            this.gridView1.Appearance.Row.FontStyleDelta = System.Drawing.FontStyle.Bold;
            this.gridView1.Appearance.Row.Options.UseFont = true;
            this.gridView1.Appearance.Row.Options.UseTextOptions = true;
            this.gridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Appearance.Row.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridView1.Appearance.TopNewRow.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridView1.Appearance.TopNewRow.Options.UseFont = true;
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // Frm_ReportAdujstmentBalance
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(970, 523);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.DateFrom);
            this.Controls.Add(this.btn_Search);
            this.Controls.Add(this.Btn_Print);
            this.Controls.Add(this.DateTo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "Frm_ReportAdujstmentBalance";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "تقرير تسوية رصيد للاصناف";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker DateFrom;
        public DevExpress.XtraEditors.SimpleButton btn_Search;
        public DevExpress.XtraEditors.SimpleButton Btn_Print;
        private System.Windows.Forms.DateTimePicker DateTo;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
    }
}