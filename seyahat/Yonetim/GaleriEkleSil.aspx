<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="seyahat.Yonetim.GaleriEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title"> 
            galeri ekleme sayfası
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sysdonemConnectionString %>" SelectCommand="SELECT * FROM [tblGaleriKategori]"></asp:SqlDataSource>
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample">
                     
                      <h3>
                          Galeri resim yükleme alanı
                      </h3>
                       <div class="form-group">
                      <label for="exampleInputName1">Resim Adı</label>
                           <asp:TextBox ID="txtResimAd" runat="server" CssClass="form-control" placeholder="Resim Adı"></asp:TextBox>
                       </div>
                       <div class="form-group">
                      <label for="exampleInputName1">Kategori adı</label>
                           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>

                       </div>
                      <div class="form-group">
                      <label>Galeri Resim</label>
                      
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                          <asp:Button ID="Button2" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click" />

                    </div>


                  </div>
                </div>
              </div>
            </div>
</asp:Content>
