﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using clothesStore.Bl;
using System.Globalization;


namespace clothesStore.PL
{
    public partial class FrmOrderReturnAllProduct : Form
    {
        Customer Cm = new Customer();
        Masrofat m = new Masrofat();
        Stock s = new Stock();
        Order o = new Order();
        Store Store = new Store(); 
        Proudect p = new Proudect();
        DataTable dt = new DataTable();
        DataTable dt10 = new DataTable();
        DataTable dt4 = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt6 = new DataTable();
        DataTable data5 = new DataTable();
        void ComboStock()
        {
            cmb_Stock.DataSource = s.Compo_Stock();
            cmb_Stock.DisplayMember = "Treasury_name";
            cmb_Stock.ValueMember = "id_Treasury";
        }
        void clear()
        {
            txt_Name.Clear();

            Txt_TotalReturn.Text = "0";
            Txt_Pay.Text = "0";
            dt10.Clear();
            txt_transport.Clear();
            txt_trkeb.Clear();
            txt_totaldiscount.Clear();
            txt_totalinvoice.Clear();
            Txt_Pay.Clear();

        }
        void SelectDataTable()
        {
            dt10.Columns.Add("رقم الصنف");//0
            dt10.Columns.Add("إسم الصنف");//1
            dt10.Columns.Add("الكمية المرتجعه");//2
            dt10.Columns.Add("سعر البيع");//3
            dt10.Columns.Add("إلاجمالى");//4
         //   Dgv_Return.DataSource = dt10;
        }
        //void ComboStore()
        //{
        //    Cmb_Store.DataSource = Store.Select_ComboStore();
        //    Cmb_Store.DisplayMember = "Store_Name";
        //    Cmb_Store.ValueMember = "Store_Id";
        //}
       
        void Select_IdOrder()
        {
            comboBox1.DataSource = o.SelectIdOrder();
            comboBox1.DisplayMember = "ID_Order";
            comboBox1.ValueMember = "ID_Order";
        }
        public FrmOrderReturnAllProduct()
        {
            InitializeComponent();
            Select_IdOrder();
            SelectDataTable();
            ComboStock();
            txt_sales.Text = Program.salesman;
        }

        private void FrmOrderReturn_Load(object sender, EventArgs e)
        {     
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try {
                clear();
                dt2.Clear();
                if (comboBox1.Text != "")
                {
                    dt2 = o.VildateID_Order(Convert.ToInt32(comboBox1.SelectedValue));
                    if (dt2.Rows.Count == 0)
                    {
                        MessageBox.Show(" رقم الفاتورة غير موجود ف الفواتير ", "", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);

                        comboBox1.SelectAll();
                        comboBox1.Focus();
                        return;

                    }
                }        
                dt1.Clear();
                dt1 = o.SelectOrderReturn(Convert.ToInt32(comboBox1.SelectedValue));
                dt2.Clear();
                dt2 = o.SelectProdRuturnOrder(Convert.ToInt32(comboBox1.SelectedValue));
                foreach (DataRow dr in dt1.Rows)
                {
                    txt_IDOrder.Text = dr["ID_Order"].ToString();
                    txt_Name.Text = dr["Name"].ToString();
                    txt_sales.Text = Program.salesman ;
                    txt_transport.Text = dr["AddService"].ToString();
                    txt_trkeb.Text = dr["AddNa2l"].ToString();
                    txt_totaldiscount.Text = dr["total_Discount"].ToString();
                    txt_totalinvoice.Text = dr["total_AfterDisc"].ToString();
                    Txt_TotalReturn.Text = dr["total_AfterDisc"].ToString();
                   textBox1.Text = dr["pay"].ToString();
                    txt_NumCust.Text = dr["ID_Cust"].ToString();
                    Id_Stock.Text = dr["Id_Stock"].ToString();


                }
                dataGridView1.DataSource = dt2;
                    dataGridView1.Columns[0].Visible = false;
                dt6.Clear();
                dt6 = Cm.Select_CustomerBalance(Convert.ToInt32(txt_NumCust.Text));
                Txt_CustBalance.Text = dt6.Rows[0][1].ToString();
                if (Convert.ToDecimal(dt6.Rows[0][1]) >= 0)
                {
                    label16.Text = "عليه";
                }
                else if (Convert.ToDecimal(dt6.Rows[0][1]) < 0)
                {
                    label16.Text = "له";

                }

                //Cmb_Store.Text = dt2.Rows[0][10].ToString();             
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
            }
            
            }

