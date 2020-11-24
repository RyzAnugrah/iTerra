<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	
	// Index login
	public function index() {
		// Fungsi Login
		$valid = $this->form_validation;
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$valid->set_rules('username','Username','required');
		$valid->set_rules('password','Password','required');
		if($valid->run()) {
			$this->simple_login->login($username,$password, base_url('dasbor'), base_url('login'));
		}
		// End fungsi login
		$data = array(	'title'	=> 'Halaman Login Administrator');
		$this->load->view('login_view',$data);
	}
	
	public function validation() 
	{
		$this->form_validation->set_rules('email', 'Email', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');

		if ($this->form_validation->run() == false) 
		{
			$this->load->view('register_data');
		}
		else 
		{
			$email = $this->input->post('email');	
			$password = $this->input->post('password');	

			$user = $this->db->get_where('identitas',['email' => $email])->row_array();
			
			if ($user) 
			{
				if (password_verify(($password), $user['password'])) {
					$data = [
						'email' => $user['email'],
					];
					$this->session->set_userdata($data);
					redirect(base_url('dashboard_member'));
				}
				else {
					redirect(base_url('Login'));
				}
			}
			else {
				redirect(base_url('Login'));
			}
		}
	}


	// Logout di sini
	public function logout() {
		$this->simple_login->logout();	
	}	
}
