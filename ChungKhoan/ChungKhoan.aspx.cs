using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChungKhoan
{
    public partial class ChungKhoan : System.Web.UI.Page
    {
        public static string connectionString = @"Data Source=DESKTOP-ARJSH40\NGUYENMAI; Initial Catalog = ChungKhoan; User ID = sa; Password=123;";
        public static SqlConnection connection = new SqlConnection();
        public static SqlDataReader myReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (KetNoi() == 1)
            {
                TextBox1.Text = "Ket noi thanh cong";
            } else
            {
                TextBox1.Text = "Ket noi that bai";
            }
        }

        public static int KetNoi()
        {
            try
            {
                connection = new SqlConnection(connectionString);
                connection.Open();
                return 1;
            }
            catch (Exception ex)
            {

                return 0;
            }
        }

        public static void ExecSqlData(String strLenh) // doc du lieu
        {
            SqlCommand sqlcmd = new SqlCommand(strLenh, connection);
            sqlcmd.ExecuteNonQuery();
            /*sqlcmd.CommandType = CommandType.Text;
            if (connection.State == ConnectionState.Closed) connection.Open();
            try
            {
                myreader = sqlcmd.ExecuteReader(); return myreader;
            }
            catch (SqlException ex)
            {
                connection.Close();
                MessageBox.Show(ex.Message);
                return null;
            }*/
        }

        private bool kiemTraDuLieuDauVao()
        {
            if (ddlMaCP.SelectedValue == "")
            {

                ddlMaCP.Focus();
                return false;
            }

            if (int.Parse(txtKhoiLuong.Text) < 100 || (int.Parse(txtKhoiLuong.Text) % 100 != 0))
            {
                txtKhoiLuong.Focus();
                return false;
            }

            if (int.Parse(txtGia.Text) < 0)
            {
                txtGia.Focus();
                return false;
            }

            return true;
        }

        private void reset()
        {
            ddlMaCP.SelectedIndex = 0;
            ddlMuaBan.SelectedIndex = 0;
            txtKhoiLuong.Text = "0";
            txtGia.Text = "0";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool ketQua = kiemTraDuLieuDauVao();
            if (ketQua == false)
            {
                return;
            }

            /*Step 2*/
            string maCoPhieu = ddlMaCP.SelectedItem.ToString();
            string today = DateTime.Now.ToString("yyyy-MM-dd");
            string loaiGiaoDich = ddlMuaBan.SelectedValue;

            int soLuong = int.Parse(txtKhoiLuong.Text);
            float giaDat = float.Parse(txtGia.Text);

            /**Step 3*/
            try
            {
                string query = "EXEC sp_KhopLenhLienTuc '" + maCoPhieu + "', '" + today + "', '" + loaiGiaoDich + "', " + soLuong + ", " + giaDat;
                ExecSqlData(query);
                /* Program.myReader = Program.ExecSqlDataReader(query);
                if (Program.myReader == null)
                {
                    return;
                }
                Program.myReader.Read();
                Program.myReader.Close();*/
                TextBox1.Text = "Them thanh cong";
            }
            catch (Exception ex)
            {
                TextBox1.Text = "Them that bai";
                /*Console.WriteLine(ex.Message);*/
            }

            /**Step 4*/
            // Không đặt message box ở đây để tránh lỗi bị treo máy
            /*reset();*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            reset();
        }
    }
}