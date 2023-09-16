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
    public partial class BlogDuzenleSecilen : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["sysdonemConnectionString"].ConnectionString;
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblBlog where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            SqlDataReader reader = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(reader);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            DropDownList1.SelectedValue = tablo.Rows[0]["KategoriId"].ToString();
            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            lblTarih.Text = tablo.Rows[0]["Tarih"].ToString();

            baglanti.Close();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                if (FileUpload2.PostedFile.ContentType == "image/jpeg" || FileUpload2.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload2.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/images/blog/" + ResimAd));
                    string resimyolu = ResimAd.ToString();
                    SqlConnection baglanti = new SqlConnection(conf_baglanti);
                    baglanti.Open();

                    SqlCommand komut = new SqlCommand("update tblBlog set Baslik=@Baslik,Ozet=@Ozet,KategoriId=@KategoriId,Resim=@Resim,Detay=@Detay,Tarih=@Tarih where id=@id", baglanti);

                    komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
                    komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
                    komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
                    komut.Parameters.AddWithValue("@Resim", resimyolu.ToString());
                    komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
                    komut.Parameters.AddWithValue("@Tarih", bugun);
                    komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                    komut.ExecuteNonQuery();

                    Response.Redirect("BlogDuzenleSil.aspx");
                    baglanti.Close();
                    //Response.Redirect("BlogEkle.aspx");

                }
                else
                {
                    string script = "alert('Lütfen geçerli bir seçim yapın.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }

            }
            else
            {
                string script = "alert('Lütfen geçerli bir seçim yapın.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }
}