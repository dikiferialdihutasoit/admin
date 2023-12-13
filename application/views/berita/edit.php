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
								<form class="form-horizontal" method="post" action="<?php echo site_url('berita/ubahdata/'.$value['idberita'])?>" enctype="multipart/form-data">
									<fieldset class="content-group">
										<legend class="text-bold">Input Data</legend>

										<div class="form-group">
											<label class="control-label col-lg-2">Judul Berita</label>
											<div class="col-lg-10">
												<input type="text" name="judul" class="form-control" value="<?php echo $value['judul'];?>" required >
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-lg-2">Isi Berita</label>
											<div class="col-lg-10">
												<textarea rows="30" cols="5" class="form-control" name="isiberita"><?php echo $value['isiberita'];?></textarea>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-lg-2">Authors</label>
											<div class="col-lg-10">
												<input type="text" name="authors" class="form-control" value="<?php echo $value['authors'];?>">
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
												<button type="submit" class="btn btn-primary">Ubah Data <i class="icon-floppy-disk"></i></button>
											</div>
										</div>
									</fieldset>
								</form>
							<?php } ?>
						</div>
					</div>
					<!-- /form horizontal -->