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


	// Fungsi lain

}
