<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_Artikel extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_artikel_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	public function index()
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$data['artikel'] = $this->list_artikel_data->show_data();
		$this->load->view('list_artikel_view',$data);
	}

	function delete($kode_artikel)
	{

		$where = array('kode_artikel' => $kode_artikel);
		$this->list_artikel_data->hapus_data($where,'artikel');

		$this->session->set_flashdata('message', ' <div class="alert alert-success" style="margin-top: 0px">
			Successfully deleted.</div>');

		redirect(base_url('list_artikel'));
	}
	


	// Fungsi lain

}
