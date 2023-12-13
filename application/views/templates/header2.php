<?php
date_default_timezone_set("Asia/Bangkok");
?> 
<!DOCTYPE html>
<html class=" ">
<style>
    .sidebar-menu {font-size: 12px;}
</style>
<head>
        <!-- 
         * @Package: Ultra Admin - Responsive Theme
         * @Subpackage: Bootstrap
         * @Version: 4.1
         * This file is part of Ultra Admin Theme.
        -->
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>RSUD ENGKU HAJI DAUD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url()?>assets/images/favicon.png?>" /> 
        <link rel="apple-touch-icon-precomposed" href="<?php echo base_url()?>assets/images/apple-touch-icon-57-precomposed.png">  <!-- For iPhone -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url()?>assets/images/apple-touch-icon-114-precomposed.png">    <!-- For iPhone 4 Retina display -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url()?>assets/images/apple-touch-icon-72-precomposed.png">    <!-- For iPad -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url()?>assets/images/apple-touch-icon-144-precomposed.png">    <!-- For iPad Retina display -->
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<?php echo base_url()?>assets/plugins/datatables/css/jquery.dataTables.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>

        <!--  CHART MORRIS  -->
        

        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<?php echo base_url()?>assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url()?>assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url()?>assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url()?>assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url()?>assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS FRAMEWORK - END -->

        <link href="<?php echo base_url()?>assets/plugins/datepicker/css/datepicker.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<?php echo base_url()?>assets/plugins/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" media="screen"/>


        <link href="<?php echo base_url()?>assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url()?>assets/css/responsive.css" rel="stylesheet" type="text/css"/>
        <script src="<?php echo base_url()?>assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
        
        <!-- CORE CSS TEMPLATE - END -->
                 
        
    </head>
    <!-- END HEAD -->

    <!-- BEGIN BODY -->
    <body class=" "><!-- START TOPBAR -->
        <div class='page-topbar '>
            <div class='logo-area'>

            </div>
            <div class='quick-area'>
                <div class='pull-left'>
                    <ul class="info-menu left-links list-inline list-unstyled">
                        <li class="sidebar-toggle-wrap">
                            <a href="#" data-toggle="sidebar" class="sidebar_toggle">
                                <i class="fa fa-bars"></i>
                            </a>
                        </li>
                       
                    </ul>
                </div>      
                <div class='pull-right'>
                    <ul class="info-menu right-links list-inline list-unstyled">
                        <li class="profile">
                            <a href="#" data-toggle="dropdown" class="toggle">
                                <img src="<?php echo base_url()?>assets/images/user.png" class="img-circle img-inline">
                                <span><?php echo $this->session->userdata('namauser')?> <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">
                                <li class="last">
                                    <a href="<?php echo site_url('login/aksilogout')?>">
                                        <i class="fa fa-lock"></i>
                                        Logout
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>           
                </div>      
            </div>

        </div>
        <!-- END TOPBAR -->
        <!-- START CONTAINER -->
        <div class="page-container row-fluid">

            <!-- SIDEBAR - START -->
            <div class="page-sidebar ">

                <!-- MAIN MENU - START -->
                <div class="page-sidebar-wrapper" id="main-menu-wrapper"> 

                    <!-- USER INFO - START -->
                    <div class="profile-info row">

                        <div class="profile-image col-md-4 col-sm-4 col-xs-4">
                            <a href="<?php echo site_url('home')?>">
                                <img src="<?php echo base_url()?>assets/images/user.png" class="img-responsive img-circle">
                            </a>
                        </div>

                        <div class="profile-details col-md-8 col-sm-8 col-xs-8">

                            <h3>
                                <a href=""><?php echo $this->session->userdata('namauser')?></a>

                                <!-- Available statuses: online, idle, busy, away and offline -->
                                <span class="profile-status online"></span>
                            </h3>

                            <p class="profile-title">Web Admin</p>

                        </div>

                    </div>
                    <!-- USER INFO - END -->
                    <ul class='wraplist'>   
                        <li class=""> 
                            <a href="<?php echo site_url('home')?>">
                                <i class="fa fa-dashboard"></i>
                                <span class="sidebar-menu">HOME</span>
                            </a><a href="<?php echo site_url('berita')?>">
                                <i class="fa fa-newspaper-o"></i>
                                <span class="sidebar-menu">DATA BERITA</span>
                            </a>
                        </li>
                        <hr>
                        <li class="">
                            <a href="<?php echo site_url('login/aksilogout')?>"style="font-size: 13px">
                                
                                <i class="fa fa-lock"></i>
                                <span class="sidebar-menu">LOGOUT</span>
                            </a>
                        </li>
                    </ul>

                </div>
                <!-- MAIN MENU - END -->

                
            </div>
            <!--  SIDEBAR - END -->
           