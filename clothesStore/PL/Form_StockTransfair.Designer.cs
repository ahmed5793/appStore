namespace clothesStore.PL
{
    partial class Form_StockTransfair
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
            this.label2 = new System.Windows.Forms.Label();
            this.txt_addbalance = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Cmb_StrockTo = new System.Windows.Forms.ComboBox();
            this.btn_save = new System.Windows.Forms.Button();
            this.txt_CurrentBalance1 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txt_reason = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.Date_insert = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.cmb_StockFrom = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Black;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(234, 127);
            this.label2.Name = "label2";
            this.label2.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label2.Size = new System.Drawing.Size(159, 24);
            this.label2.TabIndex = 87;
            this.label2.Text = "رصيد الخزنة الحالى هو:";
            // 
            // txt_addbalance
            // 
            this.txt_addbalance.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txt_addbalance.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_addbalance.Location = new System.Drawing.Point(28, 171);
            this.txt_addbalance.Multiline = true;
            this.txt_addbalance.Name = "txt_addbalance";
            this.txt_addbalance.Size = new System.Drawing.Size(195, 28);
            this.txt_addbalance.TabIndex = 86;
            this.txt_addbalance.Text = "0";
            this.txt_addbalance.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txt_addbalance.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.Txt_addbalance_KeyPress);
            // 
            // label8
            // 
            this.label8.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Black;
            this.label8.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.White;
            this.label8.Location = new System.Drawing.Point(237, 175);
            this.label8.Name = "label8";
            this.label8.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label8.Size = new System.Drawing.Size(130, 22);
            this.label8.TabIndex = 85;
            this.label8.Text = "المبلغ المراد تحويله";
            // 
            // textBox1
            // 
            this.textBox1.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.textBox1.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(28, 125);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(195, 31);
            this.textBox1.TabIndex = 84;
            this.textBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Black;
            this.label1.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(238, 90);
            this.label1.Name = "label1";
            this.label1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label1.Size = new System.Drawing.Size(116, 22);
            this.label1.TabIndex = 83;
            this.label1.Text = "تحويل الى الخزنة";
            // 
            // Cmb_StrockTo
            // 
            this.Cmb_StrockTo.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.Cmb_StrockTo.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.Cmb_StrockTo.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.Cmb_StrockTo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.Cmb_StrockTo.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Cmb_StrockTo.FormattingEnabled = true;
            this.Cmb_StrockTo.Location = new System.Drawing.Point(28, 87);
            this.Cmb_StrockTo.Name = "Cmb_StrockTo";
            this.Cmb_StrockTo.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.Cmb_StrockTo.Size = new System.Drawing.Size(195, 27);
            this.Cmb_StrockTo.TabIndex = 82;
            this.Cmb_StrockTo.SelectedIndexChanged += new System.EventHandler(this.Cmb_StrockTo_SelectedIndexChanged);
            // 
            // btn_save
            // 
            this.btn_save.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.btn_save.BackColor = System.Drawing.Color.Black;
            this.btn_save.Font = new System.Drawing.Font("Arial", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_save.ForeColor = System.Drawing.Color.Yellow;
            this.btn_save.Location = new System.Drawing.Point(118, 412);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(143, 51);
            this.btn_save.TabIndex = 81;
            this.btn_save.Text = "حفظ العملية";
            this.btn_save.UseVisualStyleBackColor = false;
            this.btn_save.Click += new System.EventHandler(this.Btn_save_Click);
            // 
            // txt_CurrentBalance1
            // 
            this.txt_CurrentBalance1.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txt_CurrentBalance1.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_CurrentBalance1.Location = new System.Drawing.Point(28, 50);
            this.txt_CurrentBalance1.Multiline = true;
            this.txt_CurrentBalance1.Name = "txt_CurrentBalance1";
            this.txt_CurrentBalance1.ReadOnly = true;
            this.txt_CurrentBalance1.Size = new System.Drawing.Size(195, 31);
            this.txt_CurrentBalance1.TabIndex = 80;
            this.txt_CurrentBalance1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label7
            // 
            this.label7.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Black;
            this.label7.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(229, 304);
            this.label7.Name = "label7";
            this.label7.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label7.Size = new System.Drawing.Size(97, 22);
            this.label7.TabIndex = 79;
            this.label7.Text = "سبب التحويل:";
            // 
            // txt_reason
            // 
            this.txt_reason.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.txt_reason.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_reason.Location = new System.Drawing.Point(28, 277);
            this.txt_reason.Multiline = true;
            this.txt_reason.Name = "txt_reason";
            this.txt_reason.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txt_reason.Size = new System.Drawing.Size(195, 73);
            this.txt_reason.TabIndex = 77;
            this.txt_reason.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Black;
            this.label4.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(237, 217);
            this.label4.Name = "label4";
            this.label4.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label4.Size = new System.Drawing.Size(101, 22);
            this.label4.TabIndex = 75;
            this.label4.Text = "تاريخ التحويل:";
            // 
            // Date_insert
            // 
            this.Date_insert.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.Date_insert.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Date_insert.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.Date_insert.Location = new System.Drawing.Point(28, 217);
            this.Date_insert.Name = "Date_insert";
            this.Date_insert.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.Date_insert.Size = new System.Drawing.Size(195, 26);
            this.Date_insert.TabIndex = 74;
            // 
            // label5
            // 
            this.label5.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Black;
            this.label5.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(238, 15);
            this.label5.Name = "label5";
            this.label5.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label5.Size = new System.Drawing.Size(115, 22);
            this.label5.TabIndex = 73;
            this.label5.Text = "تحويل من الخزنة";
            // 
            // cmb_StockFrom
            // 
            this.cmb_StockFrom.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.cmb_StockFrom.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cmb_StockFrom.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cmb_StockFrom.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_StockFrom.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmb_StockFrom.FormattingEnabled = true;
            this.cmb_StockFrom.Location = new System.Drawing.Point(28, 12);
            this.cmb_StockFrom.Name = "cmb_StockFrom";
            this.cmb_StockFrom.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.cmb_StockFrom.Size = new System.Drawing.Size(195, 27);
            this.cmb_StockFrom.TabIndex = 72;
            this.cmb_StockFrom.SelectedIndexChanged += new System.EventHandler(this.Cmb_StockFrom_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Black;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(228, 53);
            this.label3.Name = "label3";
            this.label3.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.label3.Size = new System.Drawing.Size(159, 24);
            this.label3.TabIndex = 71;
            this.label3.Text = "رصيد الخزنة الحالى هو:";
            // 
            // Form_StockTransfair
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.DarkGoldenrod;
            this.ClientSize = new System.Drawing.Size(406, 479);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txt_addbalance);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Cmb_StrockTo);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.txt_CurrentBalance1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txt_reason);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.Date_insert);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cmb_StockFrom);
            this.Controls.Add(this.label3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(422, 518);
            this.MinimumSize = new System.Drawing.Size(422, 518);
            this.Name = "Form_StockTransfair";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "تحويل رصيد من خزنة إلى خزنة أخرى";
            this.Load += new System.EventHandler(this.Form_StockTransfair_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_addbalance;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox Cmb_StrockTo;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.TextBox txt_CurrentBalance1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txt_reason;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker Date_insert;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmb_StockFrom;
        private System.Windows.Forms.Label label3;
    }
}