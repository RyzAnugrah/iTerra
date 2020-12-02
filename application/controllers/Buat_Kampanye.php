<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Kampanye extends CI_Controller {
	
	// Index
	public function index() {
		$this->load->view('buat_kampanye_view');
	}
	function __construct()
	{
		parent::__construct();
		$this->load->model('list_kampanye_data');
		$this->load->library('upload');
	}


	function simpan_post()
	{
		$config['upload_path'] = 'assets/images/kampanye'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'assets/images/kampanye' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 420;
				$config['new_image'] = 'assets/images/kampanye' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$this->db->select("MAX(kode_kampanye)+1 AS id");
				$this->db->from("kampanye");
				$query = $this->db->get();

				$gambar = $gbr['file_name'];
				$judul = $this->input->post('judul_kampanye');
				$desk = $this->input->post('deskripsi');
				$tanggal = $this->input->post('tanggal');
				$pen = $this->input->post('penulis');

				$data = array(
					'email' => ($_SESSION['email']),
					'judul_kampanye' => $judul,
					'tanggal' => $tanggal,
					'deskripsi' => $desk,
					'penulis' => $pen,
					'gambar' => $gambar,
					'kode_kampanye' => $query->row()->id
				);
				$this->db->insert('kampanye', $data);

				// $this->list_artikel_data->simpan_berita($judul, $desk, $gambar, $pen);
				redirect(base_url('Dashboard_member'));
			} else {
				redirect('buat_kampanye');
			}
		} else {
			redirect('buat_kampanye');
		}
	}

	function lists()
	{
		$x['data'] = $this->list_kampanye_data->get_all_kampanye();
		$this->load->view('cek_kampanye_view', $x);
	}

	function view()
	{
		$kode = $this->uri->segment(3);
		$x['data'] = $this->list_kampanye_data->get_kampanye_by_kode($kode);
		$this->load->view('cek_kampanye_view', $x);
	}
}
	
	// Fungsi lain
	/*public function tambah() {
		//$judul = $this->input->post('judul_konten');
		$tgl = $this->input->post('tanggal_konten');
		$desk = $this->input->post('deskripsi');

		$this->db->select("MAX(kode_kampanye)+1 AS id");
		$this->db->from("kampanye");
		$query = $this->db->get();

		$data = array(
			'email' => ($_SESSION['email']),
			'judul_konten' => $judul,
			'tanggal_konten' => $tgl,
			'deskripsi' => $desk,
			'kode_kampanye' => $query->row()->id
			);
		$this->db->insert('kampanye', $data);
		redirect(base_url('Dashboard_member'));
	}*/
