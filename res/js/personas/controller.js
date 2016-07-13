/*
* Controlador que maneja todas las funcionalidades de la zona personas
* @author Farez Prieto @orugal
* @date 13 de Julio 2016
*/
project.controller('personas', function($scope,$http,$q,constantes)
{
	$scope.listaAreas 	= [];
	$scope.palabra 		= $("#palabra").val();
	$scope.idPersona 	= $("#idPersona").val();
	var users = [];
	var fotoUsuarioSug 	= ""; 
	$scope.personasInit = function()
	{
		$scope.config 			=  configLogin;//configuración global
		
		$('#palabra').suggest('@', {
		  data: function(q) {
		    if (q.length >= 1) 
		    {
		      //return $.getJSON($scope.config.apiUrl+"Propiedades/Visitante", { q:q });
		        var controlador  = 	$scope.config.apiUrl+"Personas/getPersonas";
				var parametros	=	"palabra="+q;
				constantes.consultaApi(controlador,parametros,function(json){
					if(json.continuar == 1)
					{
						users = json.datos;
					}
					else
					{
						users = [];
					}
				});

		    }
		    return users;
		  },
		  filter:{ casesensitive: false, limit: 10},
		  map: function(user) {
		  	fotoUsuarioSug = (user.icono != null)?$scope.config.apiUrl+"res/fotos/personas/"+user.idPersona+"/"+user.icono:$scope.config.apiUrl+"res/img/user.jpg";
		    return {
		      value: user.idPersona,
		      text: '<img width="10%" class="img-circle" src="'+fotoUsuarioSug+'"/> <strong>'+user.nombre+'</strong> <small>'+user.email+'</small>'
		    }
		  },
		  onselect:function(e,user)
		  {
		  	$('#palabra').val(user.text);
		  	$('#idPersona').val(user.value);
		  	$scope.idPersona = user.value;
		  	$scope.$digest();
		  }
		})

		//$scope.getAreas();
	}
	$scope.getAreas = function()
	{
		var controlador = 	$scope.config.apiUrl+"Areas/getAreas";
		var parametros  = "palabra="+$scope.usuario;
		constantes.consultaApi(controlador,parametros,function(json){
			if(json.continuar == 1)
			{
				$scope.listaAreas		=	json.datos;
				$scope.$digest();
			}
			else
			{
				constantes.alerta("Atención",json.mensaje,"warning",function(){})
			}
		});
	}
	$scope.agregaPersona = function()
	{
		alert($scope.idPersona+"asdassdasd");
	}
	/*$scope.eliminaArea = function(results,index)
	{
		constantes.confirmacion("Atención","Está a punto de eliminar un área de servicio, desea continuar?","warning",function(){
			var areaBorrar = results[index].idArea;
			//se inicia el login
			var controlador = 	$scope.config.apiUrl+"Areas/borrarArea";
			var parametros  = 	"idArea="+Math.round(Math.random()*(100-999)+parseInt(999))+areaBorrar;
			constantes.consultaApi(controlador,parametros,function(json){
				if(json.continuar == 1)
				{
					swal.close();
					$scope.q = "";
					$scope.getAreas();
					$scope.$digest();
				}
				else
				{
					constantes.alerta("Atención",json.mensaje,"warning",function(){})
				}
			});
		})
	}*/
});
