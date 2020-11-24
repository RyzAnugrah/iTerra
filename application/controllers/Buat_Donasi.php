<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Donasi extends CI_Controller {
	
	// Index
	public function index() {
		$this->load->view('buat_donasi_view');
	}

	public function tambah() {
		$judul = $this->input->post('judul_donasi');
		$tgl = $this->input->post('tanggal_donasi');
		$desk = $this->input->post('deskripsi');
		$data = array(
			'email' => ($_SESSION['email']),
			'judul_donasi' => $judul,
			'tanggal_donasi' => $tgl,
			'deskripsi' => $desk,
			);
		$this->db->insert('donasi', $data);
		redirect(base_url('Dashboard_admin'));
	}
	// Fungsi lain
	
}
