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
		$this->login();
		//echo "aca";
	}
	public function homeEmpresa()
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "login/home";
		$this->load->view("empresas/index",$salida);


		$perfiles = array(1);
		if(validaSeguridad($perfiles))
		{	
			$variablesHome['titulo'] 	= "Administración";
			$variablesHome['cabeza'] 	=  $this->cabeza();
			$variablesHome['persist'] 	=  $_SESSION['tucomunidad'];
			$variablesHome['centro'] 	=  "home/administracion";
			$variablesHome['pie'] 	 	=  $this->pie();
			return $this->load->view('home/index',$variablesHome);
		}
		else
		{
			$this->AreaRestringida();
		}
	}
	public function login()
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "login/home";
		$this->load->view("login/index",$salida);
	}	
}
?>