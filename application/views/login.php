<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>RSUD ENGKU HAJI DAUD</title>

	<!-- Global stylesheets -->
	<link href="<?php echo base_url()?>https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
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
	<script type="text/javascript" src="<?php echo base_url()?>assets/js/core/app.js"></script>
	<!-- /theme JS files -->

</head>

<body class="login-container">


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Simple login form -->
					<form action="<?php echo site_url('login/aksilogin')?>" method="post">
						<div class="panel panel-body login-form">
							<div class="text-center">
								<img src="<?php echo base_url()?>assets/images/logokepri.png?>" width="30%" height="30%"> </img>
								<h5 class="content-group">RSUD ENGKU HAJI DAUD <small class="display-block">Web Administrator</small></h5>
							</div>
							<?php
		                    if($this->session->flashdata('errorlogin')){?>
		                        <div class="alert alert-error alert-dismissible fade in">
		                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
		                            <?php echo $this->session->flashdata('errorlogin');?>
		                        </div>
		                    <?php } ?>
							<div class="form-group has-feedback has-feedback-left">
								<input type="text" class="form-control" placeholder="Username" name="username">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>

							<div class="form-group has-feedback has-feedback-left">
								<input type="password" class="form-control" placeholder="Password" name="password">
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Login <i class="icon-circle-right2 position-right"></i></button>
							</div>
						</div>
					</form>
					<!-- /simple login form -->


				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
</html>
