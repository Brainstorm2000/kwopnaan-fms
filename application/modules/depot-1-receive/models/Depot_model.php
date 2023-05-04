<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Depot_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertItem($data) {
        $this->db->insert('received_at_depot_1', $data);
    }

    function getItem() {
        $query = $this->db->get('received_at_depot_1');
        return $query->result();
    }

    function getItemById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('received_at_depot_1');
        return $query->row();
    }

    function updateItem($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('received_at_depot_1', $data);
    }

    function deleteItem($id) {
        $this->db->where('id', $id);
        $this->db->delete('received_at_depot_1');
    }

                                

}
