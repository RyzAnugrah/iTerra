<?php defined('BASEPATH') or exit('No direct script access allowed');
class list_artikel_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('artikel')->result_array();
    } 
}
