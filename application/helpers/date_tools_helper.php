<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if(!function_exists('con2sql'))
{
	function con2sql($date) {
		$date = explode("-",$date);
		if ($date[0]<=9) { $date[0]=$date[0]; }
		if ($date[1]<=9) { $date[1]=$date[1]; }
		$date = array($date[2], $date[1], $date[0]);
	return $n_date=implode("-", $date);
	}
}

if(!function_exists('con2spanish'))
{
	function con2spanish($date) {
		$date = explode("-",$date);
		$date = array($date[2], $date[1], $date[0]);
	return $n_date=implode("-", $date);
	}		
}