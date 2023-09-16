<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="seyahat.Login" %>


<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Giriş Yap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico" />

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">

    <link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">

    <meta name="robots" content="noindex, follow">
    <script nonce="351c9d7b-d5b3-4ee3-bb9c-037012e7e50e">(function (w, d) { !function (dK, dL, dM, dN) { dK[dM] = dK[dM] || {}; dK[dM].executed = []; dK.zaraz = { deferred: [], listeners: [] }; dK.zaraz.q = []; dK.zaraz._f = function (dO) { return function () { var dP = Array.prototype.slice.call(arguments); dK.zaraz.q.push({ m: dO, a: dP }) } }; for (const dQ of ["track", "set", "debug"]) dK.zaraz[dQ] = dK.zaraz._f(dQ); dK.zaraz.init = () => { var dR = dL.getElementsByTagName(dN)[0], dS = dL.createElement(dN), dT = dL.getElementsByTagName("title")[0]; dT && (dK[dM].t = dL.getElementsByTagName("title")[0].text); dK[dM].x = Math.random(); dK[dM].w = dK.screen.width; dK[dM].h = dK.screen.height; dK[dM].j = dK.innerHeight; dK[dM].e = dK.innerWidth; dK[dM].l = dK.location.href; dK[dM].r = dL.referrer; dK[dM].k = dK.screen.colorDepth; dK[dM].n = dL.characterSet; dK[dM].o = (new Date).getTimezoneOffset(); if (dK.dataLayer) for (const dX of Object.entries(Object.entries(dataLayer).reduce(((dY, dZ) => ({ ...dY[1], ...dZ[1] })), {}))) zaraz.set(dX[0], dX[1], { scope: "page" }); dK[dM].q = []; for (; dK.zaraz.q.length;) { const d_ = dK.zaraz.q.shift(); dK[dM].q.push(d_) } dS.defer = !0; for (const ea of [localStorage, sessionStorage]) Object.keys(ea || {}).filter((ec => ec.startsWith("_zaraz_"))).forEach((eb => { try { dK[dM]["z_" + eb.slice(7)] = JSON.parse(ea.getItem(eb)) } catch { dK[dM]["z_" + eb.slice(7)] = ea.getItem(eb) } })); dS.referrerPolicy = "origin"; dS.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(dK[dM]))); dR.parentNode.insertBefore(dS, dR) };["complete", "interactive"].includes(dL.readyState) ? zaraz.init() : dK.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="Login_v1/images/img-01.png" alt="IMG">
                </div>
                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Kullanıcı Girişi
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Kullanıcı adı gerekli">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="input100" placeholder="Kullanıcı Adı"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Sifre Gerekli">
                        <asp:TextBox ID="txtSifre" runat="server" CssClass="input100" placeholder="Sifre" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Giriş" Cssclass="login100-form-btn" OnClick="Button1_Click" />
                    </div>
                    <div class="text-center p-t-12">
                        <span class="txt1">Kullanıcı adı ve ya şifre
                        </span>
                        <a class="txt2" href="#">Unuttum
                        </a>
                    </div>
                    <p style="align-content:center">
                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                    </p>
                    <div class="text-center p-t-136">
                        <a class="txt2" href="#">Yeni Hesap Oluştur
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
    <script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="Login_v1/vendor/select2/select2.min.js"></script>

    <script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>

    <script src="Login_v1/js/main.js"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d726ff23bcc50b2","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>
