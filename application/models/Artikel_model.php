<?php
class Artikel_model extends CI_Model {

    function getdata(){
        $this->db->select('*');
        $this->db->from('artikel'); 
        $this->db->order_by('waktu','desc');
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('idartikel',$id);
        $this->db->from('artikel');
        return $this->db->get()->result_array();
    } 


   function simpandata($data){
    	$this->db->insert('artikel',$data);
    	if($this->db->affected_rows() >0){
		  return true; 
		}else{
		  return false; 
		}
    }

    function ubahdata($param,$idartikel){
        $this->db->where('idartikel',$idartikel);
        return $this->db->update('artikel',$param);
    }

    function hapusdata($idartikel){
        $this->db->where('idartikel',$idartikel);
        return $this->db->delete('artikel');
    }

}
?>