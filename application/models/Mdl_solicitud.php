<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mdl_solicitud extends CI_Model {

	public function getSolicitudesRecientes()
	{
		$sql = 
		"
			SELECT 
				s.id,
				s.fecha,
				p.nombres,
				p.apellidos,
				c.nombre,
				e.estadosolicitud
			FROM 
				lab_solicitudes s
			    INNER JOIN ctl_pacientes p ON p.id = s.id_paciente
			    INNER JOIN ctl_clientes c ON c.id = p.id_cliente
			    INNER JOIN ctl_estadosolicitud e ON e.id = s.id_estadosolicitud	    
		";
		return $this->db->query($sql)
					->result_array();
	}

	public function insertSolicitud($args)
	{
		$sql = 
		"
			INSERT lab_solicitudes SET 
				fecha = '$args[fecha]',
				id_cliente = '$args[idcliente]',
				id_paciente = '$args[idpaciente]',
				id_medico = '$args[idmedico]',
				id_entregaresultado = '$args[identregaresultado]',
				id_formapago ='$args[idformapago]',
				id_financiera ='$args[idfinanciera]',
				cuenta_cheque = '$args[cuenta_cheque]'
		";
		$this->db->query($sql);
		return $this->db->insert_id();
	}

	public function getSolicitudId($id)
	{
		$sql = 
		"
			SELECT 
				*
			FROM 
				lab_solicitudes
			WHERE id = $id
		";
		return $this->db->query($sql)
					->result_array();
	}
	
}
