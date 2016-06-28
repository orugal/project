<!--                                                    
     ("`-''-/").___....''"`-._
      `6_ 6  )   `-.  (     ).`-.__.`) 
      (_Y_.)'  ._   )  `._ `. ``-..-'
    _..`..'_..-_/  /..'_.' ,'
   (il),-''  (li),'  ((!.-'

   Desarrollado por  @orugal
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $titulo ?></title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url() ?>res/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url() ?>res/css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url() ?>res/css/plugins/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<?php echo base_url() ?>res/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url()?>res/css/bootstrap-material-design.min.css" />
    <link rel="stylesheet" href="<?php echo base_url()?>res/css/ripples.min.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="wrapper">
        <!-- Menú General Empresas-->
            <?php echo $menu ?>
        <!-- Fin menú general Empresas-->
        <!-- Div Central-->
        <div id="page-wrapper">
            <?php $this->load->view($centro) ?>
        </div>
        <!--Fin Div Central-->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="<?php echo base_url() ?>res/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url() ?>res/js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url() ?>res/js/plugins/morris/raphael.min.js"></script>
    <script src="<?php echo base_url() ?>res/js/plugins/morris/morris.min.js"></script>
    <script src="<?php echo base_url() ?>res/js/plugins/morris/morris-data.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>res/js/material.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>res/js/ripples.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>res/js/validator.js"></script>
    <script type="text/javascript">
        var configLogin =  {
            apiUrl: '<?php echo base_url()?>'
        }
         $.material.init();
    </script>
</body>
</html>