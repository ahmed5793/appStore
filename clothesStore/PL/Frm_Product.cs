﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using clothesStore.Bl;
using System.IO;

namespace clothesStore.PL
{
    public partial class Frm_Product : DevExpress.XtraEditors.XtraForm
    {
        Proudect P = new Proudect();
        Category C = new Category();
        unit U = new unit();
        Store S = new Store();
        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();
        Login l = new Login();
        void CrateBarcode()
        {
            try
            {

                Txt_Barcode.Clear();

                dt3.Clear();
                    dt3 = P.selectLastBarcode();

                    if (dt3.Rows.Count <= 0)
                    {
                        Txt_Barcode.Text = "100000";

                        P.add_randomBarcode("100000");
                    }
                    else
                    {
                        Txt_Barcode.Text = (Convert.ToInt32(dt3.Rows[0][0]) + 1).ToString();

                        P.Update_Barcode(Convert.ToInt32(dt3.Rows[0][0]).ToString() + 1);

                    }
                

            }
            catch (Exception EX)
            {

                MessageBox.Show(EX.Message);
                MessageBox.Show(EX.StackTrace);
            }
        }
        public Frm_Product()
        {
            InitializeComponent();

            //CrateBarcode();
            //label5.Hide();
          //  Txt_Barcode.Enabled=false;
            //simpleButton2.Hide();
            //Btn_PrintBarcode.Hide();
            gridControl1.DataSource = P.selectProudect();
            //gridView1.Columns[8].Visible = false;
            //dataGridViewPR.Columns[6].Visible = false;
            //dataGridViewPR.Columns[10].Visible = false;
            //dataGridViewPR.Columns[12].Visible = false;
            ComboCategory();
            //ComboLargeUnit();
            //ComboSmallUnit();
            //Combo_Store();
            btn_Update.Enabled = false;
            Btn_Delete.Enabled = false;
        }
        //void SelectdataTable()
        //{
        //    dt2.Columns.Add("رقم المخزن");//0
        //    dt2.Columns.Add("اسم المخزن");//1
        //    dt2.Columns.Add("الكمية");//2
        //    dt2.Columns.Add("سعر الشراء");//3
        //    DgvStore.DataSource = dt2;
        //}
        void ComboCategory()
        {
            Cmb_Category.DataSource = C.Select_ComboCategory();
            Cmb_Category.DisplayMember = "Category_Name";
            Cmb_Category.ValueMember = "Category_Id";
            Cmb_Category.SelectedIndex = -1;

        }
        //void ComboLargeUnit()
        //{
        //    Cmb_LargeUnit.DataSource = U.Select_ComboUnit();
        //    Cmb_LargeUnit.DisplayMember = "Unit_Name";
        //    Cmb_LargeUnit.ValueMember = "Unit_Id";
        //    Cmb_LargeUnit.SelectedIndex = -1;

        //}
        //void ComboSmallUnit()
        //{
        //    Cmb_SmallUnit.DataSource = U.Select_ComboUnit();
        //    Cmb_SmallUnit.DisplayMember = "Unit_Name";
        //    Cmb_SmallUnit.ValueMember = "Unit_Id";
        //    Cmb_SmallUnit.SelectedIndex = -1;

        //}
        //void Combo_Store()
        //{
        //    Cmb_Store.DataSource = S.Select_ComboStore();
        //    Cmb_Store.DisplayMember = "Store_Name";
        //    Cmb_Store.ValueMember = "Store_Id";
        //    Cmb_Store.SelectedIndex = -1;

        //}
        //void Calc_AllQty()
        //{
        //    decimal total = 0;
        //    for (int i = 0; i <= DgvStore.Rows.Count - 1; i++)
        //    {
        //        total += Convert.ToDecimal(DgvStore.Rows[i].Cells[2].Value);
        //    }
        //    Txt_Quantity.Text = total.ToString();
        //}
        private void simpleButton1_Click(object sender, EventArgs e)
        {
            Frm_Category Frm_Cat = new Frm_Category();
            Frm_Cat.ShowDialog();
            ComboCategory();
            gridControl1.DataSource = P.selectProudect();
        }

