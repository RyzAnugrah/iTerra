<?php defined('BASEPATH') or exit('No direct script access allowed');
class register_data extends CI_Model
{
    public function show_data()
    {
        return $this->db->get('register_data');
    }
      
    public function register($table, $data) 
    {
        return $this->db->insert($table, $data);
    }

    public function can_login($email,$password) 
    {

    }
    
}
