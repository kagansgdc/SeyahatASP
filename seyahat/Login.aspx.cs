using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace seyahat
{
    public partial class Login : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["sysdonemConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKullanici where Username=@UserName and Sifre=@Sifre", baglanti);
            komut.Parameters.AddWithValue("@Username", txtUserName.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre", txtSifre.Text.ToString());
            SqlDataReader reader = komut.ExecuteReader();
            if (reader.Read())
            {
                Session["Kullanici"] = reader["UserName"].ToString();
                Response.Redirect("~/Yonetim/Default.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Kullanıcı Adı Ve Ya Şifre Hatalı!";
            }
            reader.Close();
            baglanti.Close();
            baglanti.Dispose();

        }
    }
}