<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Inicio extends CI_Controller 
{
	function __construct() 
    {
        parent::__construct();
        $this->load->model("principal/LogicaPropiedades", "logica");
       	$this->load->helper('language');
    	$this->lang->load('spanish');
    }
	public function index()	
	{
		header('Location:'.base_url()."login");
	}
	public function homeEmpresa()
	{
		
	}	
}
?>