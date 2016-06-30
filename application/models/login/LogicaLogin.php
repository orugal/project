<?php
class LogicaLogin  {
    private $ci;
    public function __construct()
    {
        $this->ci = &get_instance();
        $this->ci->load->model("login/BaseDatosLogin","dbLogin");
        $this->ci->load->model("login/BaseDatosGeneral","dbGeneral");
    }
    public function verificaEmpresa($palabra,$campo,$tabla)
    {
        $select[$campo]     =   trim($palabra);
        //inserto los datos básicos de la empresa
        $dataEmpresa = $this->ci->dbLogin->buscaEmpresa($select,$tabla);
        return $dataEmpresa;
    }
    public function getPictureLogin($data)
    {
        extract($data);
        $buscaEmpresa = $this->verificaEmpresa($palabra,"email","empresas");
        if(count($buscaEmpresa) > 0)//existe como empresa
        {
            if(count($buscaEmpresa) > 0)
            {
                $respuesta = array("mensaje"=>"Foto obtenida",
                                  "continuar"=>1,
                                  "tipo"=>"empresas",
                                  "datos"=>$buscaEmpresa);            
            }
            else
            {
                $respuesta = array("mensaje"=>"No hay datos",
                                  "continuar"=>0,
                                  "datos"=>"");    
            }
        }
        else
        {
            $respuesta = array("mensaje"=>"No hay datos",
                                  "continuar"=>0,
                                  "tipo"=>"personas",
                                  "datos"=>"");  
        }
        return $respuesta;
    }
    /*
    * Esta función me permite el acceso al sistema, la función realiza una serie
    * de validaciones para saber que tipo de usuario es, también para detectar
    * si está activo, inactivo, debe algún pago y todo lo demás.
    * @input array $data que es el post del formulario, contiene las variables $usuario y $clave
    * @return array $respuesta con las 3 variables de siempre mensaje, datos y continuar
    * @author Farez Prieto @orugal
    * @date 29 de Junio de 2016
    */
    public function getLoginUsuario($data)
    {
        //extraigo el post en variables
        extract($data);
        //verifico en la tabla de login el usuario y la clave
        $select["usuario"]     =   trim($usuario);
        $select["clave"]       =   sha1(trim($clave));
        //inserto los datos básicos de la empresa
        $dataLogin = $this->ci->dbLogin->verificaUsuarioyClave($select);
        //en primera instancia debo validar si esto retorno información
        //si retorna quiere decir que el usuario existe
        if(count($dataLogin) > 0)
        {
            //ahora debo identificar el tipo de login que me ha retornado este query
            if($dataLogin[0]['tipoLogin'] == 1)//empresa
            {
                $respuesta = $this->procesoEmpresas($dataLogin[0]);
            }
            elseif($dataLogin[0]['tipoLogin'] == 2)//usuario
            {
                //$respuesta = $this->procesoPersonas($dataLogin[0]);
            }
            else
            {
                $respuesta = array("mensaje"=>"El tipo de usuario no es válido",
                                  "continuar"=>0,
                                  "datos"=>""); 
            }
        }
        else//no existe, así que notifico
        {
            $respuesta = array("mensaje"=>"Usuario o clave incorrecto, por favor verifique e intente de nuevo.",
                                  "continuar"=>0,
                                  "datos"=>""); 
        }

        return $respuesta;
    }
    /*
    * Función que realizará el proceso de login para las empresas
    * la dejo de maneja independiente para evitar tanto desorden de código
    * @input array $dataLogin esto es la información recibida de la tabla login
    * @return array $respuesta con las 3 variables de siempre mensaje, datos y continuar
    * @author Farez Prieto @orugal
    */
    public function procesoEmpresas($dataLogin)
    {
        //lo primero que valido es si el usuario está activo o no
        if($dataLogin['estado'] == 1)//estado
        {
            //ahora debo saber si el usuario tiene derecho a entrar porque tiene sus pagos correctos
            //consulo estado del pago
            $wherePago['idEmpresa']  =   $dataLogin['idGeneral'];
            $wherePago['estado']     =   1;
            $wherePago['eliminado'] =   0;
            $infoPago = $this->ci->dbGeneral->getInfoPago($wherePago);
            //para esta validación siempre debo tomar el resultado de la posición 0 ya que sería el pago actual.
            if($dataLogin['estado'] == 0)
            {

            }
            else
            {
                $respuesta = array("mensaje"=>"El usuario no está disponible en este momento, por favor comuníquese con soporte técnico.",
                                  "continuar"=>0,
                                  "datos"=>""); 
            }
        }
        else
        {
            $respuesta = array("mensaje"=>"Parece que su usuario está inactivo, por favor intente de nuevo, si el problema persiste pongase en contacto con soporte técnico..",
                                  "continuar"=>0,
                                  "datos"=>""); 
        }

        return $respuesta;
    }
 }