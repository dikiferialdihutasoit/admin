<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Form horizontal -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Tambah Data Baru</h5>
						</div>

						<div class="panel-body">

							<form class="form-horizontal" method="post" action="<?php echo site_url('gallery/tambahdata')?>" enctype="multipart/form-data">
								<fieldset class="content-group">
									<legend class="text-bold">Input Data</legend>

									<div class="form-group">
										<label class="control-label col-lg-2">Judul Gallery</label>
										<div class="col-lg-10">
											<input type="text" name="judul" class="form-control" required >
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-lg-2">Kategori</label>
										<div class="col-lg-10">
											<select name="idkategori" class="form-control" required="">
												<?php foreach($datakategori as $key => $value){?>
				                                	<option value="<?php echo $value['idkategori']?>"><?php echo $value['namakategori']?></option>
				                                <?php } ?>
				                            </select>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-lg-2">Upload Gambar</label>
										<div class="col-lg-10">
											<input type="file" class="file-styled" name="filegambar" accept="image/jpeg">
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-lg-2"></label>
										<div class="col-lg-10">
											<hr>
											<button type="submit" class="btn btn-primary">Simpan Data <i class="icon-floppy-disk"></i></button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
					<!-- /form horizontal -->