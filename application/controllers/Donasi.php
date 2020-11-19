<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Donasi extends CI_Controller {

	// Index
	public function index() {
		$this->load->view('templates/header_view');
		$this->load->view('donasi_view');
		$this->load->view('templates/footer_view');
	}

	// Fungsi lain

}