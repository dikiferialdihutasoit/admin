<!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper main-wrapper" style=''>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title">

                            <div class="pull-left">
                                <h1 class="title">Tambah Data Baru</h1>                            
                            </div>

                            <div class="pull-right hidden-xs">
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="<?php echo site_url('home')?>"><i class="fa fa-home"></i>Home</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo site_url('berita')?>">Data Berita</a>
                                    </li>
                                    <li class="active">
                                        <strong>Tambah Data</strong>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Input Data</h2>
                            </header>
                            <div class="content-body">
                                <div class="row">
                                    <div class="col-md-12 col-sm-9 col-xs-10">
                                        <form name="form" method="post" action="<?php echo site_url('bagian/simpandata')?>" enctype="multipart/form-data">
                                            <div class="form-group">

                                                <label class="form-label">Tanggal / Jam</label>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <input type="text" value="<?php echo date("d M Y")?>" name="tanggal" class="form-control datepicker col-md-4" data-format="dd MM yyyy" required>
                                                    </div>
                                                    <div class="col-xs-2" style='padding-left:0px;'>
                                                        <input type="text" name="jam" class="form-control timepicker col-md-4" data-template="dropdown" data-show-seconds="true" data-default-time="<?php echo date('g:i:s A')?>" data-show-meridian="true" data-minute-step="5" data-second-step="5"  required>
                                                    </div>
                                                </div>
                                                <div class="controls">
                                                    <label class="form-label">Judul Berita</label>
                                                    <input type="text" name="judul" class="form-control" required >
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label" for="field-7">Paragraf</label>
                                                    <div class="controls">
                                                        <textarea class="form-control autogrow" name="paragraf" required cols="25" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 50px;"></textarea>
                                                    </div>
                                                </div>
                                                <div class="controls">
                                                    <label class="form-label">Authors</label>
                                                    <input type="text" name="authors" class="form-control" required >
                                                </div>
                                                <div class="controls">
                                                    <label class="form-label">Upload File</label>
                                                    <input type="file" name="file">
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-primary" value="Simpan Data" />

                                        </form>


                                    </div>
                                </div>


                            </div>
                        </section></div>
