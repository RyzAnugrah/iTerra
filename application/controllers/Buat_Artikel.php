<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buat_Artikel extends CI_Controller {
	
	// Index
	public function index() {
		$this->load->view('buat_artikel_view');
	}
	public function tambah() {
		$judul = $this->input->post('judul_artikel');
		$tgl = $this->input->post('tanggal');
		$desk = $this->input->post('deskripsi');
		$pen = $this->input->post('penulis');

		$this->db->select("MAX(kode_artikel)+1 AS id");
		$this->db->from("artikel");
		$query = $this->db->get();

		$data = array(
			'email' => ($_SESSION['email']),
			'judul_artikel' => $judul,
			'tanggal' => $tgl,
			'deskripsi' => $desk,
			'penulis' => $pen,
			'kode_artikel' => $query->row()->id
			);
		$this->db->insert('artikel', $data);
		redirect(base_url('Dashboard_admin'));
	}
	// Fungsi lain
	
}
