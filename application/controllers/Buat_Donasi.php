<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Donasi extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_donasi_data');
		$this->load->library('upload');
	}

	public function index() {
		$this->load->view('buat_donasi_view');
	}

	// public function tambah() {
	// 	$judul = $this->input->post('judul_donasi');
	// 	$tgl = $this->input->post('tanggal_donasi');
	// 	$desk = $this->input->post('deskripsi');

	// 	$this->db->select("MAX(kode_donasi)+1 AS id");
	// 	$this->db->from("donasi");
	// 	$query = $this->db->get();

	// 	$data = array(
	// 		'email' => ($_SESSION['email']),
	// 		'judul_donasi' => $judul,
	// 		'tanggal_donasi' => $tgl,
	// 		'deskripsi' => $desk,
	// 		'kode_donasi' => $query->row()->id
	// 		);
	// 	$this->db->insert('donasi', $data);
	// 	redirect(base_url('Dashboard_admin'));
	// }

	function simpan_post()
	{
		$config['upload_path'] = 'assets/images/donasi'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'assets/images/donasi' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 420;
				$config['new_image'] = 'assets/images/donasi' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$this->db->select("MAX(kode_donasi)+1 AS id");
				$this->db->from("donasi");
				$query = $this->db->get();

				$gambar = $gbr['file_name'];
				$judul = $this->input->post('judul_donasi');
				$desk = $this->input->post('deskripsi');
				$tgl = $this->input->post('tanggal_donasi');
				$jml = $this->input->post('jumlah_donasi');

				$data = array(
					'email' => ($_SESSION['email']),
					'judul_donasi' => $judul,
					'deskripsi' => $desk,
					'tanggal_donasi' => $tgl,
					'jumlah_donasi' => $jml,
					'gambar' => $gambar,
					'kode_donasi' => $query->row()->id
				);
				$this->db->insert('donasi', $data);

				// $this->list_donasi_data->simpan_donasi($judul, $desk, $gambar, $pen);
				redirect(base_url('Dashboard_admin'));
			} else {
				redirect('buat_donasi');
			}
		} else {
			redirect('buat_donasi');
		}
	}

	function lists()
	{
		$x['data'] = $this->list_donasi_data->get_all_donasi();
		$this->load->view('donasi_view', $x);
	}

	function view()
	{
		$kode = $this->uri->segment(3);
		$x['data'] = $this->list_donasi_data->get_donasi_by_kode($kode);
		$this->load->view('donasi_view', $x);
	}
}
