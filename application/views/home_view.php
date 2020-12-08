	<!-- Masthead-->
	<header class="masthead">
		<!-- Carousel -->
		<div id="demo" class="carousel slide carousel-fade" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner w3-animate-opacity">
				<!-- Carousel 0 -->
				<div class="carousel-item active">
					<img style="width:100%; height: 100vh; -webkit-filter:brightness(50%)" src=" assets/images/home/home.jpg" alt="0">
					<div class="carousel-caption" data-aos="zoom-in">
						<div class="containers h-100">
							<div class="row h-100 align-items-center justify-content-center text-center">
								<div class="col-lg-10 align-self-end">
									<h1 class="text-white font-weight-bold">APA ITU iTERRA</h1>
								</div>
								<div class="col-lg-8 align-self-baseline">
									<p class="text-white-75 font-weight-light mb-5">Ini Tentang Aku, Kamu, dan Lingkungan Kita</p>
									<img src="assets\images\logo\iterra_bulet-01.png" style="width: 100px;">
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Carousel 1 -->
				<div class="carousel-item">
					<img style="width:100%; height: 100vh; -webkit-filter:brightness(50%)" src="assets/images/home/home2.jpg" alt="1" width="2100" height="500">
					<div class="carousel-caption">
						<div class="containers h-100">
							<div class="row h-100 align-items-center justify-content-center text-center">
								<div class="col-lg-10 align-self-end">
									<h1 class="text-white font-weight-bold">KENAL LEBIH DEKAT DENGAN LINGKUNGAN</h1>
								</div>
								<div class="col-lg-8 align-self-baseline">
									<p class="text-white-75 font-weight-light mb-5">Bumi layaknya seorang manusia yang membutuhkan perhatian.</p>
									<img src="assets\images\logo\iterra_bulet-01.png" style="width: 100px;">
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Carousel 2 -->
				<div class="carousel-item">
					<img style="width:100%; height: 100vh; -webkit-filter:brightness(50%)" src="assets/images/home/home3.jpg" alt="2" width="2100" height="500">
					<div class="carousel-caption">
						<div class="containers h-100">
							<div class="row h-100 align-items-center justify-content-center text-center">
								<div class="col-lg-10 align-self-end">
									<h1 class="text-white font-weight-bold">AYO BERGERAK BERSAMA KAMI</h1>
								</div>
								<div class="col-lg-8 align-self-baseline">
									<p class="text-white-75 font-weight-light mb-5">Jika kita masih bisa berikan usaha kita untuk Bumi, mengapa harus mencari yang lain?</p>
									<img src="assets\images\logo\iterra_bulet-01.png" style="width: 100px;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</header>

	<!-- About Us-->
	<section id="about" class="about">
		<div class="container">
			<div class="section-title" data-aos="fade-down">
				<h2>Ada Apa Dengan Lingkungan?</h2>
			</div>
			<div class="row content">
				<div class="col-lg-6" data-aos="fade-right">
					<img src="assets\images\logo\iterra-01.png" style="width: 300px;">
				</div>
				<div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left">
					<p>
						Di Indonesia masalah kebersihan lingkungan selalu menjadi perdebatan dan juga masalah yang terus berkembang. Mayoritas masyarakat Indonesia ternyata tak peduli akan kebersihan. Hal itu berdampak pada lingkungan sekitar dan juga kesehatan. Dari data riset Kementerian Kesehatan diketahui hanya
						<b>20%</b>
						dari total masyarakat Indonesia peduli terhadap kebersihan dan kesehatan. Ini berarti, dari 262 juta jiwa di Indonesia, hanya sekitar <b>52 juta orang</b> yang memiliki kepedulian terhadap kebersihan lingkungan sekitar dan dampaknya terhadap kesehatan.
					</p>
					<a class="button button-light button-xl js-scroll-trigger" href="about">Baca Selengkapnya</a>
				</div>
			</div>

		</div>
	</section>

	<!-- Artikel -->
	<section id="artikel" class="artikel">
		<div class="container">
			<div class="text-center section-title-artikel">
				<h2 style="color: #fff;">terbaru</h2>
			</div>
			<div>
				<div class="row content">

					<div class="col-lg-6">
						<?php foreach ($list_kampanye_data->result_array() as $i) :
							$id = $i['kode_kampanye'];
							$judul = $i['judul_kampanye'];
							$gambar = $i['gambar'];
							$tgl = $i['tanggal'];
							$desk = $i['deskripsi'];
						?>
							<div class="artikel-item artikel-hover-zoom">
								<a href="<?php echo base_url() . 'list_kampanye/view/' . $id; ?>">
									<img src="<?= base_url() . 'assets/images/kampanye/' . $gambar; ?>">
								</a>
							</div>
							<div data-aos="fade-in" class="artikel-item artikel-caption">
								<h5 style="color:#fff">Kampanye</h5>
								<a href="<?php echo base_url() . 'list_kampanye/view/' . $id; ?>">

									<h3>
										<?php echo $judul; ?>
									</h3>
								</a>
							</div>
						<?php endforeach; ?>
					</div>

					<!-- Mini -->
					<div class="col-lg-6 pt-4 pt-lg-0 artikel-item">
						<div class="artikel-item">
							<div class="section-title-artikel">
								<h3 style="font-size:x-large;">artikel</h3>
							</div>
						</div>
						<?php
						foreach ($list_artikel_data->result_array() as $i) :
							$id = $i['kode_artikel'];
							$judul = $i['judul_artikel'];
							$gambar = $i['gambar'];
							$tanggal = $i['tanggal']
						?>

							<div class="row content">
								<!-- mini 1 -->
								<div class="col-lg-6 artikel-item artikel-hover-zoom-mini">
									<a href="<?php echo base_url() . 'artikel_list/view/' . $id; ?>">
										<img src="<?php echo base_url() . 'assets/images/artikel/' . $gambar; ?>" style="width: 280px; padding:1rem">
									</a>
								</div>
								<div class="col-lg-6 artikel-item">
									<div class="artikel-caption">

										<a href="<?php echo base_url() . 'artikel_list/view/' . $id; ?>">
											<h4>
												<?php echo $judul; ?>
											</h4>
										</a>
										<h5 style="color:#fff;"><?php echo $tanggal; ?></h5>
									</div>
								</div>
							</div>
						<?php endforeach; ?>
					</div>
				</div>
			</div>
		</div>
	</section>
