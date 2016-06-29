<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller 
{
	function __construct() 
    {
        parent::__construct();
        $this->load->model("general/LogicaGeneral", "logicaGen");
        $this->load->model("login/LogicaLogin", "logicaLogin");
       	$this->load->helper('language');
    	$this->lang->load('spanish');
    }
	public function index()	
	{
		$this->login();
		$_SESSION['inproject']	=	1;//esta sesión se activa para indicar que la aplicación esta arriba.
	}
	public function logout()
	{
		unset($_SESSION['project']);
		header('Location:'.base_url()."login");
	}
	public function login()
	{
		$salida['titulo'] = lang("titulo");
		$salida['centro'] = "login/home";
		$this->load->view("login/index",$salida);
	}
	//Funciones para el AJAX
	public function getPicture()
	{
		if(validaInApp("web"))//esta validación me hará consultas más seguras
		{
			//busco la foto con la palabra que envien
			$imagen = $this->logicaLogin->getPictureLogin($_POST);
			echo json_encode($imagen);
		}
		else
		{
			$respuesta = array("mensaje"=>"Acceso no admitido.",
                              "continuar"=>0,
                              "datos"=>""); 

            echo json_encode($respuesta); 
		}
	}
	public function verificaIngreso()
	{
		//súper acceso a la app
		if(validaInApp("web"))//esta validación me hará consultas más seguras
		{
			//busco la foto con la palabra que envien
			$logueo = $this->logicaLogin->getLoginUsuario($_POST);
			echo json_encode($logueo);
		}
		else
		{
			$respuesta = array("mensaje"=>"Acceso no admitido.",
                              "continuar"=>0,
                              "datos"=>""); 

            echo json_encode($respuesta); 
		}	
	}
}
?>