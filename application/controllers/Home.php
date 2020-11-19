<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	// Index login
	public function index() {
		$this->load->view('templates/header_view');
		$this->load->view('home_view');
		$this->load->view('templates/footer_view');
	}

	// Fungsi lain

}
