<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kampanye extends CI_Controller {

	// Index
	function __construct()
	{
		parent::__construct();
		$this->load->model('list_kampanye_data');
	}
	public function index() {
		$x['data'] = $this->list_kampanye_data->get_all_kampanye();
		$this->load->view('templates/header_view');
		$this->load->view('kampanye_view', $x);
		$this->load->view('templates/footer_view');
	}

	// Fungsi lain


}