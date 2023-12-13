<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5>DATA KATEGORI DOKTER</h5><hr> 
							<a class="btn btn-primary" href="<?php echo site_url('kategori_dokter/tambahdata')?>">Tambah Data Kategori Dokter Baru</a>
						</div>

						<table class="table table-bordered datatable-basic">
							<thead>
								<tr>
									<th width="1%">#</th>
                                    <th width="85%">Nama Kategori</th>
                                    <th width="14%">Aksi</th>
								</tr>
							</thead>
							<tbody>
								<?php $i=1;foreach($datakategori_dokter as $key => $value){?>
                                    <tr>
                                        <th><?php echo $i++;?></th>
                                        <th><?php echo $value['nama_kategori']?></th>
                                        <th>
                                        	<a href="<?php echo site_url('kategori_dokter/ubahdata/'.$value['id_kategori_dokter'])?>" class="btn btn-success btn-xs"><i style="font-size:10px" class="icon-pencil"></i></a>
                                        	<a class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal_hapus<?php echo $value['id_kategori_dokter'];?>"><i style="font-size:10px" class="icon-trash"></i></a>
                                        </th>
                                    </tr>
                                <?php   }?>
							</tbody>
						</table>
					</div>
					<!-- /basic datatable -->
				    <?php foreach($datakategori_dokter as $key => $value){
				            $id_kategori_dokter=$value['id_kategori_dokter'];
				        ?>
					<!-- ============ MODAL HAPUS BARANG =============== -->
			        <div class="modal fade" id="modal_hapus<?php echo $id_kategori_dokter;?>" tabindex="-1" role="dialog">
			            <div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header bg-warning">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h5 class="modal-title">Hapus Kategori Dokter</h5>
								</div>

								<form class="form-horizontal" method="post" action="<?php echo site_url('kategori_dokter/hapusdata/')?>">
					                <div class="modal-body" align="center">
					                	<i class="icon-database-remove" style="font-size: 120px"></i><br>
					                    <p>Apakah anda yakin menghapus kategori dokter dengan nama <br>"<b><?php echo $value['nama_kategori']?></b>" ?</p>
					                </div>
					                <div class="modal-footer">
					                	<hr>
					                    <input type="hidden" name="idkategori_dokter" value="<?php echo $id_kategori_dokter;?>">
					                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
					                    <button class="btn btn-danger">Hapus</button>
					                </div>
				            	</form>
							</div>
						</div>
			        </div>
				    <!--END MODAL HAPUS BARANG-->
    				<?php };?>