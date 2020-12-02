	<!-- Kampanye-->
	<section class="page-section bg-light kampanye" id="kampanye">
		<div class="container">
			<div class="text-center section-title kampanye-title" data-aos="fade-down">
				<h2 class="section-heading">Kampanye</h2>
			</div>

			<!-- Contents -->
			<div class="row">
			<?php foreach ($data->result_array() as $i) :
					$id = $i['kode_kampanye'];
					$judul = $i['judul_kampanye'];
					$gambar = $i['gambar'];
					$tgl = $i['tanggal'];
					$desk = $i['deskripsi'];
				?>
				<!-- Contents 1 -->
				<div class="col-lg-4 col-12 mb-4" data-aos="zoom-in">
					<div class="kampanye-item">
						<a class="kampanye-link" data-toggle="modal" href="#kampanyeModal1">
							<div class="img-hover-zoom">
								<img src="<?= base_url() . 'assets/images/kampanye/' . $gambar; ?>">
							</div>
						</a>
						<a href="detail_kampanye">
						
							<div class="kampanye-caption">
								<div class="kampanye-caption-heading"><?php echo $judul; ?></div>
								<a href="detail_kampanye" class="btn btn-detail">Detail ➔</a>
							</div>
						</a>
					</div>
				</div>

				<?php endforeach; ?>
			</div>
		</div>
	</section>