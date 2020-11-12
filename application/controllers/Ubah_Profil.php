<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ubah_Profil extends CI_Controller {
	
	// Index login
	public function index() 
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$this->load->view('ubah_profil_view',$data);
	}
	function __construct()
	{
		parent::__construct();
		$this->load->model('ubah_profil_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	
	// Fungsi lain
	
}
