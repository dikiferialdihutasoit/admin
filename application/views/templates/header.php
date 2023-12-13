<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RSUD ENGKU HAJI DAUD</title>

    <!-- Global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url()?>assets/images/favicon.png?>" />
    <link href="<?php echo base_url()?>assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url()?>assets/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url()?>assets/css/core.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url()?>assets/css/components.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url()?>assets/css/colors.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/core/libraries/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/plugins/tables/datatables/datatables.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/plugins/forms/selects/select2.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/plugins/forms/styling/uniform.min.js"></script>

    <script type="text/javascript" src="<?php echo base_url()?>assets/js/core/app.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/pages/datatables_basic.js"></script>
    <script type="text/javascript" src="<?php echo base_url()?>assets/js/pages/form_inputs.js"></script>
    <!-- /theme JS files -->

</head>

<body>
    <!-- Main navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-header">
            <!-- <a class="navbar-brand" href="<?php echo site_url('home')?>"><img src="<?php echo base_url()?>assets/images/logo_light.png" alt=""></a> -->
            <a class="navbar-brand" href="<?php echo site_url('home')?>"><img src="<?php echo base_url()?>assets/images/logokepri.png" alt=""></a>
            <ul class="nav navbar-nav visible-xs-block">
                <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>
        </div>

        <div class="navbar-collapse collapse" id="navbar-mobile">
            <ul class="nav navbar-nav">
                <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">
                

                <li class="dropdown dropdown-user">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?php echo base_url()?>assets/images/user.png" alt="">
                        <span><?php echo $this->session->userdata('namauser')?></span>
                        <i class="caret"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?php echo base_url()?>#"><i class="icon-user-plus"></i> My profile</a></li>
                        <li><a href="<?php echo site_url('login/aksilogout')?>"><i class="icon-switch2"></i> Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /main navbar -->


    <!-- Page container -->
    <div class="page-container">

        <!-- Page content -->
        <div class="page-content">

            <!-- Main sidebar -->
            <div class="sidebar sidebar-main">
                <div class="sidebar-content">

                    <!-- User menu -->
                    <div class="sidebar-user">
                        <div class="category-content">
                            <div class="media">
                                <a href="#" class="media-left"><img src="<?php echo base_url()?>assets/images/user.png" class="img-circle img-sm" alt=""></a>
                                <div class="media-body">
                                    <span class="media-heading text-semibold"><?php echo $this->session->userdata('namauser')?></span>
                                    <div class="text-size-mini text-muted">
                                        Web Administrator
                                    </div>
                                </div>

                                
                            </div>
                        </div>
                    </div>
                    <!-- /user menu -->


                    <!-- Main navigation -->
                    <div class="sidebar-category sidebar-category-visible">
                        <div class="category-content no-padding">
                            <ul class="navigation navigation-main navigation-accordion">

                                <!-- Main -->
                                <li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>
                                <li><a href="<?php echo site_url('home')?>"><i class="icon-home4"></i> <span>Dashboard</span></a></li>

                                <li class="navigation-header"><span>Berita dan Artikel</span> <i class="icon-menu" title="Berita"></i></li>
                                <li><a href="<?php echo site_url('berita')?>"><i class="icon-newspaper"></i> <span>Data Berita</span></a></li>
                                <li><a href="<?php echo site_url('artikel')?>"><i class="icon-newspaper"></i> <span>Data Artikel</span></a></li>

                                
                                <li class="navigation-header"><span>Gallery</span> </li>
                                
                                <li><a href="<?php echo site_url('kategori')?>"><i class="icon-price-tag3"></i> <span>Data Kategori Gallery</span></a></li>
                                <li><a href="<?php echo site_url('gallery')?>"><i class="icon-gallery"></i> <span>Data Gallery</span></a></li>

                                <li class="navigation-header"><span>Dokter</span> </li>
                                <li><a href="<?php echo site_url('kategori_dokter')?>"><i class="icon-price-tag3"></i> <span>Data Kategori Dokter</span></a></li>
                                <li><a href="<?php echo site_url('dokter')?>"><i class="icon-person"></i> <span>Data Dokter</span></a></li>
                                

                            </ul>
                        </div>
                    </div>
                    <!-- /main navigation -->

                </div>
            </div>
            <!-- /main sidebar -->


           