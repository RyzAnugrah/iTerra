<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_artikel_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('artikel')->result_array();
	}

	// function simpan_berita($judul, $desk, $gambar, $pen)
	// {
	// 	$hsl = $this->db->query("INSERT INTO artikel (judul_artikel,deskripsi,gambar,penulis) VALUES ('$judul','$desk','$gambar','$pen')");
	// 	return $hsl;
	// }

	function get_berita_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM artikel WHERE kode_artikel='$kode'");
		return $hsl;
	}

	function get_all_berita()
	{
		$hsl = $this->db->query("SELECT * FROM artikel ORDER BY kode_artikel DESC");
		return $hsl;
	}
	function hapus_data($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}
}
