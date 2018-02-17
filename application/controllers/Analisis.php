<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Analisis extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Mdl_data_analisis");
	}

	public function datalab()
	{
		$data['solicitudes'] = $this->Mdl_data_analisis->getDataLab();

		$datos_header 	= array(
			'location' => 'Analisis de datos - Laboratorio',
			'label_opcion_nuevo' => 'Nueva solicitud',
			'ruta_opcion_nuevo' => 'solicitud/create',
			);
		$this->load->view('layout');
		//$this->load->view('menu');
		$this->load->view('header',$datos_header);
		$this->load->view('lab/reportes/lab_analisis', $data); // contenido dinamico
		$this->load->view('footer');
	}
}