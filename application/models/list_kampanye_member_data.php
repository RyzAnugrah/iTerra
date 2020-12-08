<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_kampanye_member_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('kampanye')->result_array();
    }
	function get_data_kampanye() {
		$kampanye = $this->db->query("select * from kampanye where  verifikasi = 1");
		return $kampanye;
	}
}