        private void dataGridView1_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.Rows.Count > 0)
                {
                    decimal y = Convert.ToDecimal(dataGridView1.CurrentRow.Cells[7].Value) / Convert.ToDecimal(dataGridView1.CurrentRow.Cells[4].Value);
                    //Txt_IdProduct.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                    //txt_nameProduct.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                    //txt_prise.Text = y.ToString();
                    //txt_quantity.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
                    //txt_amount.Text = dataGridView1.CurrentRow.Cells[7].Value.ToString();
                    //dt.Clear();
                    //dt = Store.Select_ProductQuntity(Convert.ToInt32(Txt_IdProduct.Text));
                    //txt_totalQuantity.Text = dt.Rows[0][0].ToString();

                }
            }
            catch
            {
                return;
            }
        }

        private void txt_prise_KeyPress(object sender, KeyPressEventArgs e)
        {
            //if (e.KeyChar == '.' && txt_prise.Text.ToString().IndexOf('.') > -1)
            //{
            //    e.Handled = true;
            //}
            //else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            //{
            //    e.Handled = true;
            //}
        }

        private void txt_prise_Validated(object sender, EventArgs e)
        {
            //if (txt_prise.Text == "")
            //{
            //    MessageBox.Show("برجاء ادخال سعر الصنف");
            //    txt_prise.Focus();
            //}
        }

        private void txt_pay_TextChanged(object sender, EventArgs e)
        {
            //if (txt_pay.Text == "")
            //{
            //    txt_pay.Text = "0";
            //}
        }

        private void button4_Click(object sender, EventArgs e)
        {          
           
        }
        private void txt_return_TextChanged(object sender, EventArgs e)
        {

        }
        private void button3_Click(object sender, EventArgs e)
        {

        }
        private void txt_return_KeyPress(object sender, KeyPressEventArgs e)
        {
           
            if (!char.IsDigit(e.KeyChar)&&e.KeyChar!= 8 )
            {
                e.Handled = true;
            }

        }
        private void Txt_pay_Leave(object sender, EventArgs e)
        {
           
        }

        private void Btn_AddToReturn_Click(object sender, EventArgs e)
        {
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //try
           
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            Frm_SearchCustomerOrder frm = new Frm_SearchCustomerOrder();

            try
            {
                frm.ShowDialog();     
                if (frm.dataGridView1.SelectedRows.Count > 0 && frm.dataGridView1.Rows.Count > 0)
                {
                    clear();

                    dt1.Clear();
                    dt2.Clear();
                    dt1 = o.SelectOrderReturn(Convert.ToInt32(frm.dataGridView1.CurrentRow.Cells[0].Value));
                    dt2 = o.SelectProdRuturnOrder(Convert.ToInt32(frm.dataGridView1.CurrentRow.Cells[0].Value));
                    foreach (DataRow dr in dt1.Rows)
                    {
                        txt_IDOrder.Text = dr["ID_Order"].ToString();
                        txt_Name.Text = dr["Name"].ToString();
                        txt_NumCust.Text = dr["ID_Cust"].ToString();
                        txt_sales.Text = Program.salesman;
                        txt_transport.Text = dr["AddService"].ToString();
                        txt_trkeb.Text = dr["AddNa2l"].ToString();
                        Id_Stock.Text = dr["Id_Stock"].ToString();
                        txt_totaldiscount.Text = dr["total_Discount"].ToString();
                        txt_totalinvoice.Text = dr["total_AfterDisc"].ToString();
                        Txt_TotalReturn.Text = dr["total_AfterDisc"].ToString();
                        textBox1.Text = dr["pay"].ToString();

                    }
                    dataGridView1.DataSource = dt2;
                    dataGridView1.Columns[0].Visible = false;
                    dt6.Clear();
                    dt6 = Cm.Select_CustomerBalance(Convert.ToInt32(txt_NumCust.Text));
                    Txt_CustBalance.Text = dt6.Rows[0][1].ToString();
                    if (Convert.ToDecimal(dt6.Rows[0][1]) >= 0)
                    {
                        label16.Text = "عليه";
                    }
                    else if (Convert.ToDecimal(dt6.Rows[0][1]) < 0)
                    {
                        label16.Text = "له";

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Btn_OldReturn_Click(object sender, EventArgs e)
        {
            Frm_ShowOldReturnOrder frm_show = new Frm_ShowOldReturnOrder();
            try
            {

                if (txt_IDOrder.Text == "") { MessageBox.Show("لا بد من اختيار فاتورة"); return; }
                if (txt_NumCust.Text == "") { MessageBox.Show("لا بد من وجود رقم العميل"); return; }
                data5.Clear();
                data5 = o.Select_OldReturnOrder(Convert.ToInt32(txt_IDOrder.Text));
                if (data5.Rows.Count > 0 )
                {
                    frm_show.dataGridView1.DataSource = data5;
                    frm_show.ShowDialog();
                }
                else
                {
                    MessageBox.Show("لا يوجد مرتجع سابق لهذه الفاتورة");
                    return;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txt_QuantityReturn_Leave(object sender, EventArgs e)
        {
            
        }

        private void txt_QuantityReturn_Click(object sender, EventArgs e)
        {
           

        }

        private void Dgv_Return_RowsRemoved(object sender, DataGridViewRowsRemovedEventArgs e)
        {
        }

        private void Txt_TotalReturn_TextChanged(object sender, EventArgs e)
        {

        }

        private void Txt_TotalReturn_Click(object sender, EventArgs e)
        {
           
        }

        private void Txt_Pay_Click(object sender, EventArgs e)
        {
           
        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("هل تريد إسترجاع الفاتورة بالكامل", "إسترجاع الفاتورة بالكامل", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {


                    if (txt_IDOrder.Text == "") { MessageBox.Show("لا بد من اختيار فاتورة"); return; }
                    if (txt_NumCust.Text == "") { MessageBox.Show("لا بد من وجود رقم العميل"); return; }
                    if (txt_sales.Text == "") { txt_sales.Text = Program.salesman; }

                    if (Txt_Pay.Text == "") Txt_Pay.Text = "0" ;
       
                    if (dataGridView1.Rows.Count > 0)
                    {
                        for (int i = 0; i < dataGridView1.Rows.Count; i++)
                        {
                            data5.Clear();
                            data5 = o.SelectQuantityOFProductFromOrderReturn(Convert.ToInt32(txt_IDOrder.Text),
                                Convert.ToInt32(dataGridView1.Rows[i].Cells[1].Value));
                            if (data5.Rows.Count > 0)
                            {

                                //if (Convert.ToDecimal(data5.Rows[0][4]) + Convert.ToDecimal(txt_QuantityReturn.Text)
                                //      > Convert.ToDecimal(txt_quantity.Text))
                                //{

                                MessageBox.Show("لقد تم استرجاع صنف من هذه الفاتورة من قبل او استرجعاها بالكامل ف لابد ان يتم المرتجع لكل صنف لوحده ");
                                return;

                                //}
                            }
                        }
                       
                        for (int i = 0; i < dataGridView1.Rows.Count; i++)
                        {
                            
                            o.AddOrderReturn(Convert.ToInt32(txt_IDOrder.Text), Convert.ToInt32(txt_NumCust.Text),
                                Convert.ToInt32(dataGridView1.Rows[i].Cells[1].Value),
                                Convert.ToDecimal(dataGridView1.Rows[i].Cells[4].Value),
                                dateTimePicker1.Value, Convert.ToDecimal(dataGridView1.Rows[i].Cells[3].Value),
                                Convert.ToDecimal(dataGridView1.Rows[i].Cells[5].Value)
                                , txt_sales.Text);

                            p.Update_ProductQuantityIncrease(Convert.ToInt32(dataGridView1.Rows[i].Cells[1].Value),
                                 Convert.ToDecimal(dataGridView1.Rows[i].Cells[4].Value));
                            
                            p.Add_MoveProduct(Convert.ToInt32(dataGridView1.Rows[i].Cells[1].Value),
                       Convert.ToInt32(dataGridView1.Rows[i].Cells[4].Value),
                       Convert.ToDecimal(dataGridView1.Rows[i].Cells[3].Value), 0,0, 0, 0, 0, 
                       "مرتجع مبيعات فاتورة رقم " + " " + txt_IDOrder.Text, dateTimePicker1.Value, Program.salesman, "دخول");



                        }
                        Login l = new Login();
                        l.addMoveUser(Program.salesman, this.Text, $"مرتجع مبيعات كامل رقم فاتورة {txt_IDOrder.Text} ");

                        DataTable dt51 = new DataTable();
                        dt51.Clear();
                        dt51 = Cm.Select_CustomerBalance(Convert.ToInt32(txt_NumCust.Text));
                        decimal mno = Convert.ToDecimal(dt51.Rows[0][1]) + (Convert.ToDecimal(Txt_Pay.Text) - Convert.ToDecimal(txt_totalinvoice.Text));
                        Cm.Update_CustomerTotalMoney(Convert.ToInt32(txt_NumCust.Text), mno);
                        Cm.Add_CustomerStatmentAccount(Convert.ToInt32(txt_NumCust.Text), Convert.ToDecimal(txt_totalinvoice.Text),
                          Convert.ToDecimal(Txt_Pay.Text), "مرتجع مبيعات للفاتورة رقم " + " " + txt_IDOrder.Text, dateTimePicker1.Value, mno, Program.salesman);
                        if (Convert.ToDecimal(Txt_Pay.Text)>0)
                        {
                            s.Add_StockPull(Convert.ToInt32(cmb_Stock.SelectedValue), Convert.ToDecimal(Txt_Pay.Text), dateTimePicker1.Value
                               , Program.salesman, "رصيد مسحوب من الخزنة", "مرتجع مبيعات للفاتورة رقم" + txt_IDOrder.Text);


                            s.InsertStockMove(Convert.ToDecimal(Txt_Pay.Text) * -1, dateTimePicker1.Value, "مرتجع مبيعات ", $"مرتجع  فاتورة مبيعات رقم {txt_IDOrder.Text} للعميل {txt_Name.Text}", Convert.ToInt32(cmb_Stock.SelectedValue), txt_sales.Text, "خروج من الخزينة", Convert.ToInt32(txt_IDOrder.Text));



                        }




                        ///////////////////////////////

                        o.Update_OrderNa2lAndTrkeb(Convert.ToInt32(comboBox1.Text), 0, 0);
                        if (Convert.ToDecimal(txt_transport.Text)>0 && txt_transport.Text != "")
                        {       
                        m.Update_masrof_N2al($"تكلفة نقل للفاتورة رقم {comboBox1.Text}", 0);
                        s.add_insertStock(Convert.ToInt32(Id_Stock.Text),Convert.ToDecimal(txt_transport.Text),dateTimePicker1.Value,
                            txt_sales.Text,"استرجاع قيمة النقل","إسترجاع قيمة مصروف النفل للفاتورة رقم"+comboBox1.Text);
                        }
                        if (Convert.ToDecimal(txt_trkeb.Text) > 0 && txt_trkeb.Text!="")
                        {
                            m.Update_masrof_N2al($"تكلفة تركيب للفاتورة رقم {comboBox1.Text}", 0);
                            s.add_insertStock(Convert.ToInt32(Id_Stock.Text), Convert.ToDecimal(txt_transport.Text), dateTimePicker1.Value,
                             txt_sales.Text, "استرجاع قيمة التركيب", "إسترجاع قيمة مصروف التركيب للفاتورة رقم" + comboBox1.Text);
                        }
                        //////////////////////////////
                        MessageBox.Show("تم حفظ المرتجع بنجاح", "عمليه مرتجع مبيعات", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);


                    }
                    else
                    {
                        MessageBox.Show("لا بد من إختيار فاتورة");
                    }
                    comboBox1.DataSource = o.SelectIdOrder();
                    clear();
                    dataGridView1.Columns.Clear();
                }
                else
                {
                    MessageBox.Show("تم إلغاء عملية إسترجاع الفاتورة بالكامل");
                    return;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Dgv_Return_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Txt_Pay_Leave_1(object sender, EventArgs e)
        {
            if (Txt_Pay.Text=="")
            {
                Txt_Pay.Text = "0";
            }
        }

        private void Txt_Pay_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8)
            {
                e.Handled = true;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }




} 
  
