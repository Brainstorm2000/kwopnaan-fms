<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Nurse_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertNurse($data) {
        $data1 = array('hospital_id' => $this->session->userdata('hospital_id'));
        $data2 = array_merge($data, $data1);
        $this->db->insert('factory', $data2);
    }

    function getNurse() {
        $this->db->where('hospital_id', $this->session->userdata('hospital_id'));
        $query = $this->db->get('factory');
        return $query->result();
    }

    function getNurseById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('factory');
        return $query->row();
    }

    function updateNurse($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('factory', $data);
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('factory');
    }

    function updateIonUser($username, $email, $password, $ion_user_id) {
        $uptade_ion_user = array(
            'username' => $username,
            'email' => $email,
            'password' => $password
        );
        $this->db->where('id', $ion_user_id);
        $this->db->update('users', $uptade_ion_user);
    }

}
