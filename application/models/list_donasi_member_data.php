<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_donasi_member_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('donasi')->result_array();
    }
    function get_data_donasi() {
		$donasi = $this->db->query("select * from donasi where  nilai = 1");
		return $donasi;
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
    public function update_data($where,$data,$table) {
		$this->db->where($where);
		$this->db->update($table,$data);
	}
}