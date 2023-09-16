using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyahat.Yonetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["sysdonemConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Button2.Enabled = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txttlf.Text = tablo.Rows[0]["Telefon"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtyoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            lblLogo.Text = tablo.Rows[0]["Logo"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            Label1.Text= tablo.Rows[0]["id"].ToString();
            baglanti.Close();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,Telefon=@Telefon,Adres=@Adres,Twitter=@Twitter,Youtube=@Youtube,Facebook=@Facebook,Logo=@Logo,SiteOzet=@SiteOzet where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Telefon", txttlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtyoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lblLogo.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.ExecuteNonQuery();

            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
    }
}