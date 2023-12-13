<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('artikel_model');
	}

	public function index() 
	{		
		$data=array(
			"dataartikel" => $this->artikel_model->getdata(),
		);
		$this->load->view('templates/header');
		$this->load->view('artikel/index',$data); 
		$this->load->view('templates/footer');
    }


	public function tambahdata(){
		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()){
			$scanbukti      = "";
            $dir            = "resources/file_artikel";
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
				'isiartikel'=>$this->input->post('isiartikel'),
				'authors'=>$this->input->post('authors'),
				'filefoto'=>$namafile,
			);

			$id = $this->artikel_model->simpandata($simpan);
			redirect('artikel');
		}
		else{
			$this->load->view('templates/header');
			$this->load->view('artikel/create');
			$this->load->view('templates/footer');
		}
	}

	public function ubahdata($idartikel)
	{

		$this->load->library('form_validation');

		$this->form_validation->set_rules('judul','judul','required'); 

		if ($this->form_validation->run()) {
			$scanbukti      = "";
            $dir            = "resources/file_artikel";
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
				'isiartikel'=>$this->input->post('isiartikel'),
				'authors'=>$this->input->post('authors'),
			);
			if($namafile<>"-"){
				$simpan['filefoto']=$namafile;
			}

			$id = $this->artikel_model->ubahdata($simpan,$idartikel);
			redirect('artikel');
		}else{
			$data['ubah'] = $this->artikel_model->getdetaildata($idartikel);
			$this->load->view('templates/header');
			$this->load->view('artikel/edit',$data);
			$this->load->view('templates/footer');
		}
	}

	public function hapusdata()
	{
		$idartikel=$this->input->post('idartikel');
		$this->artikel_model->hapusdata($idartikel);
		redirect('artikel');
	}
}
