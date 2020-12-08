<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_Member extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('akses') != "0") {
			redirect(base_url("login"));
		}
		else{
			$this->load->library('upload');
			$this->load->model('j_data');
			$this->load->helper('form', 'url');
			$this->load->library('form_validation');
		}
	}
	// Index login
	public function index() {
		$identitas = $this->db->get_where('identitas',['email' => $_SESSION['email']])->row_array();
		$data = array(
			'title'	=> 'Halaman Dashboard',
			'validasi' => $identitas["validasi"] 
		);
		$this->load->view('dashboard_member_view',$data,$identitas);
	}
	
	function tambah() {
		$config['upload_path'] = 'assets/images/profil'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {			
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = 'assets/images/profil' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 420;
				$config['new_image'] = 'assets/images/profil' . $gbr['file_name'];

				$this->load->library('image_lib', $config);
				$this->image_lib->resize();


				$gambar = $gbr['file_name'];

				$data = array(
					'fotoktp' => $gambar,
				);	
			 
				$where = array(
					'email' => $_SESSION['email']
				);
			 
				$this->j_data->update_data($where,$data,'identitas');

				redirect(base_url('Dashboard_member'));
			} else {
				redirect(base_url('buat_artikel'));
			}
		} else {
			redirect(base_url('buat_artikel'));
		}
		}
	}
	
	// Fungsi lain