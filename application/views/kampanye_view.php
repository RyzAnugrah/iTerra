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
				<div class="col-lg-4 mb-4" data-aos="zoom-in">
						<div class="kampanye-item">

							<div class="img-hover-zoom">
								<img src="<?= base_url() . 'assets/images/kampanye/' . $gambar; ?>">
							</div>

							<a>
								<div class="kampanye-caption">
									<a href="<?php echo base_url() . 'list_kampanye/view/' . $id; ?>">
										<h3>
											<?php echo $judul; ?>
										</h3>
									</a>
									<div class="progress mt-4 mb-2">
										<div class="progress-bar bg-secondary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
									<a href="<?php echo base_url() . 'list_kampanye/view/' . $id; ?>" class="btn btn-detail">Detail ➔</a>
								</div>
							</a>
						</div>
					</div>

				<?php endforeach; ?>
			</div>
		</div>
	</section>