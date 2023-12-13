<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('kategori_model');
	}

	public function index() 
	{		
		$data=array(
			"datakategori" => $this->kategori_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('kategori/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()){
			$simpan = array(
				'namakategori'=>$this->input->post('nama'),
				'waktu'=>date('Y-m-d H:i:s'),
			);

			$id = $this->kategori_model->simpandata($simpan);
			redirect('kategori');
		}
		else{
			$this->load->view('templates/header');
			$this->load->view('kategori/create');
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($idkategori)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()) {
			$simpan = array(
				'namakategori'=>$this->input->post('nama'),
				'waktu'=>date('Y-m-d H:i:s'),
			);

			$id = $this->kategori_model->ubahdata($simpan,$idkategori);
			redirect('kategori');
		}else{
			$data['ubah'] = $this->kategori_model->getdetaildata($idkategori);
			$this->load->view('templates/header');
			$this->load->view('kategori/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$idkategori=$this->input->post('idkategori');
		$this->kategori_model->hapusdata($idkategori);
		redirect('kategori');
	}
}
