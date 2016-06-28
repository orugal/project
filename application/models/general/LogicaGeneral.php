<?php
class LogicaGeneral  {
    private $ci;
    public function __construct()
    {
        $this->ci = &get_instance();
        $this->ci->load->model("general/BaseDatosGral","dbGeneral");
    } 
    public function getCiudades($where)
    {
        $listaCiudades = $this->ci->dbGeneral->getCiudades($where);
        return $listaCiudades;
    }
 }