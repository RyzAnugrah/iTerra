<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_Member extends CI_Controller {
	
	// Index login
	public function index() 
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$this->load->view('dashboard_member_view',$data);
	}
	function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard_member_data');
		$this->load->helper('form','url');
		$this->load->library('form_validation');
	}
	
	function doupload() {
		$this->load->helper('form','url');

		$config['upload_path']          = './uploads/';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 10000;
		$config['max_width']            = 10000;
		$config['max_height']           = 10000;

		$this->load->library('upload', $config);
		
		if ( $this->upload->do_upload('userfile'))
		{
			$this->load->view(',SD');
		}
		else
		{
				$data = array('upload_data' => $this->upload->data());
				return $this->upload->data('fotoktp');
		}
	}
	
	// Fungsi lain
	
}
