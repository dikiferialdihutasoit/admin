<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('berita_model');
	}

	public function index() 
	{		
		$data=array(
			"databerita" => $this->berita_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('berita/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()){
			$scanbukti      = "";
            $dir            = "resources/file_berita";
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
				'waktu'=>date('Y-m-d H:i:s'),
				'isiberita'=>$this->input->post('isiberita'),
				'authors'=>$this->input->post('authors'),
				'filefoto'=>$namafile,
			);

			$id = $this->berita_model->simpandata($simpan);
			redirect('berita');
		}
		else{
			$this->load->view('templates/header');
			$this->load->view('berita/create');
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($idberita)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()) {
			$scanbukti      = "";
            $dir            = "resources/file_berita";
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
				'waktu'=>date('Y-m-d H:i:s'),
				'isiberita'=>$this->input->post('isiberita'),
				'authors'=>$this->input->post('authors'),
			);
			if($namafile<>"-"){
				$simpan['filefoto']=$namafile;
			}

			$id = $this->berita_model->ubahdata($simpan,$idberita);
			redirect('berita');
		}else{
			$data['ubah'] = $this->berita_model->getdetaildata($idberita);
			$this->load->view('templates/header');
			$this->load->view('berita/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$idberita=$this->input->post('idberita');
		$this->berita_model->hapusdata($idberita);
		redirect('berita');
	}
}
