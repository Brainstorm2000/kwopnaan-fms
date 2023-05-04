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
        $this->db->insert('depot2', $data2);
    }

    function getNurse() {
        $this->db->where('hospital_id', $this->session->userdata('hospital_id'));
        $query = $this->db->get('depot2');
        return $query->result();
    }

    function getNurseById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('depot2');
        return $query->row();
    }

    function updateNurse($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('depot2', $data);
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('depot2');
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
