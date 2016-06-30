<div class="container">
 
<script id="metamorph-1-start" type="text/x-placeholder"></script><script id="metamorph-21-start" type="text/x-placeholder"></script>
  <div class="row">
    <div class="col-lg-12">
        <div class="container-fluid text-center" style="margin-top:10%">
              <form class="form-signin" data-ember-action="2" id="formLogin" ng-submit="loginInApp()">
                <h2 class="form-signin-heading"><?php echo lang("tituloBienvenida") ?></h2>
                <small class="text-muted"><?php echo lang("textoBienvenida") ?></small>
                <div class="row-picture" style="margin:10% 0 0 0">
                  <img class="img img-circle" id="miniatura" ng-src="{{fotoLogin}}" alt="icon" width="35%">
                </div>

                <input name="usuario" ng-change="getPicture()" ng-model="usuario" id="usuario" class="ember-view ember-text-field form-control login-input" placeholder="<?php echo lang("placeHolderCorreo") ?>" type="text">
                
                <input name="clave" ng-model="clave" id="clave" class="ember-view ember-text-field form-control login-input-pass" placeholder="<?php echo lang("placeHolderClave") ?>" type="password">

                <script id="metamorph-22-start" type="text/x-placeholder"></script><script id="metamorph-22-end" type="text/x-placeholder"></script>

                <button class="btn btn-raised btn-primary" data-bindattr-3="3"><?php echo lang("labelBtnLogin") ?></button>
                <br><br><br><br><br>
                <small class="create-account text-muted"><?php echo lang("labelNoTieneCuenta") ?> 
                <a href="<?php echo base_url()?>registro/registroEmpresas" class="ember-view btn btn-sm btn-default"> <?php echo lang("labelBtnCrear1") ?> </a> |
                <a href="<?php echo base_url()?>registro/registroPersonas" class="ember-view btn btn-sm btn-default"> <?php echo lang("labelBtnCrear2") ?> </a> 
                </small>

              </form>
      </div>
    </div>
  </div>

</div>