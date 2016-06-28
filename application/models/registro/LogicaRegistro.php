<?php
class LogicaRegistro  {
    private $ci;
    public function __construct()
    {
        $this->ci = get_instance();
        $this->ci->load->model("registro/BaseDatosRegistro","dbRegistro");
    } 
    public function insertaEmpresa($data)
    {
        extract($data);
        //procedo a insertar la empresa
        //armo la data que voy a insertar
        $dataInsert['nombre']           =   $nombre;
        $dataInsert['direccion']        =   $direccion;
        $dataInsert['telefono']         =   $telefono;
        $dataInsert['email']            =   $email;
        $dataInsert['ciudad']           =   $ciudad;
        $dataInsert['departamento']     =   $departamento;
        //inserto los datos básicos de la empresa
        $idEmpresa = $this->ci->dbRegistro->insertaEmpresa($dataInsert);
       //die($idEmpresa);
        //si la inserción es correcta debo notificar para hacer el resto de inserciones
        if(trim($idEmpresa) > 0)
        {
            //después de haber insertado la empresa debo insertar el usuario y la clave para esta empresa
            $dataInsertClave['idEmpresa']   =   $idEmpresa;
            $dataInsertClave['usuario']     =   $email;
            $dataInsertClave['clave']       =   sha1($rclave);
            $dataInsertClave['clave64']     =   base64_encode($rclave);
            $dataInsertClave['cambioClave'] =   0;
            //inserto la clave
            $idLogin                        = $this->ci->dbRegistro->insertaClaveEmpresa($dataInsertClave);
            if($idLogin > 0)
            {
                //proceso a insertar el demo que tienen las empresas de 90 días.
                $dataInsertDemo['idEmpresa']     =   $idEmpresa;
                $dataInsertDemo['descripcion']   =   "Demo Inicial de 90 días para que pruebes la aplicación.";
                $dataInsertDemo['fechaInicio']   =   date("Y-m-d H:i:s");
                $dataInsertDemo['fechaFin']      =   sumaDias(date("Y-m-d H:i:s"),DEFAULT_DEMO_DAYS);
                $dataInsertDemo['cantComprada']  =   DEFAULT_DEMO_DAYS;
                //inserto la clave
                $idPago                          =   $this->ci->dbRegistro->insertaPago($dataInsertDemo);
                if($idPago)
                {
                    $envioMail                   =   sendMail($email,"Registro de empresa exitoso","Se ha realizado el registro de su empresa en la plataforma");
                    if($envioMail == 1)
                    {
                        $respuesta = array("mensaje"=>"La empresa se ha registrado",
                            "continuar"=>1,
                            "datos"=>"");
                    }
                    else
                    {
                        $respuesta = array("mensaje"=>"Oops!! Esto es bastante embarazoso, ha habido un error interno que no ha permitido registrar la empresa, por favor intentelo de nuevo más tarde.",
                            "continuar"=>0,
                            "datos"=>"");
                    }
                    
                }
                else
                {
                     $respuesta = array("mensaje"=>"Oops!! Esto es bastante embarazoso, ha habido un error interno que no ha permitido registrar la empresa, por favor intentelo de nuevo más tarde.",
                            "continuar"=>0,
                            "datos"=>"");
                }
                
            }
            else
            {
                $respuesta = array("mensaje"=>"Oops!! Esto es bastante embarazoso, ha habido un error interno que no ha permitido registrar la empresa, por favor intentelo de nuevo más tarde.",
                            "continuar"=>0,
                            "datos"=>"");
            }
        }
        else
        {
            $respuesta = array("mensaje"=>"Oops!! Esto es bastante embarazoso, ha habido un error interno que no ha permitido registrar la empresa, por favor intentelo de nuevo más tarde.",
                            "continuar"=>0,
                            "datos"=>"");
        }
        return $respuesta;
    }

 }