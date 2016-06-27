<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Empresas extends CI_Controller 
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
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}	
	public function menuEmpresa()
	{
		$salida['menu']   = "empresas/menu";
		return $this->load->view("empresas/menu",$salida,true);
	}
	public function areas()	
	{
		$salida['titulo'] = lang("titulo")." - Áreas";
		$salida['centro'] = "empresas/areas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
	public function personas()	
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/personas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
	public function proyectos()	
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/tareas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
	public function infoProyecto()	
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/tareas/infoProyecto";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
	public function reportes()	
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
	public function configuracion()	
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "empresas/home";
		$salida['menu']   =  $this->menuEmpresa();
		$this->load->view("empresas/index",$salida);
	}
}
?>