<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buscarlistas extends CI_Controller {
	public function clientes()
	{
		$json = [];
		$this->load->database();
		if(!empty($this->input->get("q"))){
			$this->db->like('nombre', $this->input->get("q"));
			$query = $this->db->select('id,nombre as text')
						->limit(10)
						->get("ctl_clientes");
			$json = $query->result();
		}
		echo json_encode($json);
	}

	public function pacientes()
	{
		$json = [];
		$this->load->database();
		if(!empty($this->input->get("q"))){
			$this->db->like('nombres', $this->input->get("q"));
			$query = $this->db->select("id, concat(nombres,' ',apellidos) as text")
						->limit(10)
						->get("ctl_pacientes");
			$json = $query->result();
		}
		echo json_encode($json);
	}

	public function medicos()
	{
		$json = [];
		$this->load->database();
		if(!empty($this->input->get("q"))){
			$this->db->like('nombre', $this->input->get("q"));
			$query = $this->db->select('id, nombre as text')
						->limit(10)
						->get("ctl_medicos");
			$json = $query->result();
		}
		echo json_encode($json);
	}

	public function financieras()
	{
		$json = [];
		$this->load->database();	
		$this->db->like('financiera', $this->input->get("q"));
		$query = $this->db->select('id, financiera as text')
					->limit(10)
					->get("ctl_financieras");
		$json = $query->result();
		echo json_encode($json);
	}

	public function formaspago()
	{
		$json = [];
		$this->load->database();
		$this->db->like('formapago', $this->input->get("q"));
		$query = $this->db->select('id, formapago as text')
					->limit(10)
					->get("ctl_formaspago");
		$json = $query->result();
		echo json_encode($json);
	}

	public function entregaresultados()
	{
		$json = [];
		$this->load->database();		
		$this->db->like('entregaresultado', $this->input->get("q"));
		$query = $this->db->select('id, entregaresultado as text')
					->limit(10)
					->get("ctl_entregaresultados");
		$json = $query->result();
		echo json_encode($json);
	}

	public function pruebaslaboratorio()
	{
		$json = [];
		$this->load->database();		
		$this->db->like('pruebalaboratorio', $this->input->get("q"));
		$query = $this->db->select('id, pruebalaboratorio as text')
					->limit(10)
					->get("ctl_pruebaslaboratorio");
		$json = $query->result();
		echo json_encode($json);
	}
}