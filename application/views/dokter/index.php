<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5>DATA DOKTER</h5><hr> 
							<a class="btn btn-primary" href="<?php echo site_url('dokter/tambahdata')?>">Tambah Data Dokter Baru</a>
						</div>

						<table class="table table-bordered datatable-basic">
							<thead>
								<tr>
									<th width="1%">#</th>
                                    <th width="50%">Nama Dokter</th>
                                    <th width="20%">Kategori</th>
                                    <th width="14%">Aksi</th>
								</tr>
							</thead>
							<tbody>
								<?php $i=1;foreach($datadokter as $key => $value){?>
                                    <tr>
                                        <th><?php echo $i++;?></th>
                                        <th><?php echo $value['nama']?></th>
                                        <th><?php echo $value['nama_kategori']?></th>
                                        <th>
                                        	<a href="<?php echo site_url('dokter/ubahdata/'.$value['iddokter'])?>" class="btn btn-success btn-xs"><i style="font-size:10px" class="icon-pencil"></i></a>
                                        	<a class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal_hapus<?php echo $value['iddokter'];?>"><i style="font-size:10px" class="icon-trash"></i></a>
                                        </th>
                                    </tr>
                                <?php   }?>
							</tbody>
						</table>
					</div>
					<!-- /basic datatable -->
				    <?php foreach($datadokter as $key => $value){
				            $iddokter=$value['iddokter'];
				        ?>
					<!-- ============ MODAL HAPUS BARANG =============== -->
			        <div class="modal fade" id="modal_hapus<?php echo $iddokter;?>" tabindex="-1" role="dialog">
			            <div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header bg-warning">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h5 class="modal-title">Hapus Dokter</h5>
								</div>

								<form class="form-horizontal" method="post" action="<?php echo site_url('dokter/hapusdata/')?>">
					                <div class="modal-body" align="center">
					                	<i class="icon-database-remove" style="font-size: 120px"></i><br>
					                    <p>Apakah anda yakin menghapus dokter dengan nama <br>"<b><?php echo $value['nama']?></b>" ?</p>
					                </div>
					                <div class="modal-footer">
					                	<hr>
					                    <input type="hidden" name="iddokter" value="<?php echo $iddokter;?>">
					                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
					                    <button class="btn btn-danger">Hapus</button>
					                </div>
				            	</form>
							</div>
						</div>
			        </div>
				    <!--END MODAL HAPUS BARANG-->
    				<?php };?>