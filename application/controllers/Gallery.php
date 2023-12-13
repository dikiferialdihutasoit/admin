<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('gallery_model');
	}

	public function index() 
	{		
		$data=array(
			"datagallery" => $this->gallery_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('gallery/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()){
			$scanbukti      = "";
            $dir            = "resources/file_gallery";
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
				'judul'=>$this->input->post('judul'),
				'idkategori'=>$this->input->post('idkategori'),
				'waktu'=>date('Y-m-d H:i:s'),
				'filefoto'=>$namafile,
			);

			$id = $this->gallery_model->simpandata($simpan);
			redirect('gallery');
		}
		else{
			$data["datakategori"]=$this->gallery_model->getkategori();
			$this->load->view('templates/header');
			$this->load->view('gallery/create',$data);
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($idgallery)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()) {
			$scanbukti      = "";
            $dir            = "resources/file_gallery";
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
				'judul'=>$this->input->post('judul'),
				'idkategori'=>$this->input->post('idkategori'),
				'waktu'=>date('Y-m-d H:i:s'),
			);
			if($namafile<>"-"){
				$simpan['filefoto']=$namafile;
			}

			$id = $this->gallery_model->ubahdata($simpan,$idgallery);
			redirect('gallery');
		}else{
			$data["datakategori"]=$this->gallery_model->getkategori();
			$data['ubah'] = $this->gallery_model->getdetaildata($idgallery);
			$this->load->view('templates/header');
			$this->load->view('gallery/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$idgallery=$this->input->post('idgallery');
		$this->gallery_model->hapusdata($idgallery);
		redirect('gallery');
	}
}
