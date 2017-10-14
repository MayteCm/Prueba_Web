<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Noticia extends CI_Controller {

	
	public function __construct()
	{
		// Your own constructor code
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->model('noticia_model');
	}

	public function index()
	{
		$data = $this->noticia_model->get_last_ten_noticias();
		$this->load->view('noticia/header');
		$this->load->view('noticia/index',array('data' => $data));
		$this->load->view('noticia/footer');
	}

	public function view()
	{
		$id = $this->uri->segment(3);
		$data = $this->noticia_model->get_by_id($id);
		$this->load->view('noticia/header');
		$this->load->view('noticia/view', array('noticia'=>$data));
		$this->load->view('noticia/footer');
	}

	public function edit()
	{
		$id = $this->uri->segment(3);
		if($this->input->post('titulo')&&$this->input->post('texto')&&$this->input->post('autor')&&$this->input->post('fecha')){
			$this->noticia_model->update_noticia($id, 
				array(
					'titulo' => $this->input->post('titulo'),
					'texto' => $this->input->post('texto'),
					'autor' => $this->input->post('autor'),
					'fecha' => $this->input->post('fecha')
				)
			);
			redirect('/index.php/noticia', 'refresh');
		}else{	
			$data = $this->noticia_model->get_by_id($id);
			$this->load->view('noticia/header');
			$this->load->view('noticia/edit', array('noticia'=>$data));
			$this->load->view('noticia/footer');
		}
	}

	public function new(){
		if($this->input->post('titulo')&&$this->input->post('texto')&&$this->input->post('autor')){
			$this->noticia_model->add_noticia(
				array(
					'titulo' => $this->input->post('titulo'),
					'texto' => $this->input->post('texto'),
					'autor' => $this->input->post('autor'),
					'fecha' => date('Y-m-d')
				)
			);
			redirect('/index.php/noticia', 'refresh');
		}else{	
			$this->load->view('noticia/header');
			$this->load->view('noticia/new');
			$this->load->view('noticia/footer');
		}
	}
	
	public function delete()
	{
		$id = $this->uri->segment(3);
		$this->noticia_model->delete_by_id($id);
		redirect('/index.php/noticia', 'refresh');
						
	}
	
	public function upload(){
		$config['upload_path']          = 'C:/xampp/htdocs/uploads';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 100;
		$config['max_width']            = 1024;
		$config['max_height']           = 768;
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('imagen'))
		{
			$error = array('error' => $this->upload->display_errors());
			redirect('/index.php/noticia','refresh');
		}
		else
		{
			//se guardo
			$data = array('upload_data' => $this->upload->data());
			// sacas id
			$id = $this->input->post('id');
			// sacas nombre con el que se guardo
			$imagen = $this->upload->data();
			// actualizas
			$this->noticia_model->update_noticia($id,array('imagen' => $imagen['file_name']));
			redirect('/index.php/noticia','refresh');
		}
	}

	public function add()
	{
		$id = $this->uri->segment(3);
		$data = $this->noticia_model->get_by_id($id);
		$this->load->view('noticia/header');
		$this->load->view('noticia/add', array('noticia'=>$data));
		$this->load->view('noticia/footer');
	}
}
