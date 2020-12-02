<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Artikel extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_artikel_data');
		$this->load->library('upload');
	}

	public function index() {
		$this->load->view('buat_artikel_view');
	}

	// public function tambah() {
	// 	$judul = $this->input->post('judul_artikel');
	// 	$tgl = $this->input->post('tanggal');
	// 	$desk = $this->input->post('deskripsi');
	// 	$pen = $this->input->post('penulis');

	// 	$this->db->select("MAX(kode_artikel)+1 AS id");
	// 	$this->db->from("artikel");
	// 	$query = $this->db->get();

	// 	$data = array(
	// 		'email' => ($_SESSION['email']),
	// 		'judul_artikel' => $judul,
	// 		'tanggal' => $tgl,
	// 		'deskripsi' => $desk,
	// 		'penulis' => $pen,
	// 		'kode_artikel' => $query->row()->id
	// 		);
	// 	$this->db->insert('artikel', $data);
	// 	redirect(base_url('Dashboard_admin'));
	// }

	function simpan_post()
	{
		$config['upload_path'] = 'assets/images/artikel'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'assets/images/artikel' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 420;
				$config['new_image'] = 'assets/images/artikel' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$this->db->select("MAX(kode_artikel)+1 AS id");
				$this->db->from("artikel");
				$query = $this->db->get();

				$gambar = $gbr['file_name'];
				$judul = $this->input->post('judul_artikel');
				$desk = $this->input->post('deskripsi');
				$pen = $this->input->post('penulis');

				$data = array(
					'email' => ($_SESSION['email']),
					'judul_artikel' => $judul,
					'deskripsi' => $desk,
					'penulis' => $pen,
					'gambar' => $gambar,
					'kode_artikel' => $query->row()->id
				);
				$this->db->insert('artikel', $data);

				// $this->list_artikel_data->simpan_berita($judul, $desk, $gambar, $pen);
				redirect(base_url('Dashboard_admin'));
			} else {
				redirect(base_url('buat_artikel'));
			}
		} else {
			redirect(base_url('buat_artikel'));
		}
	}

	function lists()
	{
		$x['data'] = $this->list_artikel_data->get_all_berita();
		$this->load->view('artikel_view', $x);
	}

	function view()
	{
		$kode = $this->uri->segment(3);
		$x['data'] = $this->list_artikel_data->get_berita_by_kode($kode);
		$this->load->view('artikel_view', $x);
	}
}
