<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Kampanye extends CI_Controller {
	
	// Index
	public function index() {
		$this->load->view('buat_kampanye_view');
	}
	
	// Fungsi lain
	public function tambah() {
		$judul = $this->input->post('judul_konten');
		$tgl = $this->input->post('tanggal_donasi');
		$desk = $this->input->post('deskripsi');

		$this->db->select("MAX(kode_kampanye)+1 AS id");
		$this->db->from("kampanye");
		$query = $this->db->get();

		$data = array(
			'email' => ($_SESSION['email']),
			'judul_donasi' => $judul,
			'tanggal_donasi' => $tgl,
			'deskripsi' => $desk,
			'kode_kampanye' => $query->row()->id
			);
		$this->db->insert('donasi', $data);
		redirect(base_url('Dashboard_admin'));
	}
	
}
