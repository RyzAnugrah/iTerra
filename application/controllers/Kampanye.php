<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kampanye extends CI_Controller {

	// Index
	public function index() {
		$this->load->view('templates/header_view');
		$this->load->view('kampanye_view');
		$this->load->view('templates/footer_view');
	}

	// Fungsi lain

}