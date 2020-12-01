<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Donasi extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_donasi_data');
	}

	public function index() {
		$x['data'] = $this->list_donasi_data->get_all_donasi();
		$this->load->view('templates/header_view');
		$this->load->view('donasi_view', $x);
		$this->load->view('templates/footer_view');
	}

}