<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('login_model');
	}

	public function index()
	{
		$this->load->view('login');
	}

	public function aksilogin(){

		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => sha1($password),
		);
		$cekvalid = $this->login_model->selectdata($where)->num_rows(); //cek apakah terdapat data user

		if($cekvalid == 0){
			$this->session->set_flashdata('errorlogin','User/Pass Tidak Sesuai');
			redirect('login');
		}
		else{
			$datauser = $this->login_model->getdata($username)->row(); //masukkan satu baris isi user ke session
			$data_user = array(
				'namauser' => $datauser->name,
			);
			$this->session->set_userdata($data_user);
			redirect("home");
		}
	}

	public function aksilogout(){
		$this->session->sess_destroy();
		redirect('login');
	}
}
