<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>iTerra - Login</title>
	<link rel="icon" type="image/logo_title" href="assets\images\logo\iterra_bulet-01.png">

	<!--Fonts-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" type="text/css">

	<!-- CSS BUNDLE -->

	<!--Third party plugin CSS-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />

	<!-- Core theme JS-->
	<link rel="stylesheet" href="css/util.css">
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="css/styles.css">

	<!--CSS (includes Bootstrap)-->
	<link rel="stylesheet" href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'>
	<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	
</head>

<body>
	<!-- Form Login -->
	<div class="login">
		<?php
		// Cetak session
		if ($this->session->flashdata('sukses')) {
			echo '<p class="warning" style="margin: 10px 20px;">' . $this->session->flashdata('sukses') . '</p>';
		}
		// Cetak error
		echo validation_errors('<p class="warning" style="margin: 10px 20px;">', '</p>');
		?>

		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-pic">
						<img src="assets/images/logo/iterra-01.png">
						<h2>SELAMAT DATANG <br>DI iTERRA</h2>
						<h5>Gabung bersama Kami untuk melakukan hal-hal yang sederhana, namun bermanfaat bagi sesama.</h5>
					</div>

					<form action="<?php echo base_url();?>/Login/validation" method="post" class="login100-form validate-form">
						<!-- Title -->
						<h2 class="login100-form-title">
							Member Login <br>
							<p>_______</p>
						</h2>

						<!-- Form -->
						<div class="wrap-input100 validate-input" data-validate="Gunakan Email yang Valid: ez@abc.xyz">
							<input class="input100" type="text" name="email" value="<?php echo set_value('email')?>" placeholder="Email" >
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="Kata Sandi Diperlukan">
							<input class="input100" type="password" name="password" value="<?php echo set_value('password')?>" placeholder="Kata Sandi">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>
						<div class="container-login100-form-btn">
							<button type="submit" class="login100-form-btn">
								Login
							</button>
						</div>

						<!-- Lupa Password -->
						<div class="text-center p-t-12">
							<a class="txt2" href="#">
								Lupa Password?
							</a>
						</div>

						<!-- Buat akun -->
						<div class="text-center p-t-136">
							<a style="color: #757575;">
								Belum menjadi Member?
							</a>
							<a class="txt2" href="<?php echo base_url('register') ?>">
								Daftar Sekarang!
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

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
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

	<!-- Animate on Screen -->
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

	<!-- Validasi -->
	<script>
		var input = $('.validate-input .input100');

		$('.validate-form').on('submit', function() {
			var check = true;

			for (var i = 0; i < input.length; i++) {
				if (validate(input[i]) == false) {
					showValidate(input[i]);
					check = false;
				}
			}

			return check;
		});

		$('.validate-form .input100').each(function() {
			$(this).focus(function() {
				hideValidate(this);
			});
		});

		function validate(input) {
			if ($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
				if ($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
					return false;
				}
			} else {
				if ($(input).val().trim() == '') {
					return false;
				}
			}
		}

		function showValidate(input) {
			var thisAlert = $(input).parent();

			$(thisAlert).addClass('alert-validate');
		}

		function hideValidate(input) {
			var thisAlert = $(input).parent();

			$(thisAlert).removeClass('alert-validate');
		}
	</script>

</body>

</html>
