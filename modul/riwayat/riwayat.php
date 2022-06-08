<title>Riwayat Konsultasi</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="/../icon" href="sp.png">
    <link href="css/font-awesome-4.2.0/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/owl-carousel/owl.carousel.css" rel="stylesheet"  media="all">
    <link href="css/owl-carousel/owl.theme.css" rel="stylesheet"  media="all">
    <link href="css/magnific-popup.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/font.css" rel="stylesheet" type="text/css"  media="all">
    <link href="css/fontello.css" rel="stylesheet" type="text/css"  media="all">
    <link href="css/main.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/paging.css" type="text/css" media="screen">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="aset/bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="aset/AdminLTE.css">
  <link rel="stylesheet" href="aset/cinta.css">
    <link rel="stylesheet" href="aset/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="aset/skins/_all-skins.min.css">
    <link rel="stylesheet" href="aset/custom.css">
    <link rel="stylesheet" href="aset/icheck/green.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <!-- jQuery 2.1.4 -->
    <script src="aset/jQuery-2.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="aset/bootstrap.js"></script>
    <script src="aset/icheck/icheck.js"></script>
    <script src="aset/ckeditor/ckeditor.js"></script>
    <script src="aset/Flot/jquery.flot.js"></script>
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <script src="aset/Flot/jquery.flot.resize.js"></script>
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <script src="aset/Flot/jquery.flot.pie.js"></script>
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <script src="aset/Flot/jquery.flot.categories.js"></script> 
    <!-- AdminLTE App -->
    <script src="aset/app.js"></script>

