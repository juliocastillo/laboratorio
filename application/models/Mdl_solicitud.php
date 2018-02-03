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
				e.estado
			FROM 
				lab_solicitudes s
			    INNER JOIN ctl_pacientes p ON p.id = s.id_paciente
			    INNER JOIN ctl_clientes c ON c.id = p.id_cliente
			    INNER JOIN ctl_estadosolicitud e ON e.id = s.id_estadosolicitud	    
		";
		return $this->db->query($sql)
					->result_array();
	}
	
}
