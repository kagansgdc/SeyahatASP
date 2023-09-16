<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="seyahat.Yonetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" >
                    <div class="form-group">
                      <label for="exampleInputName1">E-mail</label>
                      <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E posta"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Telefon</label>
                      <asp:TextBox ID="txttlf" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Adres</label>
                      <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Adres"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Twitter</label>
                      <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="twt"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Youtube</label>
                      <asp:TextBox ID="txtyoutube" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Facebook</label>
                      <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                    </div>
                   
                    <div class="form-group">
                      <label>Site Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Label ID="lblLogo" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="80" CssClass="form-control" placeholder="Detay gir"></asp:TextBox>
                    </div>
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      <asp:Button ID="Button1" runat="server" Text="Varolan Göster" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click"/>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
