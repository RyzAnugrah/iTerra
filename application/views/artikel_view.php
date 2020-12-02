	<!-- Artikel -->
	<section id="artikel" class="artikel">
		<div class="container">
			<div class="text-center section-title-artikel">
				<h2 style="color: #fff;">artikel</h2>
			</div>
			<div>
				<div class="row content">
					<!-- big -->
					<div class="col-lg-6">
						<div class="artikel-item artikel-hover-zoom">
							<a href="">
								<img src="assets\images\home\artikel1.jpg">
							</a>
						</div>
						<div data-aos="fade-in" class="artikel-item artikel-caption">
							<a href="">
								<h5>1 Januari 2021</h5>
								<h3>
									Vaksin Virus Korona Telah Ditemukan
								</h3>
							</a>
						</div>
					</div>

					<!-- Mini -->
					<div class="col-lg-6 pt-4 pt-lg-0 artikel-item">
						<div class="artikel-item">
							<div class="section-title-artikel">
								<h3 style="font-size:x-large;">populer</h3>
							</div>
						</div>
						<div class="row content">
							<!-- mini 1 -->
							<div class="col-lg-6 artikel-item artikel-hover-zoom-mini">
								<a href="#">
									<img src="assets\images\home\artikel2.jpg" style="width: 280px; padding:1rem">
								</a>
							</div>
							<div class="col-lg-6 artikel-item">
								<div class="artikel-caption">
									<a href="">
										<h5>1 Januari 2021</h5>
										<h4>
											Vaksin Virus Korona Telah Ditemukan
										</h4>
									</a>
								</div>
							</div>

							<!-- mini 2 -->
							<div class="col-lg-6 artikel-item artikel-hover-zoom-mini">
								<a href="#">
									<img src="assets\images\home\artikel2.jpg" style="width: 280px; padding:1rem">
								</a>
							</div>
							<div class="col-lg-6 artikel-item">
								<div class="artikel-caption">
									<a href="">
										<h5>1 Januari 2021</h5>
										<h4>
											Vaksin Virus Korona Telah Ditemukan
										</h4>
									</a>
								</div>
							</div>

							<!-- mini 3 -->
							<div class="col-lg-6 artikel-item artikel-hover-zoom-mini">
								<a href="#">
									<img src="assets\images\home\artikel2.jpg" style="width: 280px; padding:1rem">
								</a>
							</div>
							<div class="col-lg-6 artikel-item">
								<div class="artikel-caption">
									<a href="artikel_list_view">
										<h5>1 Januari 2021</h5>
										<h4>
											Vaksin Virus Korona Telah Ditemukan
										</h4>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Artikel -->
	<section id="artikel-list">
		<div class="container">
			<!-- Mini -->
			<div class="artikel-item" style="padding-right: 20px;">
				<div>
					<div class="section-title-artikel-list">
						<h3 style="font-size:x-large; padding-left:65px">terbaru</h3>
					</div>
					<div>
						<h3 style="font-size:x-large; color:#fff;">t</h3>
					</div>
				</div>

				<div class="row content">
					<?php
					foreach ($data->result_array() as $i) :
						$id = $i['kode_artikel'];
						$judul = $i['judul_artikel'];
						$gambar = $i['gambar'];
						$tanggal = $i['tanggal']
					?>
						<div class="artikel-item artikel-hover-zoom">
							<a>
								<img src="<?php echo base_url() . 'assets/images/artikel/' . $gambar; ?>">
							</a>
						</div>
						<div class="col-lg-6 artikel-item">
							<div class="artikel-caption">
								<a href="<?php echo base_url() . 'artikel_list/view/' . $id; ?>">
									<h3>
										<?php echo $judul; ?>
									</h3>
								</a>
								<h5><?php echo $tanggal; ?></h5>
							</div>
						</div>
						<div class="artikel-item">
							<p style="color: #757575;">_______________________________________________________________________________________________________________________________________________________________________________________</p>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
		</div>
	</section>
