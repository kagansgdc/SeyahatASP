<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="seyahat.Yonetim.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title"> 
                Yeni tur ekleme sayfası
            </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Tur</label>
                      <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">tur fiyat</label>
                      <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tur fiyat"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Tur süresi</label>
                     <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Konum</label>
                         <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Tur adı"></asp:TextBox>
                      </div>
                    <div class="form-group">
                      <label>Resim seç</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Tur Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="80" CssClass="form-control" placeholder="Detay gir"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click"/>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
