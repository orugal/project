/*
* Controlador que maneja todas las funcionalidades de la zona de registro
* @author Farez Prieto @orugal
* @date 28 de Junio de 2016
*/
project.controller('registroEmpresas', function($scope,$http,$q,constantes)
{
	$scope.departamento 	= 	$("#departamento").val();
	$scope.ciudadesSelect	= 	[];
	$scope.nombre			=	$("#nombre").val();
	$scope.direccion		=	$("#direccion").val();
	$scope.telefono			=	$("#telefono").val();
	$scope.email			=	$("#email").val();
	$scope.ciudad			=	$("#ciudad").val();
	$scope.clave			=	$("#clave").val();
	$scope.rclave			=	$("#rclave").val();
	$scope.terminos			=	$("#terminos").val();
	$scope.registroInit = function()
	{
		$scope.config = configLogin;//configuración global
		$('#formRegEmpresas').validator()

	}
	$scope.getCiudad = function(){
		$scope.departamento = $("#departamento").val();
		var controlador = 	$scope.config.apiUrl+"registro/getCiudades";
		var parametros  = "idDepto="+$scope.departamento;
		constantes.consultaApi(controlador,parametros,function(json){
			$scope.ciudadesSelect	= json;
			$scope.$digest();
		});
	}
	$scope.registraEmpresa = function()
	{
		$scope.departamento = $("#departamento").val();
		$scope.ciudad 		= $("#ciudad").val();

		if($scope.nombre == "" || $scope.nombre == undefined)
		{
			constantes.alerta("Atención","El campo nombre de la empresa es requerido","warning",function(){
				$("#nombre").focus();
			})
		}
		else if($scope.direccion == "" || $scope.direccion == undefined)
		{
			constantes.alerta("Atención","El campo dirección de la empresa es requerido","warning",function(){
				$("#direccion").focus();
			})
		}
		else if($scope.telefono == "" || $scope.telefono == undefined)
		{
			constantes.alerta("Atención","El campo teléfono de la empresa es requerido y no debe contener letras","warning",function(){
				$("#telefono").focus();
			})
		}
		else if($scope.telefono != "" && isNaN($scope.telefono))
		{
			constantes.alerta("Atención","El campo teléfono sólo puede contener números","warning",function(){
				$("#telefono").focus();
			})
		}
		else if($scope.email == "" || $scope.email == undefined)
		{
			constantes.alerta("Atención","El campo correo electrónico de la empresa es requerido y debe ser un correo válido","warning",function(){
				$("#email").focus();
			})
		}
		else if($scope.email != "" && !constantes.validaMail($scope.email))
		{
			constantes.alerta("Atención","Debe escribir un correo electrónico válido","warning",function(){
				$("#email").focus();
			})
		}
		else if($scope.departamento == "" || $scope.departamento == undefined)
		{
			constantes.alerta("Atención","Seleccione el departamento donde está ubicada su empresa","warning",function(){
				$("#departamento").focus();
			})
		}
		else if($scope.ciudad == "" || $scope.ciudad == undefined)
		{
			constantes.alerta("Atención","Seleccione la ciudad donde está ubicada su empresa","warning",function(){
				$("#ciudad").focus();
			})
		}
		else if($scope.clave == "" || $scope.clave == undefined)
		{
			constantes.alerta("Atención","Escriba una clave para su cuenta","warning",function(){
				$("#clave").focus();
			})
		}
		else if($scope.rclave == "" || $scope.rclave == undefined)
		{
			constantes.alerta("Atención","Debe volver a escribir la clave de ingresó anteriormente","warning",function(){
				$("#rclave").focus();
			})
		}
		else if($scope.clave != "" && $scope.rclave != "" && $scope.rclave != $scope.clave)
		{
			constantes.alerta("Atención","Las contraseñas no coinciden, por favor verifique.","warning",function(){
				$("#rclave").focus();
			})
		}
		else if(!$("#terminos").prop('checked'))
		{
			constantes.alerta("Atención","Debe leer y aceptar los términos y condiciones","warning",function(){
				$("#terminos").focus();
			})
		}
		else
		{
			constantes.confirmacion("Confirmación!","Los datos que acaba de ingresar son correctos, desea continuar?","info",function(){
				var controlador = $scope.config.apiUrl+"registro/insertaEmpresas";
				var parametros  = $("#formRegEmpresas").serialize();
				constantes.consultaApi(controlador,parametros,function(json){
					if(json.continuar == 1)
					{
						constantes.alerta("Atención",json.mensaje,"success",function(){

						})
					}
					else
					{
						constantes.alerta("Atención",json.mensaje,"error",function(){})
					}
				});
			});
			
		}

	}
});
