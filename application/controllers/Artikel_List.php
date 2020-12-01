<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel_List extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('list_artikel_data');
		$this->load->helper('url');
		$this->load->library('form_validation');
	}

	public function view() {
		$kode = $this->uri->segment(3);
		$x['data'] = $this->list_artikel_data->get_berita_by_kode($kode);
		// $this->load->view('templates/header_view');
		$this->load->view('artikel_list_view',$x);
		// $this->load->view('templates/footer_view');
	}
}
