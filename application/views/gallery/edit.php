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
								<form class="form-horizontal" method="post" action="<?php echo site_url('gallery/ubahdata/'.$value['idgallery'])?>" enctype="multipart/form-data">
									<fieldset class="content-group">
										<legend class="text-bold">Input Data</legend>

										<div class="form-group">
											<label class="control-label col-lg-2">Judul Gallery</label>
											<div class="col-lg-10">
												<input type="text" name="judul" class="form-control" value="<?php echo $value['judul'];?>" required >
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-lg-2">Kategori</label>
											<div class="col-lg-10">
												<select name="idkategori" class="form-control" required="">
												<?php foreach($datakategori as $key => $valuekat){?>
				                                	<option value="<?php echo $valuekat['idkategori']?>" <?php echo ($value['idkategori']==$valuekat['idkategori'])?"selected":""?>><?php echo $valuekat['namakategori']?></option>
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
												<button type="submit" class="btn btn-primary">Ubah Data <i class="icon-floppy-disk"></i></button>
											</div>
										</div>
									</fieldset>
								</form>
							<?php } ?>
						</div>
					</div>
					<!-- /form horizontal -->