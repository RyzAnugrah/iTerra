<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cek_Kampanye extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('cek_kampanye_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	public function index()
		{
		$data = array('title'	=> 'Halaman Dashboard');
		$data['kampanye'] = $this->cek_kampanye_data->show_data();
		$this->load->view('cek_kampanye_view',$data);
	}

}
