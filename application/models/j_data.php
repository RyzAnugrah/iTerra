<?php defined('BASEPATH') or exit('No direct script access allowed');
class j_data extends CI_Model
{
      function get_data_user() {
            $user = $this->db->query("select * from identitas where  validasi = 0");
            return $user;
      }
      public function update_data($where,$data,$table) {
            $this->db->where($where);
		$this->db->update($table,$data);
        }
}
