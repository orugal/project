<?php
function getIP() 
{
    if (isset($_SERVER)) {
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            return $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            return $_SERVER['REMOTE_ADDR'];
        }
    } else {
        if (isset($GLOBALS['HTTP_SERVER_VARS']['HTTP_X_FORWARDER_FOR'])) {
            return $GLOBALS['HTTP_SERVER_VARS']['HTTP_X_FORWARDED_FOR'];
        } else {
            return $GLOBALS['HTTP_SERVER_VARS']['REMOTE_ADDR'];
        }
    }
}

function acentos($cadena){ 
    $search  = explode(",","á,é,í,ó,ú,ñ,Á,É,Í,Ó,Ú,Ñ,Ã¡,Ã©,Ã*,Ã³,Ãº,Ã±,Ã,ÃÃ¡,ÃÃ©,ÃÃ*,ÃÃ³,ÃÃº,ÃÃ±,Ã“,Ã ,Ã‰,Ã ,Ãš,â€œ,â€ ,Â¿,ü");
    $replace = explode(",","á,é,í,ó,ú,ñ,Á,É,Í,Ó,Ú,Ñ,á,é,í,ó,ú,ñ,í,É,Í,Ó,Ú,Ñ,Ó,Á,É,Í,Ú,\",\",¿,&uuml;");
    $cadena  = str_replace($search, $replace, $cadena);
    return $cadena; 
} 


function eliminaCaracteres($cadena){
    $cadena = strtolower($cadena);
    $cadena = str_replace(" ","",$cadena);
    $cadena = str_replace("á","a",$cadena);
    $cadena = str_replace("é","e",$cadena);
    $cadena = str_replace("í","i",$cadena);
    $cadena = str_replace("ó","o",$cadena);
    $cadena = str_replace("ú","u",$cadena);
    $cadena = str_replace("ñ","n",$cadena);
    $cadena = str_replace("-","",$cadena);
    $cadena = str_replace("_","",$cadena);
    $cadena = str_replace("%","",$cadena);
    $cadena = str_replace("&","",$cadena);
    return $cadena;
}

function sendMail($para,$asunto,$mensaje)
{
    $ci = get_instance();
    $ci->load->library('email');
    $ci->load->model("general/baseDatosGral","baseGeneral");
    $ci->email->initialize(array(
      'protocol' => 'smtp',
      'smtp_host' => 'smtpout.secureserver.net',
      'smtp_user' => 'info@wannabe.com.co',
      'smtp_pass' => 'Jg$E3D+u',
      'smtp_port' => 25,
      'crlf' => "\r\n",
      'newline' => "\r\n",
      'mailtype'=>"html"
    ));
    $ci->email->from('noreply@tucomunidad.co', NOMBRE_APP);
    $ci->email->to($para);
    //$ci->  email->cc('another@another-example.com');
    //$ci->  email->bcc('them@their-example.com');
    $ci->email->subject($asunto);
    $ci->email->message($mensaje);
    if($ci->email->send())//exitoso
    {
        $estado = 1;
    }
    else//fallido
    {
        $estado = 0;
    }

    $dataInserta['para']        = $para;
    $dataInserta['asunto']      = $asunto;
    $dataInserta['mensaje']     = $mensaje;
    $dataInserta['estado']      = $estado;
    $dataInserta['fechaEnvio']  = date("Y-m-d H:i:s");
    $dataInserta['ip']          = getIP();
    $EnvioMailDb                = $ci->baseGeneral->envioMailDB($dataInserta);

    return $estado;

}
function generaHoras($desde,$hasta)
{
    $salida =   array();
    $hora       = date('0'.$desde.':30');
    for($a=$desde;$a<=$hasta;$a++)
    {
        $nuevaHora = strtotime('+30 minute',strtotime($hora));
        $nuevaHora = date('H:i',$nuevaHora);
        $dataHoras  = array("hora"=>$nuevaHora);
        $hora       = $nuevaHora;
        array_push($salida,$dataHoras);
    }
    return $salida;
}


