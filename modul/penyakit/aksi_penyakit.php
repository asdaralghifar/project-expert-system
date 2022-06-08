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

  $module = $_GET[module];
  $act = $_GET[act];

// Hapus penyakit
  if ($module == 'penyakit' AND $act == 'hapus') {
    mysql_query("DELETE FROM penyakit WHERE kode_penyakit='$_GET[id]'");
    header('location:../../index.php?module=' . $module);
  }

// Input penyakit
  elseif ($module == 'penyakit' AND $act == 'input') {
    $nama_penyakit = $_POST[nama_penyakit];
    $det_penyakit = $_POST[definisi];
    $srn_penyakit = $_POST[solusi];
    mysql_query("INSERT INTO penyakit(
			      nama_penyakit,definisi,solusi) 
	                       VALUES(
			'$nama_penyakit','$det_penyakit','$srn_penyakit')");

    header('location:../../index.php?module=' . $module);
  }

// Update penyakit
  elseif ($module == 'penyakit' AND $act == 'update') {
    $nama_penyakit = $_POST[nama_penyakit];
    $det_penyakit = $_POST[definisi];
    $srn_penyakit = $_POST[solusi]; 
      mysql_query("UPDATE penyakit SET
					nama_penyakit   = '$nama_penyakit',
					definisi   = '$det_penyakit',
					solusi   = '$srn_penyakit'
               WHERE kode_penyakit       = '$_POST[id]'");
    header('location:../../index.php?module=' . $module);
  }
  ?>
<?php } ?>