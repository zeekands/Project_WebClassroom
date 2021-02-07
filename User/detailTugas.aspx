﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="detailTugas.aspx.vb" Inherits="Project_WebClassroom.detailTugas1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Resi Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Resi - v2.2.0
  * Template URL: https://bootstrapmade.com/resi-free-bootstrap-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
    <form runat="server" id="form1">
        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center justify-content-between">

                <h1 class="logo"><a href="index.aspx">課堂 | Classroom</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.aspx" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="todo.aspx">To-do</a></li>
                        <li class="active"><a href="class.aspx">Class</a></li>
                    </ul>
                </nav>
                <!-- .nav-menu -->
                 <% If Session("id") Is "" Then %>
            <a href="login.aspx" class="get-started-btn scrollto">Login</a>
            <%Else %>
            <a href="logout.aspx" class="get-started-btn scrollto">Logout</a>
            <%End If %>

            </div>
        </header>
        <!-- End Header -->
        <!-- ======= Team Section ======= -->
        <section id="team" class="team section-bg">
            <div class="container">

                <div class="section-title">
                    </br><br />
                    <h2><%=tugas.judul%></h2>
                </div>

                <div class="row">
                    <div class="card w-100 d-flex align-items-stretch shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h5 class="card-title">Detail Tugas</h5>
                            <div class="member">
                                <div class="card-body">
                                    <h5 class="card-title" style="font-size: 10px;">Detail tugas</h5>
                                    <p class="card-text" style="font-size: 10px;">Nama : <%=tugas.judul %></p>
                                    <p class="card-text" style="font-size: 10px;">Detail : <%=tugas.detail %></p>
                                    <p class="card-text" style="font-size: 10px;">Tengat : <%=tugas.tengat %></p>
                                </div>
                            </div>
                            <div class="member mt-4">
                                <div class="card-body">
                                    <h5 class="card-title" style="font-size: 10px;">Upload Tugas Disini!</h5>
                                    <% If detailTugasNew Is Nothing Then %>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /><br>
                                    <asp:Button runat="server" ID="btnUpload" CssClass="btn btn-success" Text="Serahkan" OnClick="btnUpload_Click" />
                                    <%Else %>
                                    <div class="alert alert-success" role="alert">
                                       Anda Telah mengumpulkan Tugas!
                                    </div>
                                    <%End If %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </section>
        <!-- End Team Section -->
    </form>
</body>

</html>
