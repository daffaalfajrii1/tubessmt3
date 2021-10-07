<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Bs_model extends CI_Model
{
    public function insert1()
    {
        $data = [
            'no_agenda' => $this->input->post('no_agenda', true),
            'pengirim' => $this->input->post('pengirim', true),
            'no_surat' => $this->input->post('no_surat', true),
            'tgl_surat' => $this->input->post('tgl_surat', true),
            'tgl_diterima' => $this->input->post('tgl_diterima', true),
            'keterangan' => $this->input->post('keterangan', true),
            'user_id' => $this->input->post('user_id'),
            'created_at' => date('Y-m-d'),
            'isi_surat' => $this->input->post('isi_surat')
        ];

        $this->db->insert('surat_keluar', $data);
        $this->session->set_flashdata('msg', 'ditambahkan.');
        redirect('home');
    }
}
