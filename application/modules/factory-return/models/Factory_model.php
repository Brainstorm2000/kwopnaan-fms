<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Factory_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertItem($data) {
        $this->db->insert('returned_to_factory', $data);
    }

    function getItem() {
        $query = $this->db->get('returned_to_factory');
        return $query->result();
    }

    function getItemById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('returned_to_factory');
        return $query->row();
    }

    function updateItem($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('returned_to_factory', $data);
    }

    function deleteItem($id) {
        $this->db->where('id', $id);
        $this->db->delete('returned_to_factory');
    }

                                

}
