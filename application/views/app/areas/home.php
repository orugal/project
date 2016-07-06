<div class="container-fluid" ng-controller="areas" ng-init="areasInit()">

<div id="modalArea" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <div class="modal-content">
          <form role="form" ng-submit="agregarNuevaArea()" id="formAreas">    
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h2 class="modal-title"><?php echo lang('tituloCreaArea') ?></h2>
          </div>
          <div class="modal-body">              
              <div class="form-group" id="cajaNombreEmpresa">
                  <input tabindex="1" id="nombreArea" name="nombreArea" ng-model="nombreArea" class="ember-view ember-text-field form-control login-input" placeholder="<?php echo lang("plh_CreaArea") ?>"  type="text">
                  <p class="help-block"><?php echo lang('txtInfoArea1') ?></p>
               </div>
          </div>
          <div class="modal-footer">
           <button type="button"  data-dismiss="modal" class="btn  btn-default"><?php echo lang('reg_btn_cancelar') ?></button>
            <button type="submit" class="btn btn-raised btn-primary"><?php echo lang('reg_btn_crea') ?></button>
          </div>
          </form>
        </div>

      </div>
    </div>




    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                <?php echo lang("tituloArea") ?><!--<small><?php echo $_SESSION['project']['info']['nombre'] ?></small>-->
                <div class="btn-group" >
                    <button type="button" class="btn dropdown-toggle"
                            data-toggle="dropdown">
                      Acciones <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                      
                        <li role="separator" class="divider"></li><li class="dropdown-header">Seleccione una opción</li>
                        <li><a class="btn" data-toggle="modal" data-target="#modalArea"><i class="fa fa-fw fa-sitemap"></i> Agregar nueva área</a></li>
                    </ul>
                </div>
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Singularcom</a>
                </li>
                <li class="active">
                     Áreas
                </li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="alert alert-primary alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <i class="fa fa-info-circle"></i>  <strong>Que son las áreas?</strong> Es cada una se las dependencias de las cuales está construida su empresa.
            </div>
        </div>
    </div>
    <!-- /.row -->
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <h2>Listado de áreas actuales </h2>

            <div class="row" ng-if="listaAreas.length == 0">
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <!--<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>-->
                        <i class="fa fa-info-circle"></i>  <strong>Vaya!</strong> parece que aún no hay áreas de trabajo creadas.
                    </div>
                </div>
            </div>

            <div class="table-responsive" ng-if="listaAreas.length > 0 ">
            
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>Nombre del Área</th>
                            <th class="text-center">Personas</th>
                            <!--<th class="text-center">% Cumplimiento</th>-->
                            <th class="text-center">Tareas Asignadas</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="areas in listaAreas">
                            <td>{{areas.nombreArea}}</td>
                            <td class="text-center">10</td>
                            <!--<td class="text-center">32.3%</td>-->
                            <td class="text-center">321</td>
                            <td  class="text-center">
                                <a href="javascript:void(0)" class="btn btn-primary btn-fab btn-fab-mini"><i class="material-icons">info</i></a>
                                <a href="javascript:void(0)" class="btn btn-danger btn-fab btn-fab-mini"><i class="material-icons">delete</i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>
<!-- /.container-fluid -->