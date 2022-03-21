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
using System.Windows.Input;
using System.Data.SqlClient;
using System.IO;
using Microsoft.SqlServer.Server;
using System.Collections.Specialized;
using clothesStore.Bl;
using clothesStore.Serila;

namespace clothesStore.PL
{
    public partial class Frm_NewLogin : DevExpress.XtraEditors.XtraForm
    {
        Login l = new Login();
        Permession p = new Permession();
        Frm_Main frm_main = new Frm_Main();
        DataTable DT88 = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt = new DataTable();
        DataTable dt3 = new DataTable();
        DataTable dt4 = new DataTable();
        DataTable dt5 = new DataTable();
        DataTable dt6 = new DataTable();
        DataTable dt7 = new DataTable();
        DataTable dt8 = new DataTable();
        Order o = new Order();
        public Frm_NewLogin()
        {
            InitializeComponent();
            txt_User.Focus();
        }



        private void txt_User_Leave(object sender, EventArgs e)
        {

        }




        private void txt_Pass_TextChanged(object sender, EventArgs e)
        {

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

          

        }

        private void txt_Pass_Leave(object sender, EventArgs e)
        {

        }



        private void simpleButton2_Click(object sender, EventArgs e)
        {

            WindowState = FormWindowState.Minimized;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void bunifuThinButton2_Click(object sender, EventArgs e)
        {

        }


        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            try
            {
                dt2.Clear();
                dt2 = p.SelectUserProduct(txt_User.Text);
                if (dt2.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt2.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_addProduct.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt2.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_addProduct.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt2.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.Bnt_Minimum.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt2.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.Bnt_Minimum.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt2.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_BalanceAdjustment.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt2.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_BalanceAdjustment.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt2.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_RepAdjustmentbalance.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt2.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.Btn_RepAdjustmentbalance.Enabled = true;
                    }
                    /////////
                    if (Convert.ToInt32(dt2.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReportAllProduct.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt2.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_ReportAllProduct.Enabled = true;

                    }

                    if (Convert.ToInt32(dt2.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.btn_HarkaItems.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt2.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.btn_HarkaItems.Enabled = true;

                    }
                }
                // -------------------Part (2) -------------------------
                ///////



                dt3.Clear();
                dt3 = p.SelectUserClient(txt_User.Text);
                if (dt3.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt3.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_AddCust.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_AddCust.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt3.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.BtnAdd_CustomerMoney.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.BtnAdd_CustomerMoney.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt3.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_PayCustomer.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_PayCustomer.Enabled = true;
                    }

                    ///////

                    /////////
                    if (Convert.ToInt32(dt3.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_DebitCustomer.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.Btn_DebitCustomer.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt3.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_CustomerStatment.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt3.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_CustomerStatment.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt3.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.Btn_SarfMabl5ll3mel.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.Btn_SarfMabl5ll3mel.Enabled = true;
                    }
                    //////
                    ///
                    if (Convert.ToInt32(dt3.Rows[0][7]) == 0)
                    {
                        Frm_Main.getmain.Btn_AllCustomer.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt3.Rows[0][7]) == 1)
                    {
                        Frm_Main.getmain.Btn_AllCustomer.Enabled = true;
                    }

                }

                //---------------------------PART (3)-------------------------------


                dt4.Clear();
                dt4 = p.SelectUserSuppliers(txt_User.Text);
                if (dt4.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt4.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_AddSuppliers.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt4.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_AddSuppliers.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt4.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.btn_reportDataSupp.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt4.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.btn_reportDataSupp.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt4.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_AddSupplierMoney.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt4.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_AddSupplierMoney.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt4.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_PaySuppliers.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt4.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.Btn_PaySuppliers.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt4.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_SupplierStatment.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt4.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_SupplierStatment.Enabled = true;
                    }
                    /////
                    if (Convert.ToInt32(dt4.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.Btn_DebitSuppliers.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt4.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.Btn_DebitSuppliers.Enabled = true;
                    }
                }
                //------------------------Part (4)----------------------
                dt5.Clear();
                dt5 = p.selectUserOrder(txt_User.Text);
                if (dt5.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt5.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_SalesInnvoice.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt5.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_SalesInnvoice.Enabled = true;
                    }
                    /////
                    if (Convert.ToInt32(dt5.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReturnSales.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt5.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.Btn_ReturnSales.Enabled = true;
                    }
                    //////
                    if (Convert.ToInt32(dt5.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_AllOrder.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt5.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_AllOrder.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt5.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReportOrderReturn.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt5.Rows[0][4]) == 1)
                    {

                        Frm_Main.getmain.Btn_ReportOrderReturn.Enabled = true;
                    }
                    /////////
                    if (Convert.ToInt32(dt5.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_SalesArba7.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt5.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_SalesArba7.Enabled = true;
                    }

                    //////
                    if (Convert.ToInt32(dt5.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.Btn_UpdateOrder.Enabled = false;


                    }
                    else if (Convert.ToInt32(dt5.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.Btn_UpdateOrder.Enabled = true;

                    }
                    ////////////////
                    if (Convert.ToInt32(dt5.Rows[0][7]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReturnOrderAllProduct.Enabled = false;


                    }
                    else if (Convert.ToInt32(dt5.Rows[0][7]) == 1)
                    {
                        Frm_Main.getmain.Btn_ReturnOrderAllProduct.Enabled = true;

                    }


                }


                ///--------------------------Part (5)-------------------------------
                dt6.Clear();
                dt6 = p.selectUserPurshise(txt_User.Text);
                if (dt6.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt6.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_PurshasingInnvoice.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt6.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_PurshasingInnvoice.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt6.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.Btn_PurshasingReturn.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt6.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.Btn_PurshasingReturn.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt6.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_PurshasingMangement.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt6.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_PurshasingMangement.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt6.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReportpurshasingReturn.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt6.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.Btn_ReportpurshasingReturn.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt6.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_returnAllProduct.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt6.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_returnAllProduct.Enabled = true;
                    }
                }
                ////------------------------part (6)-------------------------
                ///
                dt7.Clear();
                dt7 = p.selectUserStock(txt_User.Text);
                if (dt7.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt7.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_AddNewStock.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt7.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_AddNewStock.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt7.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.Btn_Masrofat.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.Btn_Masrofat.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt7.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.Btn_TransfairStock.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.Btn_TransfairStock.Enabled = true;
                    }

                    /////
                    if (Convert.ToInt32(dt7.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.Btn_PresonalPull.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.Btn_PresonalPull.Enabled = true;
                    }


                    /////
                    if (Convert.ToInt32(dt7.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.Btn_Eradat.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.Btn_Eradat.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt7.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.btn_asol.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.Btn_TransfairStock.Enabled = true;
                    }


                    if (Convert.ToInt32(dt7.Rows[0][7]) == 0)
                    {
                        Frm_Main.getmain.Btn_EhlakElasol.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][7]) == 1)
                    {
                        Frm_Main.getmain.Btn_EhlakElasol.Enabled = true;
                    }


                    if (Convert.ToInt32(dt7.Rows[0][8]) == 0)
                    {
                        Frm_Main.getmain.Btn_ReportsMoney.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt7.Rows[0][8]) == 1)
                    {
                        Frm_Main.getmain.Btn_ReportsMoney.Enabled = true;
                    }

                }
                ///----------------------------part (7)---------------------------

                dt8.Clear();
                dt8 = p.selectUserFile(txt_User.Text);
                if (dt8.Rows.Count >= 1)
                {
                    if (Convert.ToInt32(dt8.Rows[0][1]) == 0)
                    {
                        Frm_Main.getmain.Btn_Backup.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt8.Rows[0][1]) == 1)
                    {
                        Frm_Main.getmain.Btn_Backup.Enabled = true;
                    }
                    ///////
                    if (Convert.ToInt32(dt8.Rows[0][2]) == 0)
                    {
                        Frm_Main.getmain.Btn_Restore.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt8.Rows[0][2]) == 1)
                    {
                        Frm_Main.getmain.Btn_Restore.Enabled = true;
                    }
                    ////////
                    if (Convert.ToInt32(dt8.Rows[0][3]) == 0)
                    {
                        Frm_Main.getmain.btn_Setting.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt8.Rows[0][3]) == 1)
                    {
                        Frm_Main.getmain.btn_Setting.Enabled = true;
                    }

                    ///////
                    if (Convert.ToInt32(dt8.Rows[0][4]) == 0)
                    {
                        Frm_Main.getmain.btn_managmentUser.Enabled = false;
                    }
                    else if (Convert.ToInt32(dt8.Rows[0][4]) == 1)
                    {
                        Frm_Main.getmain.btn_managmentUser.Enabled = true;
                    }

                    if (Convert.ToInt32(dt8.Rows[0][5]) == 0)
                    {
                        Frm_Main.getmain.btn_Permission.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt8.Rows[0][5]) == 1)
                    {
                        Frm_Main.getmain.btn_Permission.Enabled = true;
                    }
                    ////////////////
                    if (Convert.ToInt32(dt8.Rows[0][6]) == 0)
                    {
                        Frm_Main.getmain.Btn_DeleteAllData.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt8.Rows[0][6]) == 1)
                    {
                        Frm_Main.getmain.Btn_DeleteAllData.Enabled = true;
                    }
                    ///////////
                    if (Convert.ToInt32(dt8.Rows[0][7]) == 0)
                    {
                        Frm_Main.getmain.Btn_MoveUser.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt8.Rows[0][7]) == 1)
                    {
                        Frm_Main.getmain.Btn_MoveUser.Enabled = true;
                    }
                    ///////////////
                    if (Convert.ToInt32(dt8.Rows[0][8]) == 0)
                    {
                        Frm_Main.getmain.btn_ReciveMoney.Enabled = false;

                    }
                    else if (Convert.ToInt32(dt8.Rows[0][8]) == 1)
                    {
                        Frm_Main.getmain.btn_ReciveMoney.Enabled = true;
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.StackTrace);
            }
        }

        private void Frm_LoginMain_Load(object sender, EventArgs e)
        {
          

            if (Properties.Settings.Default.ProudectKey == "NO")
            {
                Regeistration r = new Regeistration();
                r.ShowDialog();
            }

        }

        private void checkBox1_MouseLeave(object sender, EventArgs e)
        {
            
       }

        #region   create data base automatic
        //private bool CheckDataBase()
        //{


        //    SqlConnection con = new SqlConnection(@" server =.\SQLExpress;integrated security=true");

        //    SqlCommand cm = new SqlCommand("", con);
        //    SqlDataReader sdr;
        //    try
        //    {

        //        cm.CommandText = "exec sys.sp_databases";
        //        con.Open();
        //        sdr = cm.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            if (sdr.GetString(0) == "DB_A54A03_Resturant")
        //            {

        //                return true;
        //            }
        //        }
        //    }
        //    catch (Exception)
        //    {

        //        return false;
        //    }
        //    con.Close();
        //    cm.Dispose();
        //    sdr.Dispose();


        //    return false;
        //}


        //public void CreateDataBase()
        //{



        //    DatabaseCollection DB = server.Databases;
        //    for (int i = 0; i < DB.Count; i++)

        //    {
        //        if (DB[i].Name == "DB_A54A03_Resturant")
        //        {
        //            return;
        //        }



        //    }


        //    string dpPath = Application.StartupPath + @"\DB_A54A03_Resturant.mdf";
        //    string dpPathLog = Application.StartupPath + @"\DB_A54A03_Resturant_log.ldf";
        //    StringCollection FilePath = new StringCollection();
        //    FilePath.Add(dpPath);
        //    FilePath.Add(dpPathLog);
        //    server.AttachDatabase("DB_A54A03_Resturant", FilePath);


        //}
        //  Server server = new Server(@".\SQLExpress");
        //Server server = new Server(@".");

        //private void CreateDataBase()
        //{
        //    //bool check = CheckDataBase();
        //    try
        //    {


        //        //if (check == false)
        //        //{


        //        DatabaseCollection DB = server.Databases;
        //        for (int i = 0; i < DB.Count; i++)

        //        {
        //            if (DB[i].Name == "DB_A54A03_Resturant")
        //            {
        //                return;
        //            }



        //        }

        //        var script = File.ReadAllText(Application.StartupPath + @"\scripts.sql");
        //        var sqlQuary = script.Split(new[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);


        //      //  var CONN = new SqlConnection(@"server =.\SQLExpress;integrated security=true");
        //        var CONN = new SqlConnection(@"server =.;integrated security=true");
        //        var cmd = new SqlCommand("query", CONN);
        //        CONN.Open();

        //        foreach (var queary in sqlQuary)
        //        {


        //            cmd.CommandText = queary;
        //            cmd.ExecuteNonQuery();
        //        }

        //        CONN.Close();


        //        //var x = @"server =.\SQLExpress;integrated security=true";



        //        //var script = File.ReadAllText(Application.StartupPath + @"\scripts.sql");
        //        //SqlConnection CONN = new SqlConnection(x);


        //        //Server servers = new Server(new ServerConnection(CONN));

        //        //servers.ConnectionContext.ExecuteNonQuery(script);




        //        //}
        //    }
        //    catch (Exception)
        //    {


        //    }
        //}


        //private void DeleteDataBase()
        //{
        //    try
        //    {


        //        DatabaseCollection DB = server.Databases;
        //        for (int i = 0; i < DB.Count; i++)

        //        {
        //            if (DB[i].Name == "DB_A54A03_Resturant")
        //            {
        //                server.KillDatabase("DB_A54A03_Resturant");
        //                MessageBox.Show("تم مسح قاعدة البيانات بنجاح");
        //            }



        //        }







        //    }
        //    catch (Exception)
        //    {


        //    }
        //}
        #endregion

        private void simpleButton3_Click(object sender, EventArgs e)
        {

            try
            {
                if (Properties.Settings.Default.ProudectKey == "NO")
                {
                    frm_SerielNumber FS = new frm_SerielNumber();
                    FS.ShowDialog();
                }
                else
                {

                    if (txt_User.Text == "")
                    {
                        MessageBox.Show("PLEASE INSERT USER NAME");
                        return;
                    }
                    if (txt_Pass.Text == "")
                    {
                        MessageBox.Show("PLEASE INSERT PASSWORD");
                        return;
                    }

                    else
                    {


                        DT88.Clear();
                        DT88 = l.st_login(txt_User.Text, txt_Pass.Text);

                        if (DT88.Rows.Count > 0)

                        {
                            backgroundWorker1.RunWorkerAsync();
                            Program.salesman = DT88.Rows[0][2].ToString();
                            Console.Beep();

                            this.Hide();
                            frm_main.ShowDialog();
                            l.addMoveUser(Program.salesman, this.Text, $"دخول");

                        }
                        else
                        {
                            MessageBox.Show("Incorrect password or username");
                        }

                    }




                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);

            }



        }

        private void txt_Pass_Enter(object sender, EventArgs e)
        {

        }

        private void txt_Pass_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            try
            {

                if (e.KeyCode == Keys.Enter)
                {


                    if (Properties.Settings.Default.ProudectKey == "NO")
                    {
                        frm_SerielNumber FS = new frm_SerielNumber();
                        FS.ShowDialog();
                    }
                    else
                    {





                        if (txt_User.Text == "")
                        {
                            MessageBox.Show("PLEASE INSERT USER NAME");
                            return;
                        }
                        if (txt_Pass.Text == "")
                        {
                            MessageBox.Show("PLEASE INSERT PASSWORD");
                            return;
                        }

                        else
                        {


                            DT88.Clear();
                            DT88 = l.st_login(txt_User.Text, txt_Pass.Text);

                            if (DT88.Rows.Count > 0)

                            {
                                backgroundWorker1.RunWorkerAsync();
                                Program.salesman = DT88.Rows[0][2].ToString();
                                Console.Beep();

                                this.Hide();
                                frm_main.ShowDialog();

                            }
                            else
                            {
                                MessageBox.Show("Incorrect password or username");
                            }

                        }

                    }


                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);

            }

        }

        private void txt_User_MouseClick(object sender, System.Windows.Forms.MouseEventArgs e)
        {

        }

        private void txt_Pass_MouseMove(object sender, System.Windows.Forms.MouseEventArgs e)
        {
        }

        private void txt_Pass_MouseClick_1(object sender, System.Windows.Forms.MouseEventArgs e)
        {

        }

        private void simpleButton4_Click(object sender, EventArgs e)
        {

        }

        private void txt_Pass_Properties_Click(object sender, EventArgs e)
        {

        }

        private void txt_Pass_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton4_Click_1(object sender, EventArgs e)
        {

        }

        private void simpleButton4_MouseHover(object sender, EventArgs e)
        {
            txt_Pass.Properties.PasswordChar =  '\0' ;
            txt_Pass.Properties.UseSystemPasswordChar = false;
        }

        private void simpleButton4_MouseLeave(object sender, EventArgs e)
        {
            txt_Pass.Properties.PasswordChar =  '*';
            txt_Pass.Properties.UseSystemPasswordChar = true;
            //txt_Pass.Properties.PasswordChar = checkBox1.Checked ? '\0' : '*';
            //txt_Pass.Properties.UseSystemPasswordChar = !checkBox1.Checked;
        }


        private void simpleButton5_Click(object sender, EventArgs e)
        {
          //  DeleteDataBase();
            
        }

      
    }
    }
