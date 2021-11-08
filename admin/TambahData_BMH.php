<?php
    $lokasi1 = "Pemasukan";
    $lokasi2 = "Kelola Laporan Mitra BMH";
    $lokasi3 = "Tambah Data Mitra BMH";
    $linklokasi2 = "KelolaPelaporan_BMH.php";
    $linklokasi3 = "";
    
    include "../admin/template/header.php";   
    include "../admin/template/menu.php";
    include "../admin/template/lokasi.php";
    include "../admin/fungsi.php";

    $kodetambahBMH = kodetambahBMH();

?>

<div class="container-fluid">
    <h2 align="center" class="pt-3 pb-3">Input Penerimaan Mitra BMH</h2>
    <div class="row justify-content-center">
        <div class="col-sm-6 col-lg-12 ">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group ">
                        <label for="">ID Data</label>
                        <input type="text" class="form-control" name="id_data_input" value="<?=$kodetambahBMH?>" readonly>
                    </div>  

                    <div class="form-group row">
                    <div class="col-md-4">
                    <div class="form-group ">
                        <label for="">Usaha</label>
                        <input type="text" class="form-control" name="" value="Mitra BMH" readonly>
                    </div>
                    </div>
                    <div class="col-md-4">
                    <label for="">Kategori  </label>
                        <select name="id_kategori" class="form-control select-dropdown" required>
                            <option value="" selected disabled>Pilih Kategori  </option>
                            <?php
                            include "../koneksi/koneksi.php";
                            $query = mysqli_query($koneksi, "SELECT * FROM db_kategori WHERE id_usaha = 'DTU007'");
                            while ($show = mysqli_fetch_assoc($query)) {
                                echo "<option value='$show[id_kategori]'>$show[nama_kategori]</option>";
                            }
                            ?>
                    </select>
                    </div>
                    <div class="col-md-4">
                    <label for="">Bulan  </label>
                        <select name="id_bulan" class="form-control select-dropdown" required>
                            <option value="" selected disabled>Pilih Bulan  </option>
                            <?php
                            include "../koneksi/koneksi.php";
                            $query = mysqli_query($koneksi, "SELECT * FROM db_bulan ");
                            while ($show = mysqli_fetch_assoc($query)) {
                                echo "<option value='$show[id_bulan]'>$show[kd_nama_bulan]</option>";
                            }
                            ?>
                    </select>
                    </div>
                    <br>
                    </div>
                    
                 
                    <div class="form-group row">
                    <div class="col-md-6">
                        <label for="">Nominal :</label>
                        <input type="text" class="form-control" name="kd_jumlah" placeholder="Ketikan Nominal" onkeypress="return hanyaAngka(event)" required>
                    </div>

                    <script>
                        function hanyaAngka(event) {
                            var kd_jumlah = (event.which) ? event.which : event.keyCode
                            if (kd_jumlah != 46 && kd_jumlah > 31 && (kd_jumlah < 48 || kd_jumlah > 57))
                                return false;
                            return true;
                        }
                    </script>     


                    <div class="col-md-6">
                        <label for="tempat">Bukti Transfer</label>
                        <div class="input-group">
                        <input type="file" class="form-control" name="gambar" id="gambar">

                        </div>
                    </div>
                    </div>  
                    <div class="form-group ">

                    <label for="exampleFormControlTextarea1" class="form-label">Keterangan :</label>
                    <textarea class="form-control" name="kd_keterangan" placeholder="Ketikan Keterangan" rows="3" required></textarea>
                    </div>
                    <div class="form-group ">
                        <label for="">Tipe</label>
                        <input type="text" class="form-control" name="" value="PEMASUKAN" readonly>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="form-control btn btn-success" name="submit" value="Simpan">
                    </div>
                    </form>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php

    if (isset($_POST['submit'])) {
            if (tambahdataBMH($_POST) > 0){
                echo "
                <script>
                alert('Pemasukan Sudah Berhasil Di Tambah');
                document.location.href = 'KelolaPelaporan_BMH.php';
                </script>
                ";
            } else {
                echo "
                <script>
                alert('Pemasukan Tidak Berhasil Di Tambah');history.go(-1)
                // document.location.href = 'TambahData_BMH.php';            
                </script>
                ";
                echo("<br>");
                echo mysqli_error($koneksi);  
            }
        } 
    
?>

<?php
    include "template/footer.php";
?>