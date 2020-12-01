<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_Donasi extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_donasi_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	// Index login
	public function index()
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$data['donasi'] = $this->list_donasi_data->show_data();
		$this->load->view('list_donasi_view',$data);

	}

	public function view()
	{
		$kode = $this->uri->segment(3);
		$x['data'] = $this->list_donasi_data->get_donasi_by_kode($kode);
		// $this->load->view('templates/header_view');
		$this->load->view('donasi_list_view', $x);
		// $this->load->view('templates/footer_view');
	}



}
