<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Factory extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('factory_model');
        if (!$this->ion_auth->in_group(array('admin', 'Factory'))) {
            redirect('home/permission');
        }
    }

    public function index() {
        $data['items'] = $this->factory_model->getItem();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('factory', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addItem() {
        if ($this->ion_auth->in_group('Patient')) {
            redirect('home/permission');
        }
        $id = $this->input->post('id');
        $bags = $this->input->post('bags');
        $packs = $this->input->post('packs');
        $jugs = $this->input->post('jugs');
        $inputed_by = $this->input->post('inputed_by');
        $date_inputed = $this->input->post('date_inputed');
        $time_inputed = $this->input->post('time_inputed');
        

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Bags Field
        $this->form_validation->set_rules('bags', 'Bags', 'trim|required|xss_clean');
        // Validating Packs Field
        $this->form_validation->set_rules('packs', 'Packs', 'trim|required|xss_clean');
        // Validating Jugs Field
        $this->form_validation->set_rules('jugs', 'Jugs', 'trim|required|xss_clean');
        // Validating Inp. by Field
        $this->form_validation->set_rules('inputed_by', 'Inputed By', 'trim|required|min_length[2]|max_length[100]|xss_clean');
        // Validating Date Inp. Field
        $this->form_validation->set_rules('date_inputed', 'Date Inputed', 'trim|required|xss_clean');
        // Validating Time Inp. Field
        $this->form_validation->set_rules('time_inputed', 'Time Inputed', 'trim|required|xss_clean');
        

        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                $data = array();
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('factory', $data);
                $this->load->view('home/footer'); // just the footer file
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('factory', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = array();
            $data = array(
                'bags' => $bags,
                'packs' => $packs,
                'jugs' => $jugs,
                'inputed_by' => $inputed_by,
                'date_inputed' => $date_inputed,
                'time_inputed' => $time_inputed
            );
            if (empty($id)) {
                $this->factory_model->insertItem($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->factory_model->updateItem($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            }
            redirect('factory-production');
        }
    }

    function editItem() {
        $data = array();
        $id = $this->input->get('id');
        $data['item'] = $this->factory_model->getItemById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('factory', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editItemByJason() {
        $id = $this->input->get('id');
        $data['item'] = $this->factory_model->getItemById($id);
        echo json_encode($data);
    }

    function delete() {
        $id = $this->input->get('id');
        $this->factory_model->deleteItem($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('factory-production');
    }
}

/* End of file factory.php */
/* Location: ./application/modules/factory-production/controllers/factory.php */
