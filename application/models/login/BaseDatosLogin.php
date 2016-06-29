<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class BaseDatosLogin extends CI_Model {
    private $tableEmpresas                 =   "";
    private $tablePersonas                 =   "";
    private $tableLogin                 =   "";
    public function __construct() 
    {
        parent::__construct();
        $this->load->database();
        $this->tableEmpresas               = "app_empresas"; 
        $this->tablePersonas               = "app_personas"; 
        $this->tableLogin                  = "app_login"; 
    }
    public function buscaEmpresa($where){
        $this->db->select("*");
        $this->db->where($where);
        $this->db->from($this->tableEmpresas);
        $id = $this->db->get();
        //print_r($this->db->last_query());die();
        return $id->result_array();
    }
    public function verificaUsuarioyClave($where)
    {
        $this->db->select("*");
        $this->db->where($where);
        $this->db->from($this->tableLogin);
        $id = $this->db->get();
        //print_r($this->db->last_query());die();
        return $id->result_array();
    }
}

?>