<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="seyahat.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>İletisim</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
                
                <div class="row">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24405.058546500124!2d26.430087191418043!3d40.12819671444165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b1a82ca9b99cfd%3A0xf803b1ad12ea8904!2s%C3%87anakkale%20Onsekiz%20Mart%20%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1686707656445!5m2!1str!2str" width="1200" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                </div>
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Bize Ulaşın</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate" runat="server">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMesaj" Height="150px" TextMode="MultiLine" runat="server" CssClass="form-control w-100" placeholder="Konu"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control valid" placeholder="Ad Soyad"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEposta" runat="server" CssClass="form-control valid" placeholder="E posta"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtKonu" runat="server" CssClass="form-control valid" placeholder="Konu"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="button button-contactForm boxed-btn" OnClick="Button1_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Merkez/Çanakkale</h3>
                                <p>Prof. Dr. Sevim Buluç Sk. No:20, 17100</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+90 507 597 78 80</h3>
                                <p>Hergün 10:00 - 20:00</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>kagansa97@gmail.com</h3>
                                <p>Mail üzerinden destek alabilirsiniz.</p>
                            </div>
                        </div>
                    </div>
                </div>
           
</asp:Content>
