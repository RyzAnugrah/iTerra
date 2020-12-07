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

<!-- JAVASCRIPT BUNDLE -->

<!-- Bootstrap core JS-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>

<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="js/main.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

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
