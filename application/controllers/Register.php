<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Register extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->helper('url');
		$this->load->model('register_data');
	}

	function index()
	{
		$data = array(	'title'	=> 'Halaman Register');
		$this->load->view('register_view', $data);
	}

	function register()
	{
		$this->load->view('register_view');
	}
	
	function add()
	{
		$this->form_validation->set_rules('nama', 'Nama', 'trim|required|min_length[3]|alpha');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('NIK', 'NIK', 'trim|required|exact_length[16]|numeric');
		$this->form_validation->set_rules('nomortelepon', 'No Telp', 'trim|required|min_length[11]|numeric');
		$this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[3]');
		$this->form_validation->set_rules('password1', 'Password Confirmation', 'trim|required|matches[password]');
		
		if ($this->form_validation->run() == false) {
			$this->load->view('register_view');
		} else {

				$nama = $this->input->post('nama');
				$email = $this->input->post('email');
				$ttl = $this->input->post('tanggallahir');
				$jk = $this->input->post('jenis_kelamin');
				$nik = $this->input->post('NIK');
				$notel = $this->input->post('nomortelepon');
				$password = $this->input->post('password');
				$data = array(
					'nama' => $nama,
					'email' => $email,
					'tanggallahir' => $ttl,
					'nik' => $nik,
					'jenis_kelamin' => $jk,
					'nomortelepon' => $notel,
					'password' => password_hash($password, PASSWORD_DEFAULT)
					);

			$this->db->insert('identitas', $data);

			$this->session->set_flashdata('reg', '<div class="alert alert-success text-center">Register berhasil. Silakan Login dengan Akun yang telah dibuat</div>');
			redirect(base_url('login'));
		}
	}

}
