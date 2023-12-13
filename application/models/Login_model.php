<?php
class Login_model extends CI_Model {

    function selectdata($where){
        return $this->db->get_where('user',$where);
    } 

    function getdata($username){
        $this->db->select('*');
        $this->db->from('user u');
        $this->db->where(array('username'=>$username));
        return $this->db->get();
    } 

    function getpegawai($iduser){
        $this->db->select('u.id_user,u.level,u.nama_user');
        $this->db->from('user u');
        $this->db->where('u.id_user='.$iduser);
        return $this->db->get();
    } 
}
?>