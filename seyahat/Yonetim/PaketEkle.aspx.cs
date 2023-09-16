using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;


namespace seyahat.Yonetim
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["sysdonemConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType=="image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/webp")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    string resimyolu = ResimAd.ToString();
                    SqlConnection baglanti = new SqlConnection(conf_baglanti);
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("insert into tblTurPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values(@Adi, @Fiyat, @Sure, @Lokasyon, @Resim, @Detay)", baglanti);
                    komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
                    komut.Parameters.AddWithValue("@Fiyat", Convert.ToInt32(txtFiyat.Text.ToString()));
                    komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtSure.Text.ToString()));
                    komut.Parameters.AddWithValue("@Lokasyon", txtKonum.Text.ToString());
                    komut.Parameters.AddWithValue("@Resim", resimyolu.ToString());
                    komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
                    komut.ExecuteNonQuery();

                    baglanti.Close();
                    Response.Redirect("PaketEkle.aspx");

                }
                else
                {
                    string script = "alert('Javascript ile yanlış giriş önlendi - Doğru giriş yapınız');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
            else
            {
                string script = "alert('Javascript ile yanlış giriş önlendi - Doğru giriş yapınız');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }
}