<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>iTerra - Register</title>
	<link rel="icon" type="image/logo_title" href="<?php echo base_url() ?>assets\images\logo\iterra_bulet-01.png">

	<!--Fonts-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" type="text/css">

	<!-- CSS BUNDLE -->

	<!--Third party plugin CSS-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />

	<!-- Core theme JS-->
	<link rel="stylesheet" href="<?php echo base_url() ?>css/util.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>css/register.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>css/styles.css">

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
		?>



		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<form action="<?php echo base_url(); ?>register/add" method="post" class="login100-form validate-form">
						<!-- Title -->
						<div class="login100-pic">
							<img src="<?php echo base_url() ?>assets/images/logo/iterra-01.png">
							<h2 class="login100-form-title">
								Register <br>
								<p>____</p>
							</h2>
						</div>
						<?php if (validation_errors()) { ?>
							<div class="alert alert-danger">
								<a class="close" data-dismiss="alert">x</a>
								<strong><?php echo (validation_errors()); ?></strong>
							</div>
						<?php } ?>
						<!-- Form -->
						<div class="wrap-input100 validate-input" data-validate="Gunakan Nama yang Valid">
							<input class="input100" type="text" name="nama" placeholder="Nama Lengkap" value="<?php echo set_value('nama') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-address-book" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Gunakan Tanggal Lahir yang Valid">
							<input class="input100" type="date" name="tanggallahir" placeholder="Tanggal Lahir" value="<?php echo set_value('tanggallahir') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-calendar" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Pilih Jenis Kelamin">
							<select class="input100 required" name="jenis_kelamin" type="text" value="<?php echo set_value('jenis_kelamin') ?>" required>
								<option value="" disabled selected>Pilih Jenis Kelamin</option>
								<option value="pria">Pria</option>
								<option value="wanita">Wanita</option>
							</select>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-user" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Gunakan Nomor Telepon yang Valid">
							<input class="input100" type="text" name="nomortelepon" placeholder="Nomor Telepon" value="<?php echo set_value('nomortelepon') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Gunakan NIK yang Valid">
							<input class="input100" type="text" name="NIK" placeholder="Nomor Induk Kependudukan" value="<?php echo set_value('NIK') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-address-card" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Gunakan Email yang Valid: ez@abc.xyz">
							<input class="input100" type="text" name="email" placeholder="Email" value="<?php echo set_value('email') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Kata Sandi Diperlukan">
							<input class="input100" type="password" name="password" placeholder="Kata Sandi" value="<?php echo set_value('password') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Kata Sandi Tidak Cocok">
							<input class="input100" type="password" name="password1" placeholder="Konfirmasi Kata Sandi" value="<?php echo set_value('password1') ?>" required>
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>


						<div class="text-left p-t-12">
							<a style="color: #757575;">
								Dengan mendaftar, Saya menyutujui
							</a>
							<a class="txt2" href="<?php echo base_url('syarat_ketentuan') ?>">
								Syarat & Ketentuan
							</a>
						</div>

						<div class="container-login100-form-btn">
							<button type="submit" value="Register" class="login100-form-btn">
								Register
							</button>
						</div>

						<!-- Buat akun -->
						<div class="text-center p-t-136">
							<a style="color: #757575;">
								Sudah menjadi Member?
							</a>
							<a class="txt2" href="<?php echo base_url('login') ?>">
								Masuk
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
	<script src="<?php echo base_url() ?>js/scripts.js"></script>
	<script src="<?php echo base_url() ?>js/main.js"></script>
	<script src="<?php echo base_url() ?>js/jquery-3.4.1.min.js"></script>

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

</body>

</html>
