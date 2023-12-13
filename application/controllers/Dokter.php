<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokter extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('dokter_model');
	}

	public function index() 
	{		
		$data=array(
			"datadokter" => $this->dokter_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('dokter/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()){
			$scanbukti      = "";
            $dir            = "resources/file_dokter";
            $namafile		= '-';
            if(!empty($_FILES["filegambar"]["name"])){
                $filename                = $_FILES["filegambar"]["name"];
                $config['upload_path']   = "./".$dir;
                $config['overwrite']     = FALSE;
                $config['remove_spaces'] = TRUE;
                $config['max_size']      = 25000;
                $config['allowed_types'] = 'png|jpeg|jpg';
                $config['encrypt_name']  = FALSE;
                $config['file_name']     = $filename;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                if($this->upload->do_upload('filegambar')){
                    $file_info           = $this->upload->data();
                    $namafile            = $dir."/".$file_info["file_name"];
                }
            }
			$simpan = array(
				'nama'=>$this->input->post('nama'),
				'idkategori'=>$this->input->post('idkategori'),
				'filefoto'=>$namafile,
			);

			$id = $this->dokter_model->simpandata($simpan);
			redirect('dokter');
		}
		else{
			$data["datakategori"]=$this->dokter_model->getkategori();
			$this->load->view('templates/header');
			$this->load->view('dokter/create',$data);
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($iddokter)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','nama','required'); 

		if ($this->form_validation->run()) {
			$scanbukti      = "";
            $dir            = "resources/file_dokter";
            $namafile		= '-';
            if(!empty($_FILES["filegambar"]["name"])){
                $filename                = $_FILES["filegambar"]["name"];
                $config['upload_path']   = "./".$dir;
                $config['overwrite']     = FALSE;
                $config['remove_spaces'] = TRUE;
                $config['max_size']      = 25000;
                $config['allowed_types'] = 'png|jpeg|jpg';
                $config['encrypt_name']  = FALSE;
                $config['file_name']     = $filename;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                if($this->upload->do_upload('filegambar')){
                    $file_info           = $this->upload->data();
                    $namafile            = $dir."/".$file_info["file_name"];
                }
            }
			$simpan = array(
				'nama'=>$this->input->post('nama'),
				'idkategori'=>$this->input->post('idkategori'),
			);
			if($namafile<>"-"){
				$simpan['filefoto']=$namafile;
			}

			$id = $this->dokter_model->ubahdata($simpan,$iddokter);
			redirect('dokter');
		}else{
			$data["datakategori"]=$this->dokter_model->getkategori();
			$data['ubah'] = $this->dokter_model->getdetaildata($iddokter);
			$this->load->view('templates/header');
			$this->load->view('dokter/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$iddokter=$this->input->post('iddokter');
		$this->dokter_model->hapusdata($iddokter);
		redirect('dokter');
	}
}
