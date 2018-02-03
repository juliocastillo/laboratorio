<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mdl_usuario extends CI_Model {

	public function getUsuario($user, $password)
	{
		$this->db->where('username', $user);
		$this->db->where('password', $password);
		return $this->db->get("users")
					->result_array();
	}
	
}
