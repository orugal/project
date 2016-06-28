<div class="container">
      
      <script id="metamorph-1-start" type="text/x-placeholder"></script><script id="metamorph-21-start" type="text/x-placeholder"></script>

  <div class="container text-center" style="margin-top:10%">
      <form class="form-signin" data-ember-action="2">
        <h2 class="form-signin-heading"><?php echo lang("tituloBienvenida") ?></h2>

      <small class="text-muted"><?php echo lang("textoBienvenida") ?></small>

        <br><br>
        
          <input id="ember360" class="ember-view ember-text-field form-control login-input" placeholder="<?php echo lang("placeHolderCorreo") ?>" type="text">
          <input id="ember361" class="ember-view ember-text-field form-control login-input-pass" placeholder="<?php echo lang("placeHolderClave") ?>" type="password">

          <script id="metamorph-22-start" type="text/x-placeholder"></script><script id="metamorph-22-end" type="text/x-placeholder"></script>

          <a href="<?php echo base_url()?>empresas" class="btn btn-raised btn-primary" data-bindattr-3="3"><?php echo lang("labelBtnLogin") ?></a>
          <br><br><br>
          <small class="create-account text-muted"><?php echo lang("labelNoTieneCuenta") ?> 
          <a href="<?php echo base_url()?>registro/registroEmpresas" class="ember-view btn btn-sm btn-default"> <?php echo lang("labelBtnCrear1") ?> </a> |
          <a href="<?php echo base_url()?>registro/registroPersonas" class="ember-view btn btn-sm btn-default"> <?php echo lang("labelBtnCrear2") ?> </a> 
          </small>

      </form>
    </div>