<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Register extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->model('register_data');
	}

	function index()
	{
		$data = array(	'title'	=> 'Halaman Register');

		// $data['iTerra'] = $this->register_data->show_data()->result();
		$this->load->view('register_view', $data);
	}
	
	function add()
	{
		$this->form_validation->set_rules('nama', 'Nama', 'trim|required|min_length[3]');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		// $this->form_validation->set_rules('NIK', 'nik', 'trim|required|min_length[3]');
		// $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[3]|max_length[12]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[3]');
		$this->form_validation->set_rules('password1', 'Password Confirmation', 'trim|required|matches[password]');
		
		

		if ($this->form_validation->run() == false) {
			$this->load->view('register_view');
		} else {

				$nama = $this->input->post('nama');
				$email = $this->input->post('email');
				$ttl = $this->input->post('date');
				$jk = $this->input->post('jk');
				$nik = $this->input->post('NIK');
				$notel = $this->input->post('no_tlp');
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

			$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Data has been added.</div>');

			redirect(base_url('login'));
		}
	}
	function register(){
		$this->load->view('register_view');
	}
}
