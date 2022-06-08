<?php

session_start();
if (!(isset($_SESSION['username']) && isset($_SESSION['password']))) {
    header('location:index.php');
    exit();
} else {
?>

<?php
session_start();
include "../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus admin
if ($module=='riwayat' AND $act=='hapus'){
	
  mysql_query("DELETE FROM keterangan WHERE id_keterangan='$_GET[id]'");
  // mysql_query("DELETE FROM hasil_konsultasi WHERE id_konsultasi='$GET[id]'");
  header('location:../../index.php?module='.$module);
}

elseif ($module=='riwayat' AND $act=='input'){
  $kode_gejala=$_POST[kode_gejala];
  $kode_penyakit=$_POST[kode_penyakit];
  $bobot=$_POST[bobot];
  mysql_query("INSERT INTO basis_pengetahuan(
              kode_gejala, kode_penyakit, bobot) 
                           VALUES(
              '$kode_gejala', '$kode_penyakit','$bobot')");
  header('location:../../index.php?module='.$module);
  }
?>
<?php } ?>