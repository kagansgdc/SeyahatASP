<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSecilen.aspx.cs" Inherits="seyahat.Yonetim.BlogDuzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sysdonemConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]"></asp:SqlDataSource>
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>
                      <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Özet</label>
                      <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Kategori</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                      <label>Blog Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                      <div class="form-group">
                          <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                      </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Blog Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="150" CssClass="form-control" placeholder="Detay gir"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Varsayılan Göster" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click"/>
                      <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
