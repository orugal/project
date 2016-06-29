<?php
class LogicaRegistro  {
    private $ci;
    public function __construct()
    {
        $this->ci = get_instance();
        $this->ci->load->model("registro/BaseDatosRegistro","dbRegistro");
    } 
    public function verificaEmpresa($palabra,$campo,$tabla)
    {
        $select[$campo]     =   trim($palabra);
        //inserto los datos básicos de la empresa
        $dataEmpresa = $this->ci->dbRegistro->verificaEmpresa($select,$tabla);
        return $dataEmpresa;
    }
    public function insertaEmpresa($data)
    {
        extract($data);
        //antes de registrar la empresa debo verificar que no exista
        $verificoEmpresaNombre = $this->verificaEmpresa($nombre,"nombre","empresas");
        if(count($verificoEmpresaNombre) > 0)//la empresa existe y no debo permitirle el registro
        {
            $respuesta = array("mensaje"=>"El nombre de empresa que intenta crear ya existe en nuestra base de datos. Por favor verifique o intente recuperar su clave si es que la ha olvidado.",
                            "continuar"=>0,
                            "datos"=>"");
        }
        else
        {
            //ahora verifico que el mail no este registrado como persona
            $verificoPersonaMail = $this->verificaEmpresa($email,"email","personas");
            if(count($verificoPersonaMail) > 0)
            {  
                $respuesta = array("mensaje"=>"El correo electrónico que intenta registrar ya se encuentra registrado para un perfil tipo persona, por favor verifíquelo o reemplácelo.",
                            "continuar"=>0,
                            "datos"=>"");
            }
            else
            {
                //verifico que no este registrado el mail como empresa
                $verificoEmpresaMail = $this->verificaEmpresa($email,"email","empresas");
                if(count($verificoEmpresaMail) > 0)
                {  
                    $respuesta = array("mensaje"=>"El correo electrónico que intenta registrar ya se encuentra registrado, por favor verifíquelo o reemplácelo.",
                                "continuar"=>0,
                                "datos"=>"");
                }
                else
                {
                    //procedo a insertar la empresa
                    //armo la data que voy a insertar
                    $dataInsert['nombre']           =   trim($nombre);
                    $dataInsert['direccion']        =   trim($direccion);
                    $dataInsert['telefono']         =   trim($telefono);
                    $dataInsert['email']            =   trim($email);
                    $dataInsert['ciudad']           =   trim($ciudad);
                    $dataInsert['departamento']     =   trim($departamento);
                    //inserto los datos básicos de la empresa
                    $idEmpresa = $this->ci->dbRegistro->insertaEmpresa($dataInsert);
                   //die($idEmpresa);
                    //si la inserción es correcta debo notificar para hacer el resto de inserciones
                    if(trim($idEmpresa) > 0)
                    {
                        //después de haber insertado la empresa debo insertar el usuario y la clave para esta empresa
                        $dataInsertClave['idGeneral']   =   $idEmpresa;
                        $dataInsertClave['tipoLogin']   =   1;//tipo Empresa
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
                                    $respuesta = array("mensaje"=>"La empresa se ha registrado exitosamente, por favor verifique su correo electrónico al cual llegarán instrucciones de activación de su cuenta.",
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
                }
            }
        }
        return $respuesta;
    }

 }