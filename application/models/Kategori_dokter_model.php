<?php
class Kategori_dokter_model extends CI_Model {

    function getdata(){
        $this->db->select('*');
        $this->db->from('kategori_dokter'); 
        $this->db->order_by('kategori','asc');
        echo $this->db->last_query();
        return $this->db->get()->result_array(); 
    }

    function getdetaildata($id){
        $this->db->select('*');
        $this->db->where('id_kategori_dokter',$id);
        $this->db->from('kategori_dokter');
        return $this->db->get()->result_array();
    } 

    function simpandata($data){
    $this->db->insert('kategori_dokter', $data);

    if ($this->db->error()) {
        return $this->db->error();
    }

    if ($this->db->affected_rows() > 0) {
        return true; 
    } else {
        return false; 
    }
}

    function ubahdata($param,$idkategori_dokter){
        $this->db->where('id_kategori_dokter',$idkategori_dokter);
        return $this->db->update('kategori_dokter',$param);
    }

    function hapusdata($idkategori_dokter){
        $this->db->where('id_kategori_dokter',$idkategori_dokter);
        return $this->db->delete('kategori_dokter');
    }
}
?>