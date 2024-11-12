<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your head content here -->
</head>
<body>
    <main id="main" class="main">
        <div class="container">
            <form action="<?= base_url('home/aksi_AC')?>" method="post">
                <div class="pagetitle">
                    <h1></h1>
                     <div class="row">
                     
                </div><!-- End Page Title -->

                <section class="section">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"></h5>

                                    <!-- General Form Elements -->
                                  
                                           
                                    <div class="row mb-3 mt-3">
                    <label for="Address" class="col-md-4 col-lg-3 col-form-label">Jenis Cuti</label>
                      <select name="JC" type="text" class="form-control" id="nama" >
                        
                        <option value="">Pilih</option>
                          
                        <?php
                          foreach($t as $key){
                            ?>
                            <option value="<?=$key->id_JC?>"><?=$key->Jenis_Cuti?></option>
                          <?php }?>
                    
                      </select>
                    </div>  
                                    <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">Awal</label>
                                        <input type="DATE" class="form-control" id="username" name="awal">
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">Akhir</label>
                                        <input type="DATE" class="form-control" id="username" name="akhir">
                                    </div>
                                    <div class="mb-3 mt-3">
    <label for="jumlah" class="form-label">Keterangan</label>
    <textarea class="form-control" id="surat" name="keterangan"></textarea>
</div>

                                    
                                    <div class="row mb-3">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </form>
        </div>
    </main>
</body>
</html>
