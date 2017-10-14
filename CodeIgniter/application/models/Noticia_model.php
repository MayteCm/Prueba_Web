<?php

    class Noticia_model extends CI_Model {

        public function __construct()
        {
                parent::__construct();
                $this->load->database();    
        }

        public function get_last_ten_noticias()
        {
                $query = $this->db->get('noticias', 10);
                return $query->result();
        }

        public function get_all()
        {
                $query = $this->db->get('noticias');
                return $query->result();
        }

        public function get_by_id($id)
        {
                $query = $this->db->get_where('noticias',array('id'=>$id));
                return $query->result()[0];
        }

        public function delete_by_id($id)
        {
                $this->db->delete('noticias', array('id' => $id)); 
                return $id;
        }

        public function add_noticia($data)
        {
            $this->db->insert('noticias',$data);
            return $this->db->insert_id();     
        }

        public function update_noticia($id, $data)
        {
            $this->db->set($data);
            $this->db->where('id',$id);
            $this->db->update('noticias');
            return $id;
        }
    }    
?>