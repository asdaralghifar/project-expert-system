<title>Detail Riwayat Diagnosa</title>

<?php
session_start();
if (!(isset($_SESSION['username']) && isset($_SESSION['password']))) {
    header('location:index.php');
    exit();
} else {
    ?>


<?php
include "config/fungsi_alert.php";
$aksi="modul/riwayat/aksi_riwayat.php";
switch($_GET[act]){
default:

if ($_GET['id']) {
  $hasil = mysql_query("SELECT * FROM hasil_konsultasi WHERE kode_gejala = '$_GET[id]'");
  $r=mysql_fetch_array($hasil);
  $kode_gejala=$r['kode_gejala'];
	$konsul=mysql_query("select * from gejala where kode_gejala='$kode_gejala'");
  $dp=mysql_fetch_array($konsul);

 
  echo "<form name=text_form method=POST action='$aksi?module=riwayat&act=input' onsubmit='return Blank_TextField_Validator()'>
  <table class='table table-bordered' style='overflow-x=auto' cellpadding='0' cellspacing='0'>
          <input type=hidden name='kode_gejala' id='kode_gejala' value='$dp[kode_gejala]'>
          <tr>
          <td>Gejala</td>
          <td><input autocomplete='off' type=text class='form-control' value='$dp[nama_gejala]' size=30 disabled/></td>    
          </tr>
          <tr><td width=120>Penyakit</td><td><select class='form-control' name='kode_penyakit'  id='kode_penyakit'><option value=''>- Pilih Penyakit -</option>";
          $hasil4 = mysql_query("SELECT * FROM penyakit order by kode_penyakit");
          $no=1;
          while($r4=mysql_fetch_array($hasil4)){
            echo "<option value='$r4[kode_penyakit]'>P$no&nbsp;&nbsp;|&nbsp;&nbsp;$r4[nama_penyakit]</option>";
            $no++;
          }
          echo "<tr>
          <td>Bobot</td> <td> <input autocomplete='off' placeholder='Masukkan Bobot' name='bobot' type=text class='form-control' size=30></td>    
          <tr><td></td><td><input class='btn btn-success' type=submit name=submit value='Simpan' >
		      <input class='btn btn-danger' type=button name=batal value='Batal' onclick=\"window.location.href='?module=riwayat';\"></td></tr>
        
        ";
        
        
      }
    }
    echo"    
    </table>
    </form>";
  // $hasil = mysql_query("SELECT * FROM hasil_konsultasi WHERE kode_gejala = '$_GET[id]'");
  // $r=mysql_fetch_array($hasil);
  // $kode_gejala=$r['kode_gejala']
	// $konsul=mysql_query("select * from gejala where kode_gejala='$kode_gejala'");
  // $dp=mysql_fetch_array($konsul);


  //   echo "<form name=text_form method=POST action='$aksi?module=admin&act=update' onsubmit='return Blank_TextField_Validator()'>
  //         <input type=hidden name=id value='$dp[kode_gejala]'>
  //         <br><br><table class='table table-bordered'>
	//       <tr><td>Gejala</td> <td>  <input autocomplete='off' type=text class='form-control' name='username' value=\"$dp[nama_gejala]\" size=30></td></tr>
        
  //       <tr><td></td><td>
	// 	  <input class='btn btn-success' type=submit name=submit value='Simpan' >
	// 	  <input class='btn btn-danger' type=button name=batal value='Batal' onclick=\"window.location.href='?module=admin';\"></td></tr>
  //         </table></form>";

}

  



?>