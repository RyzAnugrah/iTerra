<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_Admin extends CI_Controller {
	
	// Index login
	public function index() 
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$this->load->view('dashboard_admin_view',$data);
	}
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('akses') != "1") {
			redirect(base_url("login"));
		}
		else {
			$this->load->model('dashboard_admin_data');
			$this->load->helper('url');
			$this->load->library('form_validation');
		}
		
	}
	
	
	// Fungsi lain
	
}
