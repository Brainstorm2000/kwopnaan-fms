<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Depot extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('depot_model');
        if (!$this->ion_auth->in_group(array('admin', 'Depot1'))) {
            redirect('home/permission');
        }
    }

    public function index() {
        $data['items'] = $this->depot_model->getItem();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('depot', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addItem() {
        // if ($this->ion_auth->in_group('Patient')) {
        //     redirect('home/permission');
        // }
        $id = $this->input->post('id');
        $bags = $this->input->post('bags');
        $packs = $this->input->post('packs');
        $jugs = $this->input->post('jugs');
        $returned_by = $this->input->post('returned_by');
        $date_returned = $this->input->post('date_returned');
        $time_returned = $this->input->post('time_returned');
        

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Bags Field
        $this->form_validation->set_rules('bags', 'Bags', 'trim|required|xss_clean');
        // Validating Packs Field
        $this->form_validation->set_rules('packs', 'Packs', 'trim|required|xss_clean');
        // Validating Jugs Field
        $this->form_validation->set_rules('jugs', 'Jugs', 'trim|required|xss_clean');
        // Validating Returned by Field
        $this->form_validation->set_rules('returned_by', 'Returned By', 'trim|required|min_length[2]|max_length[100]|xss_clean');
        // Validating Date Returned Field
        $this->form_validation->set_rules('date_returned', 'Date Returned', 'trim|required|xss_clean');
        // Validating Time Returned Field
        $this->form_validation->set_rules('time_returned', 'Time Returned', 'trim|required|xss_clean');
        

        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                $data = array();
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('depot', $data);
                $this->load->view('home/footer'); // just the footer file
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('depot', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = array();
            $data = array(
                'bags' => $bags,
                'packs' => $packs,
                'jugs' => $jugs,
                'returned_by' => $returned_by,
                'date_returned' => $date_returned,
                'time_returned' => $time_returned
            );
            if (empty($id)) {
                $this->depot_model->insertItem($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->depot_model->updateItem($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            }
            redirect('depot-1-receive');
        }
    }

    function editItem() {
        $data = array();
        $id = $this->input->get('id');
        $data['item'] = $this->depot_model->getItemById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('depot', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editItemByJason() {
        $id = $this->input->get('id');
        $data['item'] = $this->depot_model->getItemById($id);
        echo json_encode($data);
    }

    function delete() {
        $id = $this->input->get('id');
        $this->depot_model->deleteItem($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('depot-1-receive');
    }
}

/* End of file factory.php */
/* Location: ./application/modules/depot-1-receive/controllers/depot.php */