<?php
session_start();
if (!(isset($_SESSION['username']) && isset($_SESSION['password']))) {
    header('location:index.php');
    exit();
} else {
    ?>
<script Language="JavaScript">

function Blank_TextField_Validator()
{
if (text_form.username.value == "")
{
   alert("Username tidak boleh kosong !");
   text_form.username.focus();
   return (false);
}
if (text_form.password.value == "")
{
   alert("Password tidak boleh kosong !");
   text_form.password.focus();
   return (false);
}
return (true);
}
function Blank_TextField_Validator_Cari()
{
if (text_form.keyword.value == "")
{
   alert("Isi dulu keyword pencarian !");
   text_form.keyword.focus();
   return (false);
}
return (true);
}
</script>

<?php
include "config/fungsi_alert.php";
$aksi="modul/riwayat/aksi_riwayat.php";
switch($_GET[act]){
	// Tampil admin
  default:
  $offset=$_GET['offset'];
	//jumlah data yang ditampilkan perpage
	$limit = 10;
	if (empty ($offset)) {
		$offset = 0;
	}
  $tampil=mysql_query("SELECT * FROM keterangan ORDER BY id_keterangan");
	$baris=mysql_num_rows($tampil);
	echo "<div class='content'>
    
    <div class='alert alert-warning alert-dismissible'>
        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
            <h4><i class='icon fa fa-exclamation-triangle'></i>Perhatian !</h4>
            Silahkan Dokter/Pakar melakukan evaluasi terhadap kasus baru seminggu sekali.
</div>";

  if($baris>0){

	echo" <form  method='post' name='form' action=''>  
    <table class='table table-bordered' style='overflow-x=auto' cellpadding='0' cellspacing='0'>
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Pasien</th>
              <th>Waktu Konsultasi</th>
              <th>Nama Penyakit</th>
              <th>Gejala</th>
              <th width='21%'>Aksi</th>
            </tr>
          </thead>
		  <tbody>
		  "; 
	$hasil = mysql_query("SELECT * FROM keterangan ORDER BY id_keterangan limit $offset,$limit");
	$no = 1;
	$no = 1 + $offset;
	$counter = 1;
  
    while ($r=mysql_fetch_array($hasil)){

    $kode_penyakit=$r['kode_penyakit'];
    $sp=mysql_query("select * from penyakit where kode_penyakit='$kode_penyakit'");
  	$dp=mysql_fetch_array($sp);
    $id_konsultasi=$r['id_konsultasi'];



	if ($counter % 2 == 0) $warna = "dark";
	else $warna = "light";
       echo "<tr class='".$warna."'>
			 <td align=center>$no</td>
	         <td>$r[nama]</td>
	         <td>$r[tgl_konsultasi]</td>
           <td>$dp[nama_penyakit]&nbsp;($r[nilai]%)</td>
           
           <td>";
             $sh = mysql_query("select * from hasil_konsultasi where konsultasi='$id_konsultasi'");
             while($dh = mysql_fetch_array($sh)){
               $sg = mysql_query("select * from gejala where kode_gejala='$dh[kode_gejala]'");
               $dg = mysql_fetch_array($sg);
               echo "&raquo; $dg[nama_gejala]<br>";
             }
         echo"</td>
			 
         <td align=center>
            <a type='button' class='btn btn-success margin' href=riwayat/editriwayat/$r[id_konsultasi]><i class='fa fa-pencil-square-o' aria-hidden='true'></i> Detail </a> &nbsp;
	          <a type='button' class='btn btn-danger margin' href=\"JavaScript: confirmIt('Anda yakin akan menghapusnya ?','$aksi?module=riwayat&act=hapus&id=$r[id_keterangan]','','','','u','n','Self','Self')\" onMouseOver=\"self.status=''; return true\" onMouseOut=\"self.status=''; return true\"><i class='fa fa-trash-o' aria-hidden='true'></i> Hapus</a>
            </td>
            </tr>";   
      $no++;
	  $counter++;
    }
  
    
    echo "
    </tbody></table></form>";


	echo "<div class=paging>";
	if ($offset!=0) {
		$prevoffset = $offset-10;
		echo "<span class=prevnext> <a href=index.php?module=riwayat&offset=$prevoffset>Back</a></span>";
	}
	else {
		echo "<span class=disabled>Back</span>";//cetak halaman tanpa link
	}
	//hitung jumlah halaman
	$halaman = intval($baris/$limit);//Pembulatan

	if ($baris%$limit){
		$halaman++;
	}
	for($i=1;$i<=$halaman;$i++){
		$newoffset = $limit * ($i-1);
		if($offset!=$newoffset){
			echo "<a href=index.php?module=riwayat&offset=$newoffset>$i</a>";
			//cetak halaman
		}
		else {
			echo "<span class=current>".$i."</span>";//cetak halaman tanpa link
		}
	}

	//cek halaman akhir
	if(!(($offset/$limit)+1==$halaman) && $halaman !=1){

		//jika bukan halaman terakhir maka berikan next
		$newoffset = $offset + $limit;
		echo "<span class=prevnext><a href=index.php?module=riwayat&offset=$newoffset>Next</a>";
	}
	else {
		echo "<span class=disabled>Next</span>";//cetak halaman tanpa link
	}
	
	echo "</div>";
	}

  else{
	echo "<br><b>Data Kosong !</b>";
	}  
break;

case "editriwayat":
  echo "<form  method='post' name='form' action=''>  
  <table class='table table-bordered' style='overflow-x=auto' cellpadding='0' cellspacing='0'>
        <thead>
          <tr>
            <th>No</th>
            <th>Gejala</th>
            <th width='21%'>Aksi</th>
          </tr>
        </thead>
        <tbody>";
        $hasil = mysql_query("SELECT * FROM keterangan WHERE id_konsultasi = '$_GET[id]'");
        $no=1;
        while ($r=mysql_fetch_array($hasil)){

          $id_konsultasi=$r['id_konsultasi'];
          $konsul=mysql_query("select * from hasil_konsultasi where konsultasi='$id_konsultasi'");
          while ($dp=mysql_fetch_array($konsul)){
            
              $k1=$dp['kode_gejala'];
              $konsul2=mysql_query("select * from gejala where kode_gejala='$k1'");
              while ($x=mysql_fetch_array($konsul2)){

              echo "<td>$no</td>
              <td>$x[nama_gejala]</td>
              <td width='21%'>
              <a type='button' class='btn btn-success margin' href=riwayat-detail/$x[kode_gejala]><i class='fa fa-pencil-square-o' aria-hidden='true'></i> Send </a> &nbsp;
              </td>
        <tbody>";
        $no++;
        }
      }
    }
    echo"    
    </table>
    </form>";

  
  break;  
}  
?>
<?php 
} ?>
