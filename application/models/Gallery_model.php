<?php
class Gallery_model extends CI_Model {

    function getdata(){
        $this->db->select('*');
        $this->db->from('gallery as g'); 
        $this->db->join('kategori k','g.idkategori = k.idkategori');
        $this->db->order_by('g.waktu','desc');
        return $this->db->get()->result_array(); 
    }

    function getkategori(){
        $this->db->select('*');
        $this->db->from('kategori'); 
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('idgallery',$id);
        $this->db->from('gallery');
        return $this->db->get()->result_array();
    } 


   function simpandata($data){
    	$this->db->insert('gallery',$data);
    	if($this->db->affected_rows() >0){
		  return true; 
		}else{
		  return false; 
		}
    }

    function ubahdata($param,$idgallery){
        $this->db->where('idgallery',$idgallery);
        return $this->db->update('gallery',$param);
    }

    function hapusdata($idgallery){
        $this->db->where('idgallery',$idgallery);
        return $this->db->delete('gallery');
    }

}
?>