<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Form horizontal -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Ubah Data</h5>
						</div>

						<div class="panel-body">

							<?php foreach($ubah as $key => $value){?>
								<form class="form-horizontal" method="post" action="<?php echo site_url('kategori/ubahdata/'.$value['idkategori'])?>" enctype="multipart/form-data">
									<fieldset class="content-group">
										<legend class="text-bold">Input Data</legend>

										<div class="form-group">
											<label class="control-label col-lg-2">Nama Kategori</label>
											<div class="col-lg-10">
												<input type="text" name="nama" class="form-control" value="<?php echo $value['namakategori'];?>" required >
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-lg-2"></label>
											<div class="col-lg-10">
												<hr>
												<button type="submit" class="btn btn-primary">Ubah Data <i class="icon-floppy-disk"></i></button>
											</div>
										</div>
									</fieldset>
								</form>
							<?php } ?>
						</div>
					</div>
					<!-- /form horizontal -->