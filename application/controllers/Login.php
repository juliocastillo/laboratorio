<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$datos_header = array('titulo' => 'Sesión de usuario', );
		$this->load->view('layout');
		$this->load->view('header',$datos_header);
		$this->load->view('login'); // contenido dinamico
		$this->load->view('footer');

	}
	public function auth()
	{
		$datos_header = array('titulo' => 'Dashboard', );
		$this->load->view('layout');
		$this->load->view('header',$datos_header);
		$this->load->view('index'); // contenido dinamico
		$this->load->view('footer');

	}



}
