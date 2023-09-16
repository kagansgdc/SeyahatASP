using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace seyahat.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["sysdonemConnectionString"].ConnectionString;
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload2.HasFile)
            {
                if (FileUpload2.PostedFile.ContentType=="image/jpeg" || FileUpload2.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload2.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/images/blog/" + ResimAd));
                    string resimyolu = ResimAd.ToString();
                    SqlConnection baglanti = new SqlConnection(conf_baglanti);
                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("insert into tblBlog(Baslik,Ozet,KategoriId,Resim,Detay,Tarih) values(@Baslik, @Ozet, @KategoriId, @Resim, @Detay, @Tarih)", baglanti);
                    komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
                    komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
                    komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
                    komut.Parameters.AddWithValue("@Resim", resimyolu.ToString());
                    komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
                    komut.Parameters.AddWithValue("@Tarih", bugun);
                    komut.ExecuteNonQuery();

                    baglanti.Close();
                    Response.Redirect("BlogEkle.aspx");

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