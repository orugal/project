<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Registro extends CI_Controller 
{
	function __construct() 
    {
        parent::__construct();
        $this->load->model("registro/LogicaRegistro", "logicaReg");
        $this->load->model("general/LogicaGeneral", "logicaGen");
       	$this->load->helper('language');
    	$this->lang->load('spanish');
    }
	public function index()	
	{
		$this->login();
	}
	public function registroEmpresas()
	{
		$salida['titulo'] = lang("tituloRegistroEmp");
		$salida['centro'] = "registro/empresas";
		$salida['listaDeptos']	=		getDepartamentos('057',"ARRAY");
		$this->load->view("registro/index",$salida);
	}
	public function registroPersonas()
	{
		$salida['titulo'] = lang("tituloRegistroEmp");
		$salida['centro'] = "registro/personas";
		$this->load->view("registro/index",$salida);
	}

	//Funciones para el AJAX
	public function getCiudades()
	{
		extract($_POST);
		$ciudades =  getCiudades('057',$idDepto,"JSON");
		echo $ciudades;
	}
	public function insertaEmpresas()
	{
		$procesoEmpresa = $this->logicaReg->insertaEmpresa($_POST);
		echo json_encode($procesoEmpresa);
	}
}
?>