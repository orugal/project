<!-- Navigation -->
        <nav class="navbar navbar-fixed-top  navbar-default" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url() ?>"><strong><?php echo $_SESSION['project']['info']['nombre'] ?></strong></a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong> <?php echo $_SESSION['project']['info']['nombre'] ?></strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong> <?php echo $_SESSION['project']['info']['nombre'] ?> </strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong> <?php echo $_SESSION['project']['info']['nombre'] ?> </strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <!-- Alertas y notificaciones-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>

                <!-- Perfil del usuario de la empresa-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>  <?php echo $_SESSION['project']['info']['nombre'] ?>  <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <!--<li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>-->
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<?php echo base_url()?>Login/logout"><i class="fa fa-fw fa-power-off"></i> Cerrar sesión</a>
                        </li>
                    </ul>
                </li>
            </ul>



           <!-- Menú lateral-->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <?php if($_SESSION['project']['login']['tipoLogin'] == 1){ ?>
                        <li <?php if($opc == 'areas'){?>class="active"<?php }?>>
                            <a href="<?php echo base_url()?>App/areas"><i class="fa fa-fw fa-sitemap"></i> Areas</a>
                        </li>
                        <li <?php if($opc == 'personas'){?>class="active"<?php }?>>
                            <a href="<?php echo base_url()?>App/personas"><i class="fa fa-fw fa-user"></i> Personas</a>
                        </li>
                    <?php } ?>
                    <li <?php if($opc == 'proyectos'){?>class="active"<?php }?>>
                        <a href="<?php echo base_url()?>App/proyectos"><i class="fa fa-fw fa-table"></i> Proyectos</a>
                    </li>
                    <li <?php if($opc == 'reportes'){?>class="active"<?php }?>>
                        <a href="<?php echo base_url()?>App/reportes"><i class="fa fa-fw fa-clock-o"></i> Reporte de ingreso</a>
                    </li>
                    
                    <?php if($_SESSION['project']['login']['tipoLogin'] == 1){ ?>
                        <li <?php if($opc == 'ofertas'){?>class="active"<?php }?>>
                            <a href="<?php echo base_url()?>App/configuracion"><i class="fa fa-fw fa-desktop"></i> Ofertas Laborales</a>
                        </li>
                        <li <?php if($opc == 'pautas'){?>class="active"<?php }?>>
                            <a href="<?php echo base_url()?>App/configuracion"><i class="fa fa-fw fa-desktop"></i> Pautas publicitarias</a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            <!-- /.navbar-collapse -->


        </nav>