        //private void simpleButton2_Click(object sender, EventArgs e)
        //{
        //    Frm_Unit frm_Unit = new Frm_Unit();
        //    frm_Unit.ShowDialog();
        //    //ComboLargeUnit();
        //    //ComboSmallUnit();
        //}
        internal void clear()
        {
            pictureLogo.BackgroundImage = Properties.Resources.image_not_found_scaled_1150x647;
            pictureLogo.Image = Properties.Resources.image_not_found_scaled_1150x647;
            imagePath = "";
            txtProName.Text = "";
            Txt_Quantity.Text = "0";
            Txt_minimun.Text = "0";
            Txt_PhurshasingPrice.Text = "0";
            //Txt_PurshLargeUnit.Text = "0";
            Txt_Color.Text = "";
            Txt_SellPrice.Text = "0";
            //Txt_PurshLargeUnit.Text = "0";
            //Txt_QtyLargeUnit.Text = "0";
            Cmb_Category.SelectedIndex = -1;
            //Cmb_LargeUnit.SelectedIndex = -1;
            //Cmb_SmallUnit.SelectedIndex = -1;
            //Cmb_Store.SelectedIndex = -1;
            txtID.Clear();
            //txt_search.Clear();
            Txt_Barcode.Clear();
            //dt2.Clear();

        }
        //private void btnAddQty_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        if (Cmb_Store.Text != "" || Txt_QtyLargeUnit.Text != "0" || Txt_PurshLargeUnit.Text!="0" )
        //        {
        //            if (Convert.ToDecimal(Txt_PurshLargeUnit.Text)> Convert.ToDecimal(Txt_PhurshasingPrice.Text))
        //            {
        //                MessageBox.Show(" لا بد ان يكون سعر الشراء أقل من سعر البيع لعدم حدوث خسارة");
        //                return;
        //            }
        //            if (Txt_QtyLargeUnit.Text=="" || Txt_QtyLargeUnit.Text=="0")
        //            {
        //                MessageBox.Show("لا بد ان تكون الكمية أكبر من الصفر");
        //                return;
        //            }
        //            if (Txt_PurshLargeUnit.Text == "" || Txt_PurshLargeUnit.Text == "0")
        //            {
        //                MessageBox.Show("لا بد من تحديد سعر الشراء");
        //                return;
        //            }
        //            for (int i = 0; i < DgvStore.Rows.Count; i++)
        //                {
        //                    if (DgvStore.Rows[i].Cells[0].Value == Cmb_Store.SelectedValue || DgvStore.Rows[i].Cells[1].Value.ToString() == Cmb_Store.Text)
        //                    {
        //                        MessageBox.Show(" لقد تم إضافة هذا الصنف فى نفس المخزن من قبل");
        //                        return;
        //                    }
        //                }
                   
