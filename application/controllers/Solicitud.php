<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Solicitud extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Mdl_solicitud");
	}

	public function list()
	{
		$data['solicitudes'] = $this->Mdl_solicitud->getSolicitudesRecientes();

		$datos_header 	= array('titulo' => 'Solicitudes', );
		$this->load->view('layout');
		$this->load->view('menu');
		$this->load->view('header',$datos_header);
		$this->load->view('lab/solicitud/list', $data); // contenido dinamico
		$this->load->view('footer');
		//var_dump($usuario);exit();
	}
}
