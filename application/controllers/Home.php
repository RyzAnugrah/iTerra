<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('list_artikel_data');
		$this->load->model('list_kampanye_data');
	}

	public function index()
	{
		$x['list_artikel_data'] = $this->list_artikel_data->get_all_berita_limit();
		$x['list_kampanye_data'] = $this->list_kampanye_data->get_all_kampanye_limit();
		$this->load->view('templates/header_view');
		$this->load->view('home_view', $x);
		$this->load->view('templates/footer_view');
	}
}
