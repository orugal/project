<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class BaseDatosGral extends CI_Model {
    private $tableDeptos                 =   "";
    private $tableCiudad                 =   "";
    private $tableMails                  =   "";
    private $tableInfoPago               =   "";
    public function __construct() 
    {
        parent::__construct();
        $this->load->database();
        $this->tableDeptos               = "app_departamentos"; 
        $this->tableCiudad               = "app_ciudades"; 
        $this->tableMails                = "app_mails";
        $this->tableInfoPago             = "app_estadopago";
    }
    public function getDepartamentos($where)
    {
        $this->db->select("*");
        $this->db->where($where);
        $this->db->from($this->tableDeptos);
        $id = $this->db->get();
        //print_r($this->db->last_query());die();
        return $id->result_array();
    }
    public function getCiudades($where)
    {
        $this->db->select("*");
        $this->db->where($where);
        $this->db->from($this->tableCiudad);
        $id = $this->db->get();
        //print_r($this->db->last_query());die();
        return $id->result_array();
    }
    public function getInfoPago($where)
    {
        $this->db->select("*");
        $this->db->where($where);
        $this->db->from($this->tableInfoPago);
        $this->db->order_by("idPago","DESC");
        $id = $this->db->get();
        //print_r($this->db->last_query());die();
        return $id->result_array();
    }

    public function envioMailDB($dataInserta)
    {
        $this->db->insert($this->tableMails,$dataInserta);
        //print_r($this->db->last_query());die();
        return $this->db->insert_id();

    }
}

?>