        //            DataRow R = dt2.NewRow();
        //            R[0] = Cmb_Store.SelectedValue;
        //            R[1] = Cmb_Store.Text;
        //            R[2] = Txt_QtyLargeUnit.Text;
        //            R[3] = Txt_PurshLargeUnit.Text;
        //            dt2.Rows.Add(R);
        //            DgvStore.DataSource = dt2;
        //            Calc_AllQty();
        //            Txt_QtyLargeUnit.Text = "0";
        //            Txt_PurshLargeUnit.Text = "0";
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}
        private void Txt_sellingLargeUnit_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '.' && Txt_PhurshasingPrice.Text.ToString().IndexOf('.') > -1)
            {
                e.Handled = true;
            }
            else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            {
                e.Handled = true;
            }
        }
        //private void Txt_PurshLargeUnit_KeyPress(object sender, KeyPressEventArgs e)
        //{
        //    if (e.KeyChar == '.' && Txt_PurshLargeUnit.Text.ToString().IndexOf('.') > -1)
        //    {
        //        e.Handled = true;
        //    }
        //    else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
        //    {
        //        e.Handled = true;
        //    }
        //}
        private void Txt_AllQuantity_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '.' &&Txt_Quantity.Text.ToString().IndexOf('.') > -1)
            {
                e.Handled = true;
            }
            else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            {
                e.Handled = true;
            }
        }

        private void Txt_minimun_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '.' && Txt_minimun.Text.ToString().IndexOf('.') > -1)
            {
                e.Handled = true;
            }
            else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            {
                e.Handled = true;
            }
        }

        //private void numbersmallUnit_KeyPress(object sender, KeyPressEventArgs e)
        //{
        //    if (e.KeyChar == '.' && numbersmallUnit.Text.ToString().IndexOf('.') > -1)
        //    {
        //        e.Handled = true;
        //    }
        //    else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
        //    {
        //        e.Handled = true;
        //    }
        //}

        private void PriceSmallUnit_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }


        private void Txt_sellingLargeUnit_Click(object sender, EventArgs e)
        {
            if (Txt_PhurshasingPrice.Text == "0")
            {
                Txt_PhurshasingPrice.Text = "";
            }
        }

        private void Txt_sellingLargeUnit_Leave(object sender, EventArgs e)
        {
            if (Txt_PhurshasingPrice.Text == "")
            {
                Txt_PhurshasingPrice.Text = "0";
            }
        }

        private void Txt_PurshLargeUnit_Click(object sender, EventArgs e)
        {
            //if (Txt_PurshLargeUnit.Text == "0")
            //{
            //    Txt_PurshLargeUnit.Text = "";
            //}
        }

        private void Txt_PurshLargeUnit_Leave(object sender, EventArgs e)
        {
            //if (Txt_PurshLargeUnit.Text == "")
            //{
            //    Txt_PurshLargeUnit.Text = "0";
            //}
        }

        private void Txt_minimun_Leave(object sender, EventArgs e)
        {
            if (Txt_minimun.Text == "")
            {
                Txt_minimun.Text = "0";
            }
        }

        private void Txt_minimun_Click(object sender, EventArgs e)
        {
            if (Txt_minimun.Text == "0")
            {
                Txt_minimun.Text = "";
            }
        }

        private void numbersmallUnit_Leave(object sender, EventArgs e)
        {
            //if (numbersmallUnit.Text == "")
            //{
            //    numbersmallUnit.Text = "1";
            //}
        }

        private void numbersmallUnit_Click(object sender, EventArgs e)
        {
        }

        private void PriceSmallUnit_Leave(object sender, EventArgs e)
        {
          
        }

        private void PriceSmallUnit_Click(object sender, EventArgs e)
        {
           
        }
        private void numbersmallUnit_KeyUp(object sender, KeyEventArgs e)
        {
            //    try
            //    {
            //        if (numbersmallUnit.Text == "" || numbersmallUnit.Text == "0")
            //        {
            //            Txt_Color.Text = Txt_PhurshasingPrice.Text;
            //        }
            //        else if (Txt_PhurshasingPrice.Text != "" && numbersmallUnit.Text != "")
            //        {
            //            Txt_Color.Text = (Convert.ToDecimal(Txt_PhurshasingPrice.Text) / Convert.ToInt32(numbersmallUnit.Text)).ToString();
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        MessageBox.Show(ex.Message);
            //        MessageBox.Show(ex.StackTrace);
            //    }
        }
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
        }
        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
        }

        private void Txt_QtyLargeUnit_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            //if (e.KeyChar == '.' && Txt_QtyLargeUnit.Text.ToString().IndexOf('.') > -1)
            //{
            //    e.Handled = true;
            //}
            //if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            //{
            //    e.Handled = true;
            //}
        }

        private void Txt_QtyLargeUnit_KeyUp_1(object sender, KeyEventArgs e)
        {
            //try
            //{
            //    if (numbersmallUnit.Text == "")
            //    {
            //        MessageBox.Show("لا بد من كتابة عدد الوحدات الصغرى داخل الوحدة الكبرى ");
            //    }
            //    else if (numbersmallUnit.Text != "" && Txt_QtyLargeUnit.Text != "")
            //    {
            //        Txt_QtySmallUnit.Text = (Convert.ToDecimal(Txt_QtyLargeUnit.Text) * Convert.ToInt32(numbersmallUnit.Text)).ToString();
            //    }
            //}
            //catch (Exception)
            //{

            //    MessageBox.Show("");
            //}
        }

     

        private void Txt_QtyLargeUnit_Click(object sender, EventArgs e)
        {
            //if (Txt_QtyLargeUnit.Text == "0")
            //{
            //    Txt_QtyLargeUnit.Text = "";
            //}
        }

        private void Txt_QtyLargeUnit_Leave(object sender, EventArgs e)
        {
            //if (Txt_QtyLargeUnit.Text == "")
            //{
            //    Txt_QtyLargeUnit.Text = "0";
            //}
        }

        private void Txt_QtySmalUnitl_Leave(object sender, EventArgs e)
        {

        }

        private void Txt_QtySmalUnitl_Click(object sender, EventArgs e)
        {
        }
        private void Txt_QtySmalUnitl_KeyUp(object sender, KeyEventArgs e)
        {
        }
        private void DgvStore_RowsRemoved(object sender, DataGridViewRowsRemovedEventArgs e)
        {
            //Calc_AllQty();
        }
        private void btnRemoveStore_Click(object sender, EventArgs e)
        {
        }
        private void Btn_save_Click(object sender, EventArgs e)
        {
            try
            {
                //if (txtID.Text == "")
                //{
                //    MessageBox.Show("يرجي التاكد من اسم المنتج");
                //    txtProName.Focus();
                //    return;
                //}

                if (Txt_Barcode.Text!="")
                {


                    dt.Clear();
                    dt = P.VildateBarcode(Txt_Barcode.Text);


                    if (dt.Rows.Count > 0)

                    {
                        //textBox1.Text = dt.Rows[0][1].ToString();
                        MessageBox.Show(" هذا الباركود مسجل مع  صنف أخر   ");
                        Txt_Barcode.Focus();
                        Txt_Barcode.SelectAll();
                        return;
                    }

                }
                if (Convert.ToDecimal(Txt_PhurshasingPrice.Text) > Convert.ToDecimal(Txt_SellPrice.Text))
                {
                    MessageBox.Show(" لا بد ان يكون سعر الشراء أقل من سعر البيع لعدم حدوث خسارة");
                    return;
                }
                if (txtProName.Text == "")
                {
                    MessageBox.Show("يرجي التاكد من اسم المنتج");
                    txtProName.Focus();
                    return;
                }
                if (Cmb_Category.Text == "")
                {
                    MessageBox.Show("لا بد من إختيار تصنيف للصنف");
                    Cmb_Category.Focus();
                    return;
                }



                else if (Cmb_Category.Text != "" && txtProName.Text != "")
                {
                    //CrateBarcode();

                    if (imagePath == "")
                    {
                        imagePath = Application.StartupPath + @"\Resources" + @"\image-not-found-scaled-1150x647.png";

                    }

                    //convert image to byte save in db
                    FileStream filestream = new FileStream(imagePath, FileMode.Open, FileAccess.Read);
                    Byte[] bytestream = new Byte[filestream.Length];
                    filestream.Read(bytestream, 0, bytestream.Length);
                    filestream.Close();
                    DataTable dtid = new DataTable();
                  dtid=  P.addproudect(txtProName.Text, Convert.ToInt32(Cmb_Category.SelectedValue),
                        decimal.Parse(Txt_Quantity.Text), decimal.Parse(Txt_SellPrice.Text),
                        Convert.ToDecimal(Txt_PhurshasingPrice.Text), Convert.ToDecimal(Txt_minimun.Text),
                        (Txt_Color.Text), Txt_Barcode.Text,bytestream);
                    txtID.Text = dtid.Rows[0][0].ToString();

                    S.Add_StoreProduct(Convert.ToInt32(txtID.Text), Convert.ToDecimal(Txt_PhurshasingPrice.Text));

                    P.Add_MoveProduct(Convert.ToInt32(txtID.Text), Convert.ToInt32(Txt_Quantity.Text), Convert.ToDecimal(Txt_PhurshasingPrice.Text),
                        0,
                      decimal.Parse(Txt_SellPrice.Text), Convert.ToDecimal(Txt_Quantity.Text), Convert.ToDecimal(Txt_PhurshasingPrice.Text), decimal.Parse(Txt_SellPrice.Text), 
                      "مخزون اول المدة", DateTime.Now,
                    Program.salesman, "دخول");

                    if (Convert.ToDecimal(Txt_Quantity.Text)>0)
                    {
                        P.AddItemsFirstTerm(Convert.ToInt32(txtID.Text),txtProName.Text, Convert.ToInt32(Cmb_Category.SelectedValue),
                        decimal.Parse(Txt_Quantity.Text), decimal.Parse(Txt_SellPrice.Text),
                        Convert.ToDecimal(Txt_PhurshasingPrice.Text));
                    }

                    MessageBox.Show("تم اضافه الصنف بنجاح", "عمليه الاضافه", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);

                    l.addMoveUser(Program.salesman, this.Text, $"تسجيل صنف {txtProName.Text} بكمية {Txt_Quantity.Text}");
                    clear();
                gridControl1.DataSource = P.selectProudect();
                    Txt_Barcode.Enabled = true;


                }
                else
                {
                    MessageBox.Show("لا بد من وجود بيانات الصنف كاملة ");
                    return;
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
            }
        }

        private void txt_search_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    dt.Clear();
            //    dataGridViewPR.DataSource = P.searchForProduct(txt_search.Text);
            //  //= dt;
            //}
            //catch (Exception ex)
            //{

            //    MessageBox.Show(ex.Message);
            //}
        }

        private void dataGridViewPR_DoubleClick(object sender, EventArgs e)
        {
          
        }

        private void btn_Update_Click(object sender, EventArgs e)
        {
            try
            {
                //if (txtID.Text == "")
                //{
                //    MessageBox.Show("يرجي التاكد من اسم المنتج");
                //    txtProName.Focus();
                //    return;
                //}
                //dt.Clear();
                //dt = P.VildateBarcode(Txt_Barcode.Text);


                //if (dt.Rows.Count > 1)

                //{
                //    //textBox1.Text = dt.Rows[0][1].ToString();
                //    MessageBox.Show(" هذا الباركود مسجل مع  صنف أخر   ");
                //    Txt_Barcode.Focus();
                //    Txt_Barcode.SelectAll();
                //    return;
                //}
                if (txtProName.Text == "")
                {
                    MessageBox.Show("يرجي التاكد من اسم المنتج");
                    txtProName.Focus();
                    return;
                }
                if (Cmb_Category.Text == "")
                {
                    MessageBox.Show("لا بد من إختيار تصنيف للصنف");
                    Cmb_Category.Focus();
                    return;
                }
                if (Cmb_Category.Text == "")
                {
                    MessageBox.Show("لا بد من إختيار تصنيف للصنف");
                    Cmb_Category.Focus();
                    return;
                }
                //dt3.Clear();
                //dt3 = S.Validate_ProductStore(Convert.ToInt32(txtID.Text),
                //    Convert.ToDecimal(Txt_PhurshasingPrice.Text));

                //if (dt3.Rows.Count > 0)
                //{

                //S.Update_StoreProduct(Convert.ToInt32(txtID.Text),
                // Convert.ToDecimal(Txt_PhurshasingPrice.Text), Convert.ToDecimal(gridView1.GetFocusedRowCellValue("سعر الشراء")));

                //}

                if (MessageBox.Show("هل تريد تعديل الصنف", "عمليه التعديل", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
                {
                    if (imagePath=="")
                    {
                        P.Updateproudect(Convert.ToInt32(txtID.Text), txtProName.Text, Convert.ToInt32(Cmb_Category.SelectedValue),
                       Convert.ToDecimal(Txt_SellPrice.Text), Convert.ToDecimal(Txt_PhurshasingPrice.Text),
                      Convert.ToDecimal(Txt_minimun.Text), (Txt_Color.Text), Txt_Barcode.Text, (byte[])gridView1.GetFocusedRowCellValue("Image"));
                    }
                    else
                    {
                        FileStream filestream = new FileStream(imagePath, FileMode.Open, FileAccess.Read);
                        Byte[] bytestream = new Byte[filestream.Length];
                        filestream.Read(bytestream, 0, bytestream.Length);
                        filestream.Close();
                        P.Updateproudect(Convert.ToInt32(txtID.Text), txtProName.Text, Convert.ToInt32(Cmb_Category.SelectedValue),
                       Convert.ToDecimal(Txt_SellPrice.Text), Convert.ToDecimal(Txt_PhurshasingPrice.Text),
                       Convert.ToDecimal(Txt_minimun.Text), (Txt_Color.Text), Txt_Barcode.Text, bytestream);

                    }

                    l.addMoveUser(Program.salesman, this.Text, $"تعديل علي الاصناف");


                    MessageBox.Show("تم تعديل الصنف بنجاح", "عمليه التعديل", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                else
                {
                    MessageBox.Show("تم الغاء عمليه التعديل", "عمليه التعديل", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                gridControl1.DataSource = P.selectProudect();
                clear();
                Txt_PhurshasingPrice.Enabled = true;
                Btn_save.Enabled = true;
                btn_Update.Enabled = false;
                Btn_Delete.Enabled = false;
                Txt_Quantity.Enabled = true;
                Txt_Barcode.Enabled = true;



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
            }
        }
        private void Frm_Product_Load(object sender, EventArgs e)
        {
        }
        private void Btn_New_Click(object sender, EventArgs e)
        {
            clear();
            Btn_save.Enabled=true;
            Txt_PhurshasingPrice.Enabled=true;
            btn_Update.Enabled = false;
            Btn_Delete.Enabled = false;
            //DgvStore.Enabled = true;
            //Cmb_Store.Enabled = true;
            //btnAddQty.Enabled = true;
            Txt_Quantity.Enabled = true;
            Txt_Barcode.Enabled = true;

        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        //private void Txt_sellingLargeUnit_KeyUp(object sender, KeyEventArgs e)
        //{
        //    try
        //    {
        //        if (numbersmallUnit.Text == "" || numbersmallUnit.Text == "0")
        //        {
        //            Txt_Color.Text = Txt_PhurshasingPrice.Text;
        //        }
        //        else if (Txt_PhurshasingPrice.Text != "" && numbersmallUnit.Text != "")
        //        {
        //            Txt_Color.Text = (Convert.ToDecimal(Txt_PhurshasingPrice.Text) / Convert.ToInt32(numbersmallUnit.Text)).ToString();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //        MessageBox.Show(ex.StackTrace);
        //    }
        //}

        private void Cmb_LargeUnit_Leave(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Cmb_Category_Leave(object sender, EventArgs e)
        {
            dt.Clear();
            if (Cmb_Category.Text != "")
            {
                dt= C.Validate_CategoryName(Convert.ToInt32(Cmb_Category.SelectedValue));
                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show(" اسم التنصيف الذى قمت باادخالة غير مسجل ", "", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                    Cmb_Category.SelectAll();
                    Cmb_Category.Focus();
                    return;

                }
            }
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            CrateBarcode();
        }

        private void Btn_PrintBarcode_Click(object sender, EventArgs e)
        {
            try
            {

                if (txtProName.Text == "" || Txt_Barcode.Text == "" || Txt_SellPrice.Text == "")
                {
                    MessageBox.Show("يرجى التاكد من البيانات");
                    return;
                }
                DataSet1 ds = new DataSet1();
                ds.Clear();
                if (Properties.Settings.Default.BarcodeSize== "مقاس كبير ")
                {
                    DataTable dt = new DataTable();
                    dt.Clear();
                    SettingPrint st = new SettingPrint();
                   dt= st.SelectSettingPrintOrder();
                    Rpt.Rpt_Large_Barcode cr = new Rpt.Rpt_Large_Barcode();
                    ds.Tables["PrintBarcode"].Rows.Add(txtProName.Text, "*" + Txt_Barcode.Text.Trim() + "*", Txt_Barcode.Text, Txt_SellPrice.Text);
                    cr.SetDataSource(ds);
                    Rpt.FrmSingleReport frm = new Rpt.FrmSingleReport();
                    cr.SetParameterValue("Text_Barcode", dt.Rows[0][0].ToString());
                    frm.crystalReportViewer1.ReportSource = cr;
                    frm.crystalReportViewer1.Refresh();
                    System.Drawing.Printing.PrintDocument printDocument = new System.Drawing.Printing.PrintDocument();
                    cr.PrintOptions.PrinterName = Properties.Settings.Default.PrintBarcode;
                    //cr.PrintOptions.PrinterName = printDocument.PrinterSettings.PrinterName;
                    cr.PrintToPrinter(Convert.ToInt32(Txt_Quantity.Text), true, 0, 0);
                }
               else if (Properties.Settings.Default.BarcodeSize == "مقاس وسط ")
                {

                    Rpt.Rpt_MidBarcode cr = new Rpt.Rpt_MidBarcode();
                    ds.Tables["PrintBarcode"].Rows.Add(txtProName.Text, "*" + Txt_Barcode.Text.Trim() + "*", Txt_Barcode.Text, Txt_SellPrice.Text);
                    cr.SetDataSource(ds);
                    Rpt.FrmSingleReport frm = new Rpt.FrmSingleReport();
                    frm.crystalReportViewer1.ReportSource = cr;
                    frm.crystalReportViewer1.Refresh();
                    System.Drawing.Printing.PrintDocument printDocument = new System.Drawing.Printing.PrintDocument();
                    cr.PrintOptions.PrinterName = Properties.Settings.Default.PrintBarcode;
                    //cr.PrintOptions.PrinterName = printDocument.PrinterSettings.PrinterName;
                    cr.PrintToPrinter(int.Parse(Txt_Quantity.Text), true, 0, 0);
                }
                //frm.ShowDialog();
            }
            catch (Exception EX)
            {

                MessageBox.Show(EX.Message);
                MessageBox.Show(EX.StackTrace);
            }
        }

        private void gridControl1_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                if (gridView1.RowCount > 0)
                {
                    Btn_save.Enabled = false;
                    btn_Update.Enabled = true;
                    Btn_Delete.Enabled = true;
                    Txt_Quantity.Enabled = false;
                    //Txt_Barcode.Enabled = false;
                    if (gridView1.GetFocusedRowCellValue("Image").ToString() != "")
                    {
                        byte[] image = (byte[])gridView1.GetFocusedRowCellValue("Image");
                        MemoryStream f = new MemoryStream(image);
                        pictureLogo.Image = Image.FromStream(f);
                    }
                  
                    txtID.Text = gridView1.GetFocusedRowCellValue("رقم الصنف").ToString();
                    Cmb_Category.Text = gridView1.GetFocusedRowCellValue("التصنيف").ToString();
                    txtProName.Text = gridView1.GetFocusedRowCellValue("إسم الصنف").ToString();
                    Txt_PhurshasingPrice.Text = gridView1.GetFocusedRowCellValue("سعر الشراء").ToString();
                    Txt_SellPrice.Text = gridView1.GetFocusedRowCellValue("سعر البيع").ToString();
                    Txt_minimun.Text = gridView1.GetFocusedRowCellValue("الحد الادنى").ToString();
                    Txt_Quantity.Text = Convert.ToInt32(gridView1.GetFocusedRowCellValue("الكمية")).ToString();
                    Txt_Color.Text = gridView1.GetFocusedRowCellValue("المقاس").ToString();
                    Txt_Barcode.Text = gridView1.GetFocusedRowCellValue("رقم الباركود").ToString();

                    //Txt_PhurshasingPrice.Enabled = false;
                  
                   
                    Btn_New.Show();
                }
            }
            catch (Exception )
            {
                return;
                //MessageBox.Show(ex.Message);
                //MessageBox.Show(ex.StackTrace);
            }
        }

        private void Btn_Delete_Click(object sender, EventArgs e)
        {
            try
            {
              

                if (MessageBox.Show("هل تريد حذف الصنف", "عمليه حذف صنف", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
                {
                    P.deleteProudectinUpdate(Convert.ToInt32(txtID.Text));


                    MessageBox.Show("تم حذف الصنف بنجاح");
                    l.addMoveUser(Program.salesman, this.Text, $"مسح صنف");

                }
                else
                {
                    MessageBox.Show("تم الغاء عمليه الحذف");
                }
                gridControl1.DataSource = P.selectProudect();
                clear();
                Btn_save.Enabled = true;
                Txt_PhurshasingPrice.Enabled = true;

                btn_Update.Enabled = false;
                Btn_Delete.Enabled = false;
                Txt_Quantity.Enabled = true;



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
               
            }
        }

        private void Txt_Quantity_Click(object sender, EventArgs e)
        {
            if (Txt_Quantity.Text=="0")
            {
                Txt_Quantity.Text = "";
            }
        }

        private void Txt_Quantity_Leave(object sender, EventArgs e)
        {
            if (Txt_Quantity.Text == "")
            {
                Txt_Quantity.Text = "0";
            }
        }

        private void Txt_SellPrice_Click(object sender, EventArgs e)
        {
            if (Txt_SellPrice.Text=="0")
            {
                Txt_SellPrice.Text = "";
            }
        }

        private void Txt_SellPrice_Leave(object sender, EventArgs e)
        {
            if (Txt_SellPrice.Text == "")
            {
                Txt_SellPrice.Text = "0";
            }
        }

        private void Txt_SellPrice_TextChanged(object sender, EventArgs e)
        {

        }

        private void Txt_SellPrice_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '.' && Txt_SellPrice.Text.ToString().IndexOf('.') > -1)
            {
                e.Handled = true;
            }
            else if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 && e.KeyChar != Convert.ToChar(System.Globalization.CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator))
            {
                e.Handled = true;
            }
        }

        private void Txt_Barcode_KeyPress(object sender, KeyPressEventArgs e)
        {
           
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != 8 )
            {
                e.Handled = true;
            }
        }

        private void txtID_TextChanged(object sender, EventArgs e)
        {

        }
        string imagePath = "";
        private void btndelete_Click(object sender, EventArgs e)
        {
            pictureLogo.BackgroundImage = Properties.Resources.image_not_found_scaled_1150x647;
            pictureLogo.Image = Properties.Resources.image_not_found_scaled_1150x647;
            imagePath = Application.StartupPath + @"\Resources" + @"\image-not-found-scaled-1150x647.png";
        }

        private void btnChoose_Click(object sender, EventArgs e)
        {

            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "All Files (*.*) | *.*";
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {

                imagePath = openFileDialog.FileName.ToString();
                pictureLogo.Image = null;
                pictureLogo.ImageLocation = imagePath;
            }
        }
    }
}
