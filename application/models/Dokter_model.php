<?php
class Dokter_model extends CI_Model {

    function getdata(){
        $this->db->select('d.*,kd.nama_kategori');
        $this->db->from('dokter as d'); 
        $this->db->join('kategori_dokter kd','d.idkategori = kd.id_kategori_dokter');
        return $this->db->get()->result_array(); 
    }

    function getkategori(){
        $this->db->select('*');
        $this->db->from('kategori_dokter'); 
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('iddokter',$id);
        $this->db->from('dokter');
        return $this->db->get()->result_array();
    } 


   function simpandata($data){
    	$this->db->insert('dokter',$data);
    	if($this->db->affected_rows() >0){
		  return true; 
		}else{
		  return false; 
		}
    }

    function ubahdata($param,$iddokter){
        $this->db->where('iddokter',$iddokter);
        return $this->db->update('dokter',$param);
    }

    function hapusdata($iddokter){
        $this->db->where('iddokter',$iddokter);
        return $this->db->delete('dokter');
    }

}
?>