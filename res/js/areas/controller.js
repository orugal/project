/*
* Controlador que maneja todas las funcionalidades de la zona áreas
* @author Farez Prieto @orugal
* @date 01 de Julio de 2016
*/
project.controller('areas', function($scope,$http,$q,constantes)
{
	$scope.listaAreas = [];
	$scope.areasInit = function()
	{
		$scope.config 			=  configLogin;//configuración global
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
});
