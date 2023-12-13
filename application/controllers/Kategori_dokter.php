<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_dokter extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('kategori_dokter_model');
	}

	public function index() 
	{		
		$data=array(
			"datakategori_dokter" => $this->kategori_dokter_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('kategori_dokter/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()){
			$simpan = array(
				'namakategori_dokter'=>$this->input->post('nama'),
				'waktu'=>date('Y-m-d H:i:s'),
			);

			$id = $this->kategori_dokter_model->simpandata($simpan);
			redirect('kategori_dokter');
		}
		else{
			$this->load->view('templates/header');
			$this->load->view('kategori_dokter/create');
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($idkategori_dokter)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()) {
			$simpan = array(
				'namakategori_dokter'=>$this->input->post('nama'),
				'waktu'=>date('Y-m-d H:i:s'),
			);

			$id = $this->kategori_dokter_model->ubahdata($simpan,$idkategori_dokter);
			redirect('kategori_dokter');
		}else{
			$data['ubah'] = $this->kategori_dokter_model->getdetaildata($idkategori_dokter);
			$this->load->view('templates/header');
			$this->load->view('kategori_dokter/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$idkategori_dokter=$this->input->post('idkategori_dokter');
		$this->kategori_dokter_model->hapusdata($idkategori_dokter);
		redirect('kategori_dokter');
	}
}
