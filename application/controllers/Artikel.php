<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {
	
	// Index login
	public function index() {
		$this->load->view('templates/header_view');
		$this->load->view('artikel_view');
		$this->load->view('templates/footer_view');
	}
	
	// Fungsi lain
	
}
