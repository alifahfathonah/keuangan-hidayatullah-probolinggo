  <?php
      $lokasi1 = "Pengeluaran";
      $lokasi2 = "Kelola Laporan KB - TK Al - Ihsan";
      $lokasi3 = "";
      $linklokasi2 = "";
      $linklokasi3 = "";

      include "../admin/template/header.php";   
      include "../admin/template/menu.php";
      include "../admin/template/lokasi.php";
      include "../admin/fungsi.php";

      ini_set('log_errors','On');
      ini_set('display_errors','Off');
      ini_set('error_reporting', E_ALL );
      define('WP_DEBUG', false);
      define('WP_DEBUG_LOG', true);
      define('WP_DEBUG_DISPLAY', false);

      $jumlah1 = mysqli_query($koneksi,"SELECT SUM(kd_jumlah)  from db_data_input 
      WHERE id_usaha = 'DTU001'AND id_pp = 1
      ");
      // menghitung data barang
      $jumlah_barang = mysqli_num_rows($jumlah1);
      

      $db_data  = query("SELECT a.id_data_output, b.nama_pengeluaran, SUM(a.kd_jumlah) AS totalkeseluruhan,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Januari', a.kd_jumlah, NULL))) AS bulan1,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Februari', a.kd_jumlah, NULL))) AS bulan2,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Maret', a.kd_jumlah, NULL))) AS bulan3,
      ROUND(SUM(IF(c.kd_nama_bulan = 'April', a.kd_jumlah, NULL))) AS bulan4,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Mei', a.kd_jumlah, NULL))) AS bulan5,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Juni', a.kd_jumlah, NULL))) AS bulan6,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Juli', a.kd_jumlah, NULL))) AS bulan7,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Agustus', a.kd_jumlah, NULL))) AS bulan8,
      ROUND(SUM(IF(c.kd_nama_bulan = 'September', a.kd_jumlah, NULL))) AS bulan9,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Oktober', a.kd_jumlah, NULL))) AS bulan10,
      ROUND(SUM(IF(c.kd_nama_bulan = 'November', a.kd_jumlah, NULL))) AS bulan11,
      ROUND(SUM(IF(c.kd_nama_bulan = 'Desember', a.kd_jumlah, NULL))) AS bulan12,

      ROUND(SUM(IF(a.id_kategori = 'KAT001', a.kd_jumlah, NULL))) AS jumlah1,
      ROUND(SUM(IF(a.id_kategori = 'KAT014', a.kd_jumlah, NULL))) AS jumlah2,
      ROUND(SUM(IF(a.id_kategori = 'KAT003', a.kd_jumlah, NULL))) AS jumlah3
      
      
      FROM db_data_output a
      INNER JOIN db_bulan c ON a.id_bulan = c.id_bulan
      INNER JOIN db_kategori_pengeluaran b ON a.id_kategori = b.id_kategori
      WHERE a.id_usaha = 'DTU001' AND a.id_pp = 2
      
      GROUP BY b.nama_pengeluaran ASC"
      ); 


  ?>

  <?php
      $hasil1=mysqli_query($koneksi,"SELECT * FROM db_data_output where id_usaha = 'DTU001'");
      while ($jumlah1=mysqli_fetch_array($hasil1)){
      $arrayhasil1[] = $jumlah1['kd_jumlah'];
      }
      $jumlahhasil1 = array_sum($arrayhasil1);
  ?>

  <div class="container-fluid">
      <div class="col-12 col-s-12">
          <h2 align="center">Transaksi Pengeluaran KB - TK Al - Ihsan</h2>
          <h2 align="center">Hidayatullah Probolinggo</h2>
          <br>

      </div>
      <div class="row justify-content-center">
          <div class="col-sm-12 col-lg-12 ">
              <a href="EditData_pengeluaranTK.php" class="btn btn-primary mb-4"><i class="nav-icon fa fa-database"></i> Detail Transaksi</a>
              <a href="Unduh_laporanpengeluaranTK.php" class="btn btn-primary mb-4"><i class="nav-icon fa fa-print"></i> Unduh Laporan</a>
        </div> 
    </div>
        
              <br>
              <div style="overflow-x:auto;">
              <table class="table table-striped table-hover table-bordered table-align-middle" id="data"style="width:100%">
                  <thead >

                  
                      <tr align="center">
                          <th rowspan="2">No</th>
                          <th rowspan="2" width="200px">Kategori</th>
                          <th colspan="12" width="110px">Bulan</th>  
                          <th rowspan="2" width="200px">Total 1 Tahun</th>

                           
                      </tr>

                      </tr>
                        <tr align="center">
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th>4</th>
                        <th>5</th>
                        <th>6</th>
                        <th>7</th>
                        <th>8</th>
                        <th>9</th>
                        <th>10</th>
                        <th>11</th>
                        <th>12</th>
                      </tr>
                      


                  </thead>
                  <tbody>
                      <?php
                      $i = 1;
                      foreach ($db_data as $data) {
                          ?>
                  <tr align="center">
                      <td><?=$i++?>.</td>
                      <td><?=$data['nama_pengeluaran']?></td>
                      <td> <?=number_format($data['bulan1'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan2'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan3'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan4'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan5'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan6'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan7'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan8'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan9'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan10'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan11'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['bulan12'], 0, ",", ".")?></td>
                      <td> <?=number_format($data['totalkeseluruhan'], 0, ",", ".")?></td>


                      </tr>

                      <?php } ?>
                      <!-- <td colspan = "15"></td> -->
                      <tr align="center">                      
                      <td colspan="2">TOTAL KESELURUHAN</td>
                      <td colspan="13"><?php echo number_format($jumlahhasil1,2,',','.') ?></span></td>

                      
                      
                  </tbody>
                  </table>
                  </div>
              </div>
          </div>
          <br>


      </div>
      



      


<script>
    function setCetakAction() {
        if(confirm("Apakah Anda Ingin Mencetak / Print Laporan Data Ini ???")) {
        document.frmUser.action = "CetakLaporan.php";
        document.frmUser.submit();
        }
    }
</script>

<script>
    function setUnduhAction() {
        if(confirm("Apakah Anda Ingin Mengunduh Laporan Bulan ini ???")) {
        document.frmUser.action = "Unduh_laporan.php";
        document.frmUser.submit();
        }
    }
</script>

<?php
      include "template/footer.php";
  ?>