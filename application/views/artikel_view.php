	<!-- Artikel -->
	<section id="artikel-list">
		<div class="container">
			<!-- Mini -->
			<div class="artikel-item" style="padding-right: 20px;">
				<div class="text-center section-title-artikel">
					<h2 >artikel</h2>
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
