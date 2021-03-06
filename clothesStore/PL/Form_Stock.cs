using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using clothesStore.Bl;

namespace clothesStore.PL
{

    public partial class Form_Stock : Form
    {
        Stock s = new Stock();
        public Form_Stock()
        {
            InitializeComponent();
            dataGridView1.DataSource = s.select_Stock();
            btn_new.Hide();
            btn_update.Enabled = false;
            textBox1.Text = s.Select_LastIdStock().Rows[0][0].ToString();
            if (textBox1.Text == "")
            {
                textBox1.Text = "1";
            }
        }

        private void Btn_save_Click(object sender, EventArgs e)
        {
            if (txt_name.Text == "")
            {
                MessageBox.Show("يرحى كتابة إسم الخزنة");
                return;

            }
            else
            {
                s.add_stock(Convert.ToInt32(textBox1.Text), txt_name.Text);
                s.add_stockData(Convert.ToInt32(textBox1.Text),Convert.ToDecimal(txt_balance.Text));
                Login l = new Login();
                l.addMoveUser(Program.salesman, this.Text, $"اضافه خزينة {txt_name.Text}");
                MessageBox.Show("تم إضافة الخزنة بنجاح");
                txt_name.Clear();
                dataGridView1.DataSource = s.select_Stock();
                textBox1.Text = s.Select_LastIdStock().Rows[0][0].ToString();


            }
        }

        private void DataGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {


                textBox1.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
                txt_name.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                txt_balance.Enabled = false;
                btn_save.Hide();
                btn_new.Show();
                btn_update.Enabled = true;
            }
        }

        private void Btn_update_Click(object sender, EventArgs e)
        {
            if (txt_name.Text == "")
            {
                MessageBox.Show("يرجى التاكد من إسم الخزنة");
                txt_name.Clear();
                btn_new.Hide();
                btn_save.Show();
                btn_update.Enabled = false;
                dataGridView1.DataSource = s.select_Stock();
            }
            else if (MessageBox.Show("هل تريد تعديل بيانات الخزنة", "عمليه التعديل", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
            {

                s.Update_Stock(Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value), txt_name.Text);
                Login l = new Login();
                l.addMoveUser(Program.salesman, this.Text, $"تعديل علي اسم الخزينة ");
                MessageBox.Show("تم تعديل الاسم");
                txt_name.Clear();
                btn_new.Hide();
                btn_save.Show();
                btn_update.Enabled = false;
                dataGridView1.DataSource = s.select_Stock();


            }
            else
            {
                MessageBox.Show("لم يتم التعديل", "عملية التعديل", MessageBoxButtons.OK);
                txt_name.Clear();
                btn_new.Hide();
                btn_save.Show();
                btn_update.Enabled = false;
                dataGridView1.DataSource = s.select_Stock();
            }
            textBox1.Text = s.Select_LastIdStock().Rows[0][0].ToString();
            txt_balance.Enabled = true;

        }

        private void Btn_new_Click(object sender, EventArgs e)
        {

            btn_new.Hide();
            btn_save.Show();
            btn_update.Enabled = false;
            txt_balance.Enabled = true;
            txt_name.Clear();
            textBox1.Text = s.Select_LastIdStock().Rows[0][0].ToString();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void txt_balance_TextChanged(object sender, EventArgs e)
        {
            if (txt_balance.Text=="")
            {
                txt_balance.Text = "0";
            }
        }

        private void txt_balance_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '.' && txt_balance.Text.ToString().IndexOf('.') > -1)
            {
                e.Handled = true;
            }
            else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar((System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator)))
            {
                e.Handled = true;
            }
        }
    }
}
