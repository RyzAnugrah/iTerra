<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_artikel_data');
	}

	public function index() {
		$x['data'] = $this->list_artikel_data->get_all_berita();
		$this->load->view('templates/header_view');
		$this->load->view('artikel_view',$x);
		$this->load->view('templates/footer_view');
	}

	
}
