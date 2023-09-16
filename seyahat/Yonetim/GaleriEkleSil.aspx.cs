using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seyahat.Yonetim
{
    public partial class GaleriEkleSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/galeri/" + ResimAd));
                    string resimyolu = ResimAd.ToString();
                }
                else
                {
                    string script = "alert('Javascript ile yanlış giriş önlendi - Doğru giriş yapınız');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
            else
            {
                {
                    string script = "alert('Javascript ile yanlış giriş önlendi - Doğru giriş yapınız');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
        }
    }
}