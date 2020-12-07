<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_donasi_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('donasi')->result_array();
    }

    function get_donasi_by_kode($kode)
	{
		$hsl = $this->db->query("SELECT * FROM donasi WHERE kode_donasi='$kode'");
		return $hsl;
	}

	function get_all_donasi()
	{
		$hsl = $this->db->query("SELECT * FROM donasi ORDER BY kode_donasi DESC");
		return $hsl;
	}
	function hapus_data($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}
}
