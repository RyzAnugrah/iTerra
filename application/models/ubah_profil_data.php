<?php defined('BASEPATH') or exit('No direct script access allowed');
class ubah_profil_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('dashboard_member');
    }  
}
