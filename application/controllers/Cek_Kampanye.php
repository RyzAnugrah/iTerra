<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cek_Kampanye extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('cek_kampanye_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	public function index()
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$data['kampanye'] = $this->cek_kampanye_data->get_data_kampanye()->result();
		$this->load->view('cek_kampanye_view',$data);
	}

	public function edit($email){		
		$data = array(
			'verifikasi' => 1
		);
	 
		$where = array(
			'email' => $email
		);
	 
		$this->cek_kampanye_data->update_data($where,$data,'kampanye');
		redirect(base_url('cek_kampanye'));
	}

	function delete($email)
	{

		$where = array('email' => $email);
		$this->list_artikel_data->hapus_data($where, 'kampanye');

		$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Successfully deleted.</div>');

		redirect(base_url('cek_kampanye'));
	}
}
