<?php
class Berita_model extends CI_Model {

    function getdata(){
        $this->db->select('*');
        $this->db->from('berita'); 
        $this->db->order_by('waktu','desc');
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('idberita',$id);
        $this->db->from('berita');
        return $this->db->get()->result_array();
    } 


   function simpandata($data){
    	$this->db->insert('berita',$data);
    	if($this->db->affected_rows() >0){
		  return true; 
		}else{
		  return false; 
		}
    }

    function ubahdata($param,$idberita){
        $this->db->where('idberita',$idberita);
        return $this->db->update('berita',$param);
    }

    function hapusdata($idberita){
        $this->db->where('idberita',$idberita);
        return $this->db->delete('berita');
    }

}
?>