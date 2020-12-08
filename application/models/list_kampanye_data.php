<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_kampanye_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('kampanye')->result_array();
    }
	function get_kampanye_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM kampanye WHERE kode_kampanye='$kode'");
		return $hsl;
	}

	function get_all_kampanye()
	{
		$hsl = $this->db->query("SELECT * FROM kampanye where verifikasi=1 ORDER BY kode_kampanye DESC");
		return $hsl;
	}

	function get_all_kampanye_limit()
	{
		$hsl = $this->db->query("SELECT * FROM kampanye where verifikasi=1 ORDER BY kode_kampanye DESC LIMIT 1");
		return $hsl;
	}
}
