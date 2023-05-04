<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Factory_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertItem($data) {
        // $data1 = array('hospital_id' => $this->session->userdata('hospital_id'));
        // $data2 = array_merge($data, $data1);
        $this->db->insert('factory_production', $data);
    }

    function getItem() {
        // $this->db->where('hospital_id', $this->session->userdata('hospital_id'));
        $query = $this->db->get('factory_production');
        return $query->result();
    }

    function getItemById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('factory_production');
        return $query->row();
    }

    function updateItem($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('factory_production', $data);
    }

    function deleteItem($id) {
        $this->db->where('id', $id);
        $this->db->delete('factory_production');
    }

                                

}
