/*
* Controlador que maneja todas las funcionalidades del login del proyecto
* @author Farez Prieto @orugal
* @date 29 de Junio de 2016
*/
project.controller('login', function($scope,$http,$q,constantes)
{
	$scope.usuario 			= 	$("#usuario").val();
	$scope.clave 			= 	$("#clave").val();
	$scope.fotoLogin 		= 	"";

	$scope.loginInit = function()
	{
		$scope.config 			=  configLogin;//configuración global
		$scope.fotoLogin 		= 	$scope.config.apiUrl+"res/img/user.jpg";
	}
	$scope.getPicture = function()
	{
		var controlador = 	$scope.config.apiUrl+"login/getPicture";
		var parametros  = "palabra="+$scope.usuario;
		constantes.consultaApi(controlador,parametros,function(json){
			if(json.continuar == 1)
			{
				if(json.datos[0].icono != "")
				{
					$scope.fotoLogin 		= 	$scope.config.apiUrl+"res/fotos/"+json.tipo+"/"+json.datos[0].idEmpresa+"/"+json.datos[0].icono;
				}
			}
			else
			{
				$scope.fotoLogin 		= 	$scope.config.apiUrl+"res/img/user.jpg";
			}
		});
	}
	$scope.loginInApp = function()
	{
		if($scope.usuario == "" || $scope.usuario == undefined)
		{
			constantes.alerta("Atención","Debe escribir el correo electrónico que registró","warning",function(){
				setTimeout(function(){$("#usuario").focus()});
			})
		}
		else if($scope.clave == "" || $scope.clave == undefined)
		{
			constantes.alerta("Atención","Debe escribir la clave que registró.","warning",function(){
				setTimeout(function(){$("#clave").focus()});
			})
		}
		else
		{
				//se inicia el login
				var controlador = 	$scope.config.apiUrl+"login/verificaIngreso";
				var parametros  = 	$("#formLogin").serialize();
				constantes.consultaApi(controlador,parametros,function(json){
					if(json.continuar == 1)
					{
						//valido la zona
						if(json.zona == 1) //zona de pago
						{
							constantes.alerta("Atención",json.mensaje,"warning",function(){
								document.location = $scope.config.apiUrl+"Pago";
							})
						}
						else if(json.zona == 2)//ingreso
						{
							document.location = $scope.config.apiUrl+"App";
						}
						else
						{
							constantes.alerta("Atención",json.mensaje,"success",function(){
							
							})
						}
					}
					else
					{
						constantes.alerta("Atención",json.mensaje,"warning",function(){
							
						})
					}
				});
		}
	}
});
