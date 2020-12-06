<?php
$b = $data->row_array();
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>iTerra</title>
	<link rel="icon" type="image/logo_title" href="../../assets/images/logo/iterra_bulet-01.png">

	<!--Fonts-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" type="text/css">

	<!-- CSS BUNDLE -->

	<!--Third party plugin CSS-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />

	<!-- Core theme JS-->
	<link rel="stylesheet" href="../../css/styles.css" />

	<!--CSS (includes Bootstrap)-->
	<link rel="stylesheet" href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'>
	<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<style>
		/* Back to the Top */
		html {
			scroll-behavior: smooth;
		}
	</style>
</head>

<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
		<div class="containers">
			<a class="navbar-brand js-scroll-trigger" href="<?= base_url(); ?>home"><img src="../../assets\images\logo\iterra-01.png" style="width: 100px;" </a> <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto my-2 my-lg-0">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"></a></li>
						<li class="nav-item"><a style="font-size:large;" class="nav-link js-scroll-trigger" href="<?= base_url(); ?>artikel">ARTIKEL</a></li>
						<li class="nav-item"><a style="font-size:large;" class="nav-link js-scroll-trigger" href="<?= base_url(); ?>kampanye">KAMPANYE</a></li>
						<li class="nav-item"><a style="font-size:large;" class="nav-link js-scroll-trigger" href="<?= base_url(); ?>about">TENTANG KAMI</a></li>
						<li class="nav-item"><a style="font-size:large;" class="nav-link js-scroll-trigger" href="<?= base_url(); ?>donasi">DONASI</a></li>
						<li class="nav-item"><a style="font-size:large;" class="nav-link js-scroll-trigger" href="<?= base_url(); ?>login">MASUK</a></li>
					</ul>
				</div>
		</div>
	</nav>

	<section id="donasi" class="donasi" style="background-color: #f3f5fa;">
		<div class="container">
			<div class="content">
				<div class="row">
					<div class="col-md-8 mx-auto text-center donasi-item">
						<h2 style="padding-top:100px;"><?php echo $b['judul_donasi']; ?></h2>
						<hr />
						<img src="<?php echo base_url() . 'assets/images/donasi/' . $b['gambar']; ?>" style=" width: 100%; border-radius:10px;">
						<div class="donasi-caption mt-4 text-center">
							<h5>Donasi hingga tanggal: <?php echo $b['tanggal_donasi']; ?></h5>
						</div>
						<div class="donasi-caption text-justify">
							<?php echo $b['deskripsi']; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Footer-->
	<section id="footer">
		<footer>
			<div class="footer-top">
				<div class="containers">
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="footer-info">
								<img src="../../assets\images\logo\iterra-01.png" style="width: 100px;">
								<h3>Tentang Kami</h3>
								<p>
									<strong>Alamat:</strong> Jalan Raya Bandung-Sumedang <br>
									No. 239 Jatinangor <br>
									<strong>Email:</strong> support@iterra.com<br>
								</p>
								<div class="social-links mt-3">
									<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
									<a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
									<a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
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
							<h4>Update Terkini</h4>
							<ul>
								<li><i class="bx bx-chevron-right"></i> <a href="#">Update 1</a></li>
								<li><i class="bx bx-chevron-right"></i> <a href="#">Update 2</a></li>
								<li><i class="bx bx-chevron-right"></i> <a href="#">Update 3</a></li>
								<li><i class="bx bx-chevron-right"></i> <a href="#">Update 4</a></li>
								<li><i class="bx bx-chevron-right"></i> <a href="#">Update 5</a></li>
							</ul>
						</div>
						<div class="col-lg-4 col-md-6 footer-newsletter">
							<h4>Langganan</h4>
							<p>Dapatkan info terbaru dari Kami melalui e-mail</p>
							<form action="" method="post">
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

	<!-- JAVASCRIPT BUNDLE -->

	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Third party plugin JS-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>

	<!-- Core theme JS-->
	<script src="../../js/scripts.js"></script>
	<script src="../../js/main.js"></script>
	<script src="../../js/jquery-3.4.1.min.js"></script>

	<!-- JS (includes Bootstrap)-->
	<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<!-- Animate on Screen -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
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
