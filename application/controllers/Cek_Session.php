<?php
class Cek_Session extends CI_Controller {

    public function __construct()
    {

        parent::__construct();

        if ($this->session->userdata['namauser'] == null)
        {
            return redirect('login'); //if session is not there, redirect to login page
        }

    }
}
?>