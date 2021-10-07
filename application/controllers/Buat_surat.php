<?php
class Buat_surat extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('');
        $this->load->library('upload');
        is_logout();
        $this->load->model('Bs_model', 'sk');
    }
    function index()
    {
        $this->form_validation->set_rules('no_agenda', 'No. Agenda', 'required|numeric|is_unique[surat_keluar.no_agenda]');
        $this->form_validation->set_rules('pengirim', 'Pengirim', 'required');
        $this->form_validation->set_rules('no_surat', 'No. Surat', 'required');
        $this->form_validation->set_rules('tgl_surat', 'Tanggal Surat', 'required');
        $this->form_validation->set_rules('tgl_diterima', 'Tanggal Diterima', 'required');
        $this->form_validation->set_rules('isi_surat', 'Isi Surat', 'required');

        if ($this->form_validation->run() == FALSE) {
            $data = [
                'user' => $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array(),
                'judul' => 'Buat Surat'
            ];

            $this->template->render_page('buat-surat/index', $data);
        } else {
            // jika validasi lolos, insert data
            $this->sk->insert1();
        }
    }
}
