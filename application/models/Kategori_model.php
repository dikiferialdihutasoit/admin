<?php
class Kategori_model extends CI_Model {

    function getdata(){
        $this->db->select('*');
        $this->db->from('kategori'); 
        $this->db->order_by('namakategori','asc');
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('idkategori',$id);
        $this->db->from('kategori');
        return $this->db->get()->result_array();
    } 


   function simpandata($data){
    	$this->db->insert('kategori',$data);
    	if($this->db->affected_rows() >0){
		  return true; 
		}else{
		  return false; 
		}
    }

    function ubahdata($param,$idkategori){
        $this->db->where('idkategori',$idkategori);
        return $this->db->update('kategori',$param);
    }

    function hapusdata($idkategori){
        $this->db->where('idkategori',$idkategori);
        return $this->db->delete('kategori');
    }

}
?>