<!-- Main content -->
			<div class="content-wrapper">


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5>DATA ARTIKEL</h5><hr> 
							<a class="btn btn-primary" href="<?php echo site_url('artikel/tambahdata')?>">Tambah Data Artikel Baru</a>
						</div>

						<table class="table table-bordered datatable-basic">
							<thead>
								<tr>
									<th width="1%">#</th>
                                    <th width="50%">Judul</th>
                                    <th width="20%">Tgl / Jam</th>
                                    <th width="15%">Authors</th>
                                    <th width="14%">Aksi</th>
								</tr>
							</thead>
							<tbody>
								<?php $i=1;foreach($dataartikel as $key => $value){?>
                                    <tr>
                                        <th><?php echo $i++;?></th>
                                        <th><?php echo $value['judul']?></th>
                                        <th><?php echo $value['waktu']?></th>
                                        <th><?php echo $value['authors']?></th>
                                        <th>
                                        	<a href="<?php echo site_url('artikel/ubahdata/'.$value['idartikel'])?>" class="btn btn-success btn-xs"><i style="font-size:10px" class="icon-pencil"></i></a>
                                        	<a class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal_hapus<?php echo $value['idartikel'];?>"><i style="font-size:10px" class="icon-trash"></i></a>
                                        </th>
                                    </tr>
                                <?php   }?>
							</tbody>
						</table>
					</div>
					<!-- /basic datatable -->
				    <?php foreach($dataartikel as $key => $value){
				            $idartikel=$value['idartikel'];
				        ?>
					<!-- ============ MODAL HAPUS BARANG =============== -->
			        <div class="modal fade" id="modal_hapus<?php echo $idartikel;?>" tabindex="-1" role="dialog">
			            <div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header bg-warning">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h5 class="modal-title">Hapus Artikel</h5>
								</div>

								<form class="form-horizontal" method="post" action="<?php echo site_url('artikel/hapusdata/')?>">
					                <div class="modal-body" align="center">
					                	<i class="icon-database-remove" style="font-size: 120px"></i><br>
					                    <p>Apakah anda yakin menghapus artikel dengan judul <br>"<b><?php echo $value['judul']?></b>" ?</p>
					                </div>
					                <div class="modal-footer">
					                	<hr>
					                    <input type="hidden" name="idartikel" value="<?php echo $idartikel;?>">
					                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
					                    <button class="btn btn-danger">Hapus</button>
					                </div>
				            	</form>
							</div>
						</div>
			        </div>
				    <!--END MODAL HAPUS BARANG-->
    				<?php };?>