<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your head content here -->
</head>
<body>
    <main id="main" class="main">
        <div class="container">
            <form action="<?= base_url('home/aksi_KS')?>" method="post">
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
                         
                                   
                                    <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">Penerima</label>
                                        <input type="text" class="form-control" id="username" name="nama">
                                    </div>
                                    <div class="mb-3 mt-3">
    <label for="jumlah" class="form-label">Surat</label>
    <textarea class="form-control" id="surat" name="surat"></textarea>
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
