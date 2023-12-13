            <!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper main-wrapper" style=''>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title">

                            <div class="pull-left">
                                <h1 class="title">DATA BERITA</h1>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12">
                        <section class="box ">
                            
                            <div class="content-body">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                    <a class="btn btn-primary" href="<?php echo site_url('berita/tambahdata')?>">Tambah Data</a>
                                    <hr>
                                    <table id="example-1" class="table table-striped dt-responsive display" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Judul</th>
                                                    <th>Tgl / Jam</th>
                                                    <th>Isi Berita</th>
                                                    <th>Authors</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php $i=1;foreach($databerita as $key => $value){?>
                                                <tr>
                                                    <th><?php echo $i++;?></th>
                                                    <th><?php echo $value['judul']?></th>
                                                    <th><?php echo $value['tanggal'].'/'.$value['jam']?></th>
                                                    <th><?php echo $value['isiberita']?></th>
                                                    <th><?php echo $value['authors']?></th>
                                                    <th><?php echo 'Aksi'?></th>
                                                </tr>
                                                <?php   }?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </section>
            </section>
            <!-- END CONTENT -->