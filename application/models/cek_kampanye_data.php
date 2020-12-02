<?php defined('BASEPATH') or exit('No direct script access allowed');
class cek_kampanye_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('kampanye')->result_array();
	}

	// function simpan_berita($judul, $desk, $gambar, $pen)
	// {
	// 	$hsl = $this->db->query("INSERT INTO artikel (judul_artikel,deskripsi,gambar,penulis) VALUES ('$judul','$desk','$gambar','$pen')");
	// 	return $hsl;
	// }

	function get_kampanye_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM kampanye WHERE kode_kampanye='$kode'");
		return $hsl;
	}

	function get_all_kampanye()
	{
		$hsl = $this->db->query("SELECT * FROM kampanye ORDER BY kode_kampanye DESC");
		return $hsl;
	}
}
