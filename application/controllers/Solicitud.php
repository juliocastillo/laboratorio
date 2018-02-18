<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Solicitud extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Mdl_solicitud");
		$this->load->helper(array('date_tools','url'));
	}

	public function list()
	{
		$data['solicitudes'] = $this->Mdl_solicitud->getSolicitudesRecientes();

		$datos_header 	= array(
			'location' => 'Home',
			'label_opcion_nuevo' => 'Nueva solicitud',
			'ruta_opcion_nuevo' => 'solicitud/create',
			);
		$this->load->view('layout');
		//$this->load->view('menu');
		$this->load->view('header',$datos_header);
		$this->load->view('lab/solicitud/list', $data); // contenido dinamico
		$this->load->view('footer');
	}

	public function create()
	{
		$data = array(
			'fecha' 				=> date("Y-m-d"),
			'idcliente' 			=> '',
			'idpaciente' 			=> '',
			'idmedico' 				=> '',
			'identregaresultado' 	=> '',
			'idformapago' 			=> '',
			'idfinanciera' 			=> '',
			'cuenta_cheque' 		=> '',
			'action' 				=> 'save',
		);


		$datos_header 	= array(
			'location' => 'Home > Crear solicitud',
			'label_opcion_nuevo' => 'Nueva solicitud',
			'ruta_opcion_nuevo' => 'solicitud/create',
			);
		$this->load->view('layout');
		//$this->load->view('menu');
		$this->load->view('header',$datos_header);
		$this->load->view('lab/solicitud/edit', $data); // contenido dinamico
		$this->load->view('footer');
	}

	public function insert()
	{
		// capturar las variables del metodo post
		$args = array(
			'fecha' 			=> $this->input->post('fecha'),
			'idcliente' 		=> $this->input->post('idcliente'),
			'idpaciente' 		=> $this->input->post('idpaciente'),
			'idmedico' 			=> $this->input->post('idmedico'),
			'identregaresultado' => $this->input->post('identregaresultado'),
			'idformapago' 		=> $this->input->post('idformapago'),
			'idfinanciera' 		=> $this->input->post('idfinanciera'),
			'cuenta_cheque' 	=> $this->input->post('cuenta_cheque'),
		);
		$id = $this->Mdl_solicitud->insertSolicitud($args);

		// insert detalles
		if ($this->input->post('idpruebaslaboratorio')) {
			$args = array(
				'idpruebaslaboratorio' 	=> $this->input->post('idpruebaslaboratorio'),
				'id_solicitud'			=> $this->input->post('id'),
				'fecha_solicitud'					=> $this->input->post('fecha'),
			);
			$result = $this->Mdl_solicitud->insertDetalleSolicitud($args, $id);
		}


		// crear el registro

		redirect(base_url()."/solicitud/edit/".$id);
	}

	public function update()
	{
		// capturar las variables del metodo post
		// crear el registro
		$data['fecha'] = date("d-m-Y");
		$data['action'] = "update";

		redirect(base_url()."/solicitud/edit");
	}

	public function edit($id)
	{

		// cargar el registro con numero $id
		$solicitud = $this->Mdl_solicitud->getSolicitudId($id);

		$data = array(
			'fecha' 			=> $solicitud[0]['fecha'],
			'idcliente'			=> $solicitud[0]['id_cliente'],
			'idpaciente' 		=> $solicitud[0]['id_paciente'],
			'idmedico' 			=> $solicitud[0]['id_medico'],
			'identregaresultado' => $solicitud[0]['id_entregaresultado'],
			'idformapago' 		=> $solicitud[0]['id_formapago'],
			'idfinanciera' 		=> $solicitud[0]['id_financiera'],
			'cuenta_cheque' 	=> $solicitud[0]['cuenta_cheque'],
		);

		// enviarle datos a la vista para desplegarlos

		//var_dump($solicitud);

		$data['action'] = "update";
		$data['cuenta_cheque'] = $solicitud[0]['cuenta_cheque'];
		$datos_header 	= array(
			'location' => 'Home > Editar solicitud - '.$id,
			'label_opcion_nuevo' => 'Nueva solicitud',
			'ruta_opcion_nuevo' => 'solicitud/create',
			);
		$this->load->view('layout');
		//$this->load->view('menu');
		$this->load->view('header',$datos_header);
		$this->load->view('lab/solicitud/edit', $data); // contenido dinamico
		$this->load->view('footer');
	}
}
