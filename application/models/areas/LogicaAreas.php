<?php
class LogicaAreas  {
    private $ci;
    public function __construct()
    {
        $this->ci = &get_instance();
        $this->ci->load->model("areas/BaseDatosAreas","dbAreas");
    } 
    public function getAreas()
    {
        $where['idEmpresa']     = $_SESSION['project']['login']['idGeneral'];
        $where['estado']        = 1;
        $where['eliminado']     = 0;
        $listadoAreas = $this->ci->dbAreas->getAreas($where);
        if(count($listadoAreas) > 0)
        {
            $respuesta = array("mensaje"=>"Listado de áreas empresariales consultado.",
                          "continuar"=>1,
                          "datos"=>$listadoAreas); 
        }
        else
        {
            $respuesta = array("mensaje"=>"No hay áreas de trabajo creadas aún, no olvide crearlas haciendo clic en el boton ACCIONES > AGREGAR NUEVA ÁREA.",
                          "continuar"=>0,
                          "datos"=>""); 
        }
        return $respuesta;
    }
    public function creaNuevaArea($data)
    {
        extract($data);
        $dataInsert['nombreArea']     = $nombreArea;
        $dataInsert['idEmpresa']      = $_SESSION['project']['login']['idGeneral'];
        $listadoAreas = $this->ci->dbAreas->creaNuevaArea($dataInsert);
        if($listadoAreas > 0)
        {
            $respuesta = array("mensaje"=>"Área Creada exitosamente.",
                          "continuar"=>1,
                          "datos"=>""); 
        }
        else
        {
            $respuesta = array("mensaje"=>"No se pudo crear el área, por favor intentelo de nuevo más tarde.",
                          "continuar"=>0,
                          "datos"=>""); 
        }
        return $respuesta;
    }
 }