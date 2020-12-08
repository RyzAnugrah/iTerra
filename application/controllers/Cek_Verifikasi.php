<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cek_Verifikasi extends CI_Controller {
	
	// Index
	function __construct(){
		parent::__construct();		
		$this->load->model('j_data');
        $this->load->helper('url');
	}
	public function index() {
		$data['identitas'] = $this->j_data->get_data_user()->result();
		$this->load->view('cek_verifikasi_view',$data);
	}

	public function edit($email){		
		$data = array(
			'validasi' => 1
		);
	 
		$where = array(
			'email' => $email
		);
	 
		$this->j_data->update_data($where,$data,'identitas');
		redirect(base_url('cek_verifikasi'));
	}

	function delete($email)
	{

		$where = array('email' => $email);
		$this->list_artikel_data->hapus_data($where, 'identitas');

		$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Successfully deleted.</div>');

		redirect(base_url('cek_verifikasi'));
	}

	
}
