<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_Donasi_Member extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_donasi_member_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	// Index login
	public function index() 
		{
		$data = array('title'	=> 'Halaman Dashboard');
		// var_dump($_SESSION['email']);
		$data['donasi'] = $this->list_donasi_member_data->show_data();
		$this->load->view('list_donasi_member_view',$data);
	}

	// Fungsi lain
	
}
