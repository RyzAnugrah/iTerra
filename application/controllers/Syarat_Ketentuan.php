<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Syarat_Ketentuan extends CI_Controller {

	// Index
	public function index() {
		$this->load->view('templates/header_view');
		$this->load->view('syarat_ketentuan_view');
		$this->load->view('templates/footer_view');
	}

	// Fungsi lain

}
