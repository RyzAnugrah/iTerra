<!--
=========================================================
Material Dashboard - v2.1.2
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2020 Creative Tim (https://www.creative-tim.com)
Coded by Creative Tim

=========================================================
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/assets_admin/img/iterra_bulet-01.png">
	<link rel="icon" type="image/png" href="assets/assets_admin/img/iterra_bulet-01.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>iTerra - Buat Donasi</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<!-- CSS Files -->
	<link href="assets/assets_admin/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="assets/assets_admin/demo/demo.css" rel="stylesheet" />
	<link href="assets/assets_admin/css/styles.css" rel="stylesheet" />
	<link rel="stylesheet" href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'>
	<style>
		html {
			scroll-behavior: smooth;
		}
	</style>

</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="green" data-background-color="white">
			<a href="home" class="logo">
				<img src="assets/assets_admin/img/iterra-01.png" style="width: 50%; margin-left: 20%;">
			</a>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item   ">
						<a class="nav-link" href="dashboard_admin">
							<i class="material-icons">eco</i>
							<p>Dashboard</p>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main-panel" style="background: url(assets/assets_admin/img/background-donasi.png) fixed center; background-size: cover">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" style="color: black;" href="javascript:;">Hello, Admin</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span>
						<span class="navbar-toggler-icon icon-bar"></span>
						<span class="navbar-toggler-icon icon-bar"></span>
						<span class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form">
							<div class="input-group no-border">

								<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item dropdown">
								<a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="material-icons" style="color: whitesmoke;">exit_to_app</i>
									<p class="d-lg-none d-md-block">
										Akun
									</p>
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
									<a class="dropdown-item" href="<?php echo base_url('login/logout'); ?>">Log out</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="content">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-8">
									<div class="card">
										<div class="card-header card-header-success kartu">
											<h4 class="card-title">Buat Donasi</h4>
											<p class="card-category">Donasi Kegiatan lingkungan </p>
										</div>
										<div class="card-body">
											<form action="<?php echo base_url(); ?>/Buat_Donasi/simpan_post" method="post" enctype="multipart/form-data">
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="bmd-label-floating">Judul Donasi</label>
															<input name='judul_donasi' value="<?php echo set_value('judul_donasi') ?>" type="text" class="form-control" required>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label>Tenggat Waktu</label>
															<label class="bmd-label-floating"></label>
															<input name='tanggal_donasi' value="<?php echo set_value('tanggal_donasi') ?>" type="date" class="form-control" required>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label class="bmd-label-floating">Jumlah Donasi</label>
															<input name='jumlah_donasi' value="<?php echo set_value('jumlah_donasi') ?>" type="number" class="form-control" required>
														</div>
													</div>
												</div>
												<label class="bmd-label-floating">Gambar</label><br>
												<input type="file" name="filefoto" required><br>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label>Deskripsi</label>
															<div class="form-group">
																<textarea id="ckeditor" class="form-control" name='deskripsi' value="<?php echo set_value('deskripsi') ?>" rows="5" required></textarea>
															</div>
														</div>
													</div>
												</div>
												<button type="submit" value="buat_donasi" class="btn btn-primary pull-right">Submit</button>
												<div class="clearfix"></div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>

			<!--Footer-->
			<section id="footer">
				<footer>
					<div class="footer-top">
						<div class="containers">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="footer-info">
										<img src="assets\images\logo\iterra-01.png" style="width: 100px;">
										<h3>Tentang Kami</h3>
										<p>
											<strong>Alamat:</strong> Jalan Raya Bandung-Sumedang <br>
											No. 239 Jatinangor <br>
											<strong>Email:</strong> support@iterra.com<br>
										</p>
										<div class="social-links mt-3">
											<a href="https://www.twitter.com/" class="twitter"><i class="bx bxl-twitter"></i></a>
											<a href="https://www.facebook.com/" class="facebook"><i class="bx bxl-facebook"></i></a>
											<a href="https://www.instagram.com" class="instagram"><i class="bx bxl-instagram"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-6 footer-links">
									<h4>Kategori</h4>
									<ul>
										<li><i class="bx bx-chevron-right"></i> <a href="home">Home</a></li>
										<li><i class="bx bx-chevron-right"></i> <a href="about">Tentang Kami</a></li>
										<li><i class="bx bx-chevron-right"></i> <a href="artikel">Artikel</a></li>
										<li><i class="bx bx-chevron-right"></i> <a href="kampanye">Kampanye</a></li>
										<li><i class="bx bx-chevron-right"></i> <a href="donasi">Donasi</a></li>
									</ul>
								</div>
								<div class="col-lg-2 col-md-6 footer-links">
									<h4>Kebijakan</h4>
									<ul>
										<li><i class="bx bx-chevron-right"></i> <a href="<?php echo base_url('syarat_ketentuan') ?>">Syarat & Ketentuan</a></li>
									</ul>
								</div>
								<div class="col-lg-4 col-md-6 footer-newsletter">
									<h4>Langganan</h4>
									<p>Dapatkan info terbaru dari Kami melalui e-mail</p>
									<form action="home" method="post">
										<input type="email" name="email" placeholder="Email"><input type="submit" value="Subscribe">
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="copyright">
							&copy; 2020 Copyright. All Rights Reserved
						</div>
						<div class="credits">
							Developed and Designed by <a href="about">iTerra</a>
						</div>
					</div>
				</footer>
			</section>


		</div>
	</div>
	</div>

	<!--   Core JS Files   -->
	<script src="assets/assets_admin/js/core/jquery.min.js"></script>
	<script src="assets/assets_admin/js/core/popper.min.js"></script>
	<script src="assets/assets_admin/js/core/bootstrap-material-design.min.js"></script>
	<script src="assets/assets_admin/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script src="assets/assets_admin/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script src="assets/assets_admin/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script src="assets/assets_admin/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="assets/assets_admin/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="assets/assets_admin/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="assets/assets_admin/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script src="assets/assets_admin/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="assets/assets_admin/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="assets/assets_admin/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="assets/assets_admin/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="assets/assets_admin/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/assets_admin/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script src="assets/assets_admin/js/plugins/arrive.min.js"></script>
	<!-- Chartist JS -->
	<script src="assets/assets_admin/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="assets/assets_admin/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/assets_admin/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/assets_admin/demo/demo.js"></script>

	<script src="//cdn.ckeditor.com/4.15.1/full/ckeditor.js"></script>

	<script type="text/javascript">
		$(function() {
			CKEDITOR.replace('ckeditor');
		});
	</script>

	<script>
		$(document).ready(function() {
			$().ready(function() {
				$sidebar = $('.sidebar');

				$sidebar_img_container = $sidebar.find('.sidebar-background');

				$full_page = $('.full-page');

				$sidebar_responsive = $('body > .navbar-collapse');

				window_width = $(window).width();

				fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
			});
		});
	</script>

	<!-- Preloader -->
	<div id="preloader">
		<script>
			$(document).ready(function() {
				$("#preloader").fadeOut();
			});
		</script>
	</div>

</body>

</html>
