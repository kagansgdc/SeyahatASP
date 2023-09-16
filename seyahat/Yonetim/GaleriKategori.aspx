<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="seyahat.Yonetim.GaleriKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <h3 class="page-title">resim kategori sayfası</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori adı</label>
                      <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Galeri kategori"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Katergori ekle" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />
                          </div>
                </div>
              </div>
            </div>
</asp:Content>
