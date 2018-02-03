<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Mdl_usuario");
	}


	public function index() // pedir datos al usuario
	{
		$datos_header = array('titulo' => 'Sesión de usuario', );
		$this->load->view('layout');
		$this->load->view('header',$datos_header);
		$this->load->view('login'); // contenido dinamico
		$this->load->view('footer');
	}

	public function verificar() // verificar los datos en la base de datos
	{
		// capturar datos enviados por el formulario login
		$user 			= $this->input->post('user');
		$password 		= $this->input->post('password');
		$usuario = $this->Mdl_usuario->getUsuario($user, $password);
		if (count($usuario) > 0) {
			redirect(base_url('index.php/solicitud/list'));
		} else {
			redirect('login/index');
		}

	}



}
