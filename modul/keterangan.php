<title>Daftar Penyakit</title>
<h2 class='text text-primary'>Daftar Penyakit</h2>
<hr>
<?php
include "config/fungsi_alert.php";
switch ($_GET[act]) {
// Tampil hasil
    default:
        $offset = $_GET['offset'];
//jumlah data yang ditampilkan perpage
        $limit = 12;
        if (empty($offset)) {
            $offset = 0;
        }

        $tampil = mysql_query("SELECT * FROM post ORDER BY kode_post");
        
        echo "<form method=POST action='?module=keterangan' name=text_form onsubmit='return Blank_TextField_Validator_Cari()'>
          <table class='table table-bordered'>
		            <tr><td><input type=text name='keyword' style='margin-left: 10px;' placeholder='Ketik dan tekan cari...' class='form-control' value='$_POST[keyword]' /> <input class='btn bg-olive margin' type=submit value='   Cari   ' name=Go></td> </tr>
          </table></form>";

		  	$baris=mysql_num_rows($tampil);



        if ($_POST[Go]){
          // echo "aaaa";

          $numrows = mysql_num_rows(mysql_query("SELECT * FROM post where nama_post like '%$_POST[keyword]%'"));
			  if ($numrows > 0){
				echo "<div class='alert alert-success alert-dismissible'>
                <h4><i class='icon fa fa-check'></i> Sukses!</h4>
                Penyakit yang anda cari di temukan.
              </div>";
				$i = 1;

        $hasil = mysql_query("SELECT * FROM post where nama_post like '%$_POST[keyword]%'");
       
        while ($r=mysql_fetch_array($hasil)){?>
        
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
                <div class="card text-center">
                  <img class="card-img-top img-bordered-sm" src="<?php echo 'gambar/' . $r['gambar']; ?>" alt="" width="100%" height="200">
                  <div class="card-block">
                    <h4 class="card-title"><h3 class="bg-keterangan"><?php echo $r['nama_post']; ?></h3>
                      <a class="btn bg-maroon btn-flat margin" href="#" data-toggle="modal" data-target="#modal<?php echo $r['kode_post']; ?>"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> Detail</a>
                      <!-- <a class="btn bg-olive btn-flat margin" href="#" data-toggle="modal" data-target="#modaltindakan<php echo $r['kode_post']; ?>"><i class="fa fa-quote-right" aria-hidden="true"></i> Saran</a> -->
                  </div>
                </div>
                <hr>
              </div>
        
              <!-- Modal -->
              <div class="modal fade" id="modal<?php echo $r['kode_post'];?>" role="dialog">
                <div class="modal-dialog">
        
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header detail-ket">
                      <button type="button" class="close" data-dismiss="modal" style="opacity: .99;color: #fff;">&times;</button>
                      <h4 class="modal-title text text-ket"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> Detail Untuk <?php echo $r[nama_post]; ?></h4>
                    </div>
                    <div class="modal-body" style="text-align: justify;text-justify: inter-word;">
                      <p><?php echo $r[det_post]; ?></p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                  </div>
        
                </div>
              </div>
           
         <?php }
       
            }
          else{

            echo "<div class='alert alert-danger alert-dismissible'>
                <h4><i class='icon fa fa-ban'></i> Gagal!</h4>
                Maaf, Penyakit yang anda cari tidak ditemukan , silahkan inputkan dengan benar dan cari kembali.
              </div>";
          }




        }
        
        
        
        else{
        // $baris = mysql_num_rows($tampil);
        if ($baris > 0) {
            
            $hasil = mysql_query("SELECT * FROM post ORDER BY kode_post limit $offset,$limit");
            while ($r = mysql_fetch_array($hasil)) {
            ?>

      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">
        <div class="card text-center">
          <img class="card-img-top img-bordered-sm" src="<?php echo 'gambar/' . $r['gambar']; ?>" alt="" width="100%" height="200">
          <div class="card-block">
            <h4 class="card-title"><h3 class="bg-keterangan"><?php echo $r['nama_post']; ?></h3>
              <a class="btn bg-maroon btn-flat margin" href="#" data-toggle="modal" data-target="#modal<?php echo $r['kode_post']; ?>"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> Detail</a>
              <!-- <a class="btn bg-olive btn-flat margin" href="#" data-toggle="modal" data-target="#modaltindakan<php echo $r['kode_post']; ?>"><i class="fa fa-quote-right" aria-hidden="true"></i> Saran</a> -->
          </div>
        </div>
        <hr>
      </div>

      <!-- Modal -->
      <div class="modal fade" id="modal<?php echo $r['kode_post'];?>" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header detail-ket">
              <button type="button" class="close" data-dismiss="modal" style="opacity: .99;color: #fff;">&times;</button>
              <h4 class="modal-title text text-ket"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> Detail Untuk <?php echo $r[nama_post]; ?></h4>
            </div>
            <div class="modal-body" style="text-align: justify;text-justify: inter-word;">
              <p><?php echo $r[det_post]; ?></p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>

        </div>
      </div>
      <?php }  ?>
      <!-- Modal -->
      <!-- <div class="modal fade" id="modaltindakan<php echo $r['kode_post'];?>" role="dialog">
        <div class="modal-dialog"> -->

          <!-- Modal content-->
          <!-- <div class="modal-content">
            <div class="modal-header saran-ket">
              <button type="button" class="close" data-dismiss="modal" style="opacity: .99;color: #fff;">&times;</button>
              <h4 class="modal-title text text-ket"><i class="fa fa-quote-right" aria-hidden="true"></i> Saran Untuk <php echo $r[nama_post]; ?></h4>
            </div>
            <div class="modal-body" style="text-align: justify;text-justify: inter-word;">
              <p><php echo $r[srn_post]; ?></p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>

        </div>
      </div> -->

      
            <?php
            echo "<div class='col-md-12'><div class='row'><div class=paging>";

            if ($offset != 0) {
                $prevoffset = $offset - $limit;
                echo "<span class=prevnext> <a href=index.php?module=keterangan&offset=$prevoffset>Back</a></span>";
            } else {
                echo "<span class=disabled>Back</span>"; //cetak halaman tanpa link
            }
//hitung jumlah halaman
            $halaman = intval($baris / $limit); //Pembulatan

            if ($baris % $limit) {
                $halaman++;
            }
            for ($i = 1; $i <= $halaman; $i++) {
                $newoffset = $limit * ($i - 1);
                if ($offset != $newoffset) {
                    echo "<a href=index.php?module=keterangan&offset=$newoffset>$i</a>";
//cetak halaman
                } else {
                    echo "<span class=current>" . $i . "</span>"; //cetak halaman tanpa link
                }
            }

//cek halaman akhir
            if (!(($offset / $limit) + 1 == $halaman) && $halaman != 1) {

//jika bukan halaman terakhir maka berikan next
                $newoffset = $offset + $limit;
                echo "<span class=prevnext><a href=index.php?module=keterangan&offset=$newoffset>Next</a>";
            } else {
                echo "<span class=disabled>Next</span>"; //cetak halaman tanpa link
            }

            echo "</div></div></div>";
        } else {
            echo "<br><b>Data Kosong !</b>";
        }
      }
}

?>

<script>
    $(function () {



      function legendFormatter(label, series) {
        return '<div class="text text-primary margin4">' + label + ' ' + Math.round(series.percent) + '%';
      };

      $.plot('#donut-chart', donutData, {
        series: {
          pie: {
            show: true,
            radius: 1,
            innerRadius: 0.3,
            label: {
              show: true,
              radius: 2/3,
              formatter: function (label, series) {
                return '<div class="badge bg-navy color-pallete">' + Math.round(series.percent) + '%</div>';
              },
              threshold: 0.01
            }

          }
        },
        legend: {
          show: true,
          container: $("#legend-container"),
          labelFormatter: legendFormatter,
        }
      })
      /*
       * END DONUT CHART
       */

    })

    /*
     * Custom Label formatter
     * ----------------------
     */
    function labelFormatter(label, series) {
      return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
              + label
              + '<br>'
              + Math.round(series.percent) + '%</div>'
    }
</script>