function traducirMes($mes) {
    //realizo el switch de la variable del mes para traducirlo a espaï¿½ol
    switch ($mes) {
        CASE '01':$mes = 'Enero';
            Break;
        CASE '02':$mes = 'Febrero';
            Break;
        CASE '03':$mes = 'Marzo';
            Break;
        CASE '04':$mes = 'Abril';
            Break;
        CASE '05':$mes = 'Mayo';
            Break;
        CASE '06':$mes = 'Junio';
            Break;
        CASE '07':$mes = 'Julio';
            Break;
        CASE '08':$mes = 'Agosto';
            Break;
        CASE '09':$mes = 'Septiembre';
            Break;
        CASE '10':$mes = 'Octubre';
            Break;
        CASE '11':$mes = 'Noviembre';
            Break;
        CASE '12':$mes = 'Diciembre';
            Break;
    }
    return $mes;
}
function formatoFechaEspanol($fechaDb) 
{
    $dateUnix = strtotime($fechaDb);
    $anoDoc = date("Y", $dateUnix);
    $perDoc = date("m", $dateUnix);
    $dia = date("d", $dateUnix);
    echo $dia . " de " . TraducirMes($perDoc) . " del " . $anoDoc;
}
function formatoFechaEspanolHora($fechaDb,$salida=true) {
    //echo $fechaDb."<hr>";
    $dateUnix = strtotime($fechaDb);
    $anoDoc = date("Y", $dateUnix);
    $perDoc = date("m", $dateUnix);
    $dia = date("d", $dateUnix);
    $hora = date("H", $dateUnix);
    $min = date("i", $dateUnix);
    //echo $perDoc;
    if($salida)
    {
        echo $dia . " de " . TraducirMes($perDoc) . " del " . $anoDoc." a las ".$hora.":".$min;
    }
    else
    {
        return $dia . " de " . TraducirMes($perDoc) . " del " . $anoDoc." a las ".$hora.":".$min;   
    }
}
function generacodigo(){
    //Se define una cadena de caractares. Te recomiendo que uses esta.
    $cadena = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    //Obtenemos la longitud de la cadena de caracteres
    $longitudCadena=strlen($cadena);
     
    //Se define la variable que va a contener la contraseña
    $pass = "";
    //Se define la longitud de la contraseña, en mi caso 10, pero puedes poner la longitud que quieras
    $longitudPass=10;
     
    //Creamos la contraseña
    for($i=1 ; $i<=$longitudPass ; $i++){
        //Definimos numero aleatorio entre 0 y la longitud de la cadena de caracteres-1
        $pos=rand(0,$longitudCadena-1);
     
        //Vamos formando la contraseña en cada iteraccion del bucle, añadiendo a la cadena $pass la letra correspondiente a la posicion $pos en la cadena de caracteres definida.
        $pass .= substr($cadena,$pos,1);
    }
    return $pass;
}

 
function cabeza()
{
    return 'home/cabeza';   
}
function pie()
{
    return 'home/pie';  
}
function label($label,$lang)
{
    $ci =& get_instance();
    $ci->lang->load('spanish_lang',$lang);
    $return = $ci->lang->line($label);
    if($return)
        return $return;
    else
        return $label;
}   


function validaIngreso()
{
    $salida =   false;
    if(isset($_SESSION['project']))
    {
        $salida = true;
    }
    else
    {
        $salida = false;
    }
    return $salida;
}

/*Esta función es la que me va a permitir saber si la app la estan consultando 
* de manera segura o estan intentando acceder a los metodos de ajax por otro medio
* @author Farez Prieto
* @input string $app Variable que me dice el tipo de app que consulta
* web   = Página web
* movil = Dispositivo móvil
* @return boolean
*/
function validaInApp($app="web")
{
    $salida = false;
    if($app == "web")//via web
    {
        if(isset($_SESSION['inproject']))//esta validación me hará consultas más seguras
        {
            $salida = true;
        }
        else
        {
            $salida = false;
        }
    }
    elseif($app == "movil")//via movil
    {
        $salida = false;
    }
    return $salida;
}

function sumaDias($fechaSuma,$dias)
{
    $fecha = date_create($fechaSuma);
    date_add($fecha, date_interval_create_from_date_string($dias.' days'));
    return date_format($fecha, 'Y-m-d H:i:s');
}

/*
* int $salida Define si la respuesta es en Array o en Json
* return string o array $listaDeptos
*/
function getDepartamentos($idPais="057",$salida="ARRAY"){
     $ci = get_instance();
     $ci->load->model("general/baseDatosGral","baseGeneral");
     $where['ID_PAIS']  =   $idPais;
     $listaDeptos  =   $ci->baseGeneral->getDepartamentos($where);
     if($salida == "ARRAY")
     {
        return $listaDeptos;
     }
     else if($salida == "JSON")
     {
        return json_encode($listaDeptos);  
     }
}
/*
* int $salida Define si la respuesta es en Array o en Json
* return string o array $listaDeptos
*/
function getCiudades($idPais="057",$idDepto,$salida="ARRAY"){
     $ci = get_instance();
     $ci->load->model("general/baseDatosGral","baseGeneral");
     $where['ID_PAIS']  =   $idPais;
     $where['ID_DPTO']  =   $idDepto;
     $listaCiudades  =   $ci->baseGeneral->getCiudades($where);
     if($salida == "ARRAY")
     {
        return $listaCiudades;
     }
     else if($salida == "JSON")
     {
         $respuesta = array("mensaje"=>"Listado de Ciudades",
                            "continuar"=>1,
                            "datos"=>$listaCiudades);    
        echo json_encode($respuesta);  
     }
}


function validaDiasLicencia()
{   
    if($_SESSION['tucomunidad']['trial'] == 1)
    {
        $vencimiento    =    vencimiento($_SESSION['tucomunidad']['diasComprados'],date("Y-m-d",strtotime($_SESSION['tucomunidad']['fechaActivacion'])));
        $vencimiento['licencia'] = 1;//trial
        $vencimiento['licenciaTxt'] = "Prueba gratis";//trial
    }
    else
    {
        if($_SESSION['tucomunidad']['pago'] == 1)
        {
             $vencimiento    =    vencimiento($_SESSION['tucomunidad']['diasComprados'],date("Y-m-d",strtotime($_SESSION['tucomunidad']['fechaActivacion'])));
             $vencimiento['licencia'] = 2;//compra
             $vencimiento['licenciaTxt'] = "Compra ".$vencimiento['diasComprados']." Días";//trial
        }
        else
        {
            echo "probablemente no tenga derecho de ingresar.";
        }
    }
    return $vencimiento;
}

/*
* @input int $diasCompra días que compró el usuario
* @input string $fechaAct fecha del día en que realizó la compra ó el demo
*/
function vencimiento($diasCompra,$fechaAct)
{
    $diasTrans      = dias_transcurridos(date("Y-m-d",strtotime($fechaAct)),date("Y-m-d"));
    $diasRestantes  = ($diasCompra - $diasTrans);
    $salida['diasComprados']        =  $diasCompra; 
    $salida['diasTranscurridos']    =  $diasTrans; 
    $salida['diasRestantes']        =  $diasRestantes; 
    $salida['aviso']                =  ($salida['diasRestantes'] <= 5)?1:0; 
    $salida['vencido']              =  ($salida['diasRestantes'] <= 0)?1:0; 
    $salida['por']                  =  (($diasTrans * 100) / $diasCompra); 
    return $salida;
}

function dias_transcurridos($fecha_i,$fecha_f)
{
    $dias   = (strtotime($fecha_i)-strtotime($fecha_f))/86400;
    $dias   = abs($dias); $dias = floor($dias);     
    return $dias;
}

function sendNotifi($idPersona,$mensaje,$titulo)
{
    
   /* $ci = get_instance();
    $ci->load->model("Base/DbBase","baseDb");


    $where['l.idPersona'] = $idPersona;

    $where['l.codCelular !=']     = "";
    $where['l.eliminado']         = 0;
    $where['l.estado']            = 1;
    $where['r.eliminado']         = 0;
    $where['r.estado']            = 1;

    $consultaGCMcodCelular  =   $ci->baseDb->getCodCelular($where);

    if(count($consultaGCMcodCelular) > 0){

        $registrationId         = array($consultaGCMcodCelular[0]['codCelular']);

        $msg = array
        (
            'message'   => $mensaje,
            'title'     => $titulo,
            'subtitle'  => '',
            'tickerText'    => '',
            'vibrate'   => 1,
            'sound'     => 1,
            'largeIcon' => 'large_icon',
            'smallIcon' => 'small_icon'
        );

        //$msg = "please note this..";

        $fields = array
        (
            'registration_ids'  => $registrationId,
            'data'          => $msg
        );
         
        $headers = array
        (
            'Authorization: key=' . API_ACCESS_KEY,
            'Content-Type: application/json',
                'delay_while_idle: true',
        );
         
        try{
            $ch = curl_init();
            curl_setopt( $ch,CURLOPT_URL, 'https://android.googleapis.com/gcm/send' );
            curl_setopt( $ch,CURLOPT_POST, true );
            curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
            curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
            curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
            curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
            $result = curl_exec($ch );
            curl_close( $ch );

        
        }
        catch(Exception $e){
         
        }
    }*/

}
?>  