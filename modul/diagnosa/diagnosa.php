<title>Diagnosa</title>
<head>
    <link href='../css/bootstrap.min.css' rel='stylesheet' media='screen'>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$("#TxtNama").focus();
	})
function validasi(form){
	if(form.TxtNama.value==""){
		alert("Masukkan nama !");
		form.TxtNama.focus(); return false;
		}else if(form.cbojk.value==0){
		alert("Masukkan jenis kelamin !");
		form.cbojk.focus(); return false;	
		}else if(form.TxtUmur.value==""){
			alert("Masukkan umur anda !");
			form.TxtUmur.focus(); return false;
			}
		form.submit();
	}
</script>
<?php

switch ($_GET['act']) {
    default:
    if ($_POST['Daftar']){
       
        include "../config/koneksi.php";
        $TxtNama 	= $_REQUEST['TxtNama'];
        $RbKelamin 	= $_POST['cbojk'];
        $TxtUmur	= $_REQUEST['TxtUmur'];
        $NOIP = $_SERVER['REMOTE_ADDR'];
            $sqldel = "DELETE FROM tmp_pasien WHERE noip='$NOIP'";	
            mysql_query($sqldel);
            
            $sql  = " INSERT INTO tmp_pasien (nama,kelamin,umur,noip,tanggal) 
                       VALUES ('$TxtNama','$RbKelamin','$TxtUmur','$NOIP',NOW())";
            mysql_query($sql) 
                  or die ("SQL Error 2".mysql_error());
                  
            $sql2  = " INSERT INTO user (nama, kelamin, umur, tgl_konsultasi) 
                    VALUES ('$TxtNama','$RbKelamin','$TxtUmur',NOW())";
            mysql_query($sql2) 
             or die ("SQL Error 2".mysql_error());

             if($sql2){
                                    
                $s = mysql_query("select * from user order by id_user desc") or die(mysql_error());
                $r = mysql_fetch_array($s);
                $_SESSION['nama']	= "$r[nama]";
                $_SESSION['id']		= "$r[id_user]";
                // echo "<script language=javascript>
                //         window.location='diagnosa?id=$_SESSION[id]';
                //         </script>";
                // exit;
            }
        
    echo "<div class='content'>
    <h2 class='text text-primary'>Diagnosa Penyakit</h2>  <hr>
    <div class='alert alert-warning alert-dismissible'>
        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
            <h4><i class='icon fa fa-exclamation-triangle'></i>Perhatian !</h4>
            Silahkan memilih gejala minimal 3 gejala sesuai dengan kondisi kulit anda, jika sudah tekan tombol lakukan diagnosis di bawah untuk melihat hasil diagnosa.
</div>
<body>	  
    <form  method='post' name='form' action=''>      
    <table class='table table-condensed table-hover'>";
    
        $hasil = mysql_query("SELECT * FROM gejala ORDER BY kode_gejala");
        while ($row = mysql_fetch_array($hasil))
            {
                echo 
                    
                    "<tr>
                    <td class='text-center' width='2%'><input type='checkbox' name='gejala[]' id='gejala' value='$row[kode_gejala]'></td>
                    <td class='text-left text-error' width='98%'>$row[nama_gejala]</td>		
                    </tr>";
                    
            }
    echo "</table>
        ";
    echo "<div>
        <input type='submit' class='btn btn-success' name='submit' value='Lakukan Diagnosa'>
        <input type='reset' class='btn btn-danger' value='Reset'>
    </div>
</form>";
}

else if ($_POST['submit'])
    {
        if(isset($_POST['submit'])){
            $jumlah = count($_POST['gejala']);
            if($jumlah < 3){
                echo "<script language=javascript>
                        alert('Silahkan pilih gejala minimal 3 gejala. Mohon diulangi kembali dari mengisi Data Diri Anda!');
                        window.location='diagnosa'</script>";
            }
            else{
                    $id=$_SESSION['id'];
                    $sk = mysql_query("select * from hasil_konsultasi group by waktu desc limit 1");
                    $dk = mysql_fetch_array($sk);
                    $k=$dk['konsultasi'];
                    $konsultasi=$k+1;
                        for($i=0; $i < $jumlah; $i++){
                            $gejala = $_POST["gejala"][$i];
                            
                            $sb = mysql_query("select * from gejala where kode_gejala=$gejala");
                            $rb = mysql_fetch_array($sb);
                            
                            $q=mysql_query("insert into hasil_konsultasi(id_user, konsultasi, kode_gejala, waktu) VALUE
                            ('$id', $konsultasi, '$gejala', NOW())") or die(mysql_error());
                            
                        }                            
                          
        ob_start();
                
        // mengambil variabel
        $gejala 	= '';
        $events 	= '';
        if (isset($_POST['gejala']))
        {
            $selectors 	= htmlentities(implode(',', $_POST['gejala']));
            
        }
        $data=$selectors;
        
        $input = $data;
            
            $pecah = explode("\r\n\r\n", $input);
            
            $text = "";
            
            for ($i=0; $i<=count($pecah)-1; $i++)
            {
                $part = str_replace($pecah[$i], "<p>".$pecah[$i]."</p>", $pecah[$i]);
                $text .=$part;
            }
            //menampilkan outputnya
        
        $kosongtabel=mysql_query("DELETE FROM tmp_gejala");
        $text_line=$data;
        $text_line =$data; 
        $text_line = explode(",",$text_line);
        $posisi=0;
        for ($start=0; $start < count($text_line); $start++) {
            $baris=$text_line[$start]; //echo "$baris<br>";
            // untuk nilai bobot	
            //$bobot=substr($databobot,$posisi,1); echo $bobot. "<br>";
            $sql="INSERT INTO tmp_gejala (kode_gejala) VALUES ('$baris')";
            $query=mysql_query($sql) or die(mysql_error($koneksi));
            $posisi++;
        }
        ob_start();        
    // kosongkan tabel tmp_penyakit
    $sql1 = "DELETE FROM tmp_penyakit";
    $kosong_tmp_penyakit=mysql_query($sql1);

   //metode cbr dan algortima sorense coefficient
    echo "<h3>Hasil Diagnosa</h3><hr>";
    $sqlpenyakit="SELECT * FROM basis_pengetahuan GROUP BY kode_penyakit ";
    $querypenyakit=mysql_query($sqlpenyakit);
    $Similarity=0;
    echo"<div style='display:none;'>";
    
    while($rowpenyakit=mysql_fetch_array($querypenyakit)){

        $kd_pen=$rowpenyakit['kode_penyakit'];
        echo "<hr>".$kd_pen."<hr>".PHP_EOL."<br>";

        //mengambil gejala di tabel relasi
        $query_gejala=mysql_query("SELECT * FROM basis_pengetahuan WHERE kode_penyakit='$kd_pen'");
        $var1=0; $var2=0; $var3=0;
        $querySUM=mysql_query("select sum(bobot)AS jumlahbobot from basis_pengetahuan where kode_penyakit='$kd_pen'");
        $resSUM=mysql_fetch_array($querySUM);
        // echo $resSUM['jumlahbobot'] ."<br>";
        $SUMbobot=$resSUM['jumlahbobot'];
        $bobot = 2*$SUMbobot;
	    while($row_gejala=mysql_fetch_array($query_gejala)){

            // kode gejala di tabel relasi
            $kode_gejala_relasi=$row_gejala['kode_gejala'];
            $bobotRelasi=$row_gejala['bobot'];
            echo "bobot relasi=". $bobotRelasi."<br>";
            // echo"<p>";

            // mencari data di tabel tmp_gejala dan membandingkannya
            $query_tmp_gejala=mysql_query("SELECT * FROM tmp_gejala WHERE kode_gejala='$kode_gejala_relasi'");
            $row_tmp_gejala=mysql_fetch_array($query_tmp_gejala);

            // Mengecek apakah ada data di tabel tmp_gejala
            $adadata=mysql_num_rows($query_tmp_gejala);
                if($adadata!==0){
                    echo "Ada data<br>";
                    $bobotNilai=$bobotRelasi*2; echo "Nilai bobot hasil kali 2 = ".$bobotNilai."<br>";
                    $HasilKalidua;
                    $var1=$bobotNilai/$bobot; echo "Nilai Jika 1=". $var1;
                    
                    $var3 = $var3+$var1;

                    }
                else{
                    echo "Tidak ada data<br>";
                    $bobotNilai=$bobotRelasi*0; 
                    $var2=$bobotNilai+$bobotNilai; echo "Nilai Jika 0=". $var2;
                    }
                    $Nilai_tmp_gejala=$var1+$var2; 
                    
            echo "</p>";	

            }
            echo "Similaritas : ".$var3."<br>";


        // input data ke tabel tmp_penyakit		
        $query_tmp_penyakit=mysql_query("INSERT INTO tmp_penyakit(kode_penyakit,nilai) VALUES ('$kd_pen','$var3')");

        $nilaiMax = mysql_query("SELECT kd_penyakit,MAX(nilai)  AS NilaiAkhir FROM tmp_penyakit GROUP BY nilai  ORDER BY nilai ASC ");

        $nilaiMin=mysql_query("SELECT kd_penyakit,MAX(nilai)  AS NilaiAkhir FROM tmp_penyakit GROUP BY nilai  ORDER BY nilai DESC ");
        $rowMax=mysql_fetch_array($nilaiMax);
        // $max=$rowMax['NilaiAkhir']; echo $max;

        // echo $rowMax['kd_penyakit']. "<br>";
        $penyakitakhir=$rowMax['kode_penyakit'];
        // echo "<input type='hidden' value='$rowMax[kd_penyakit]'><br>";


        $sql_pilih_penyakit=mysql_query("SELECT * FROM penyakit_solusi WHERE kode_penyakit='$penyakitakhir'");
        $row_hasil=mysql_fetch_array($sql_pilih_penyakit);
        $kd_penyakit=$row_hasil['kode_penyakit'];
        $penyakit=$row_hasil['nama_penyakit'];
        $keterangan_penyakit=$row_hasil['definisi'];
        $solusi=$row_hasil['solusi'];
        }
        echo "</div>";?>


    <td ><strong  style="color:#C60;">Data Pasien:</strong><br>   
<?php
    $query_pasien=mysql_query("SELECT * FROM tmp_pasien ORDER BY id DESC");
	$data_pasien=mysql_fetch_array($query_pasien);
	echo "Nama : ". $data_pasien['nama'] . "<br>";
	echo "Jenis Kelamin : ". $data_pasien['kelamin']. "<br>";
	echo "Umur : ". $data_pasien['umur']. " Tahun <br>";
    echo "Waktu Diagnosa : ". $data_pasien['tanggal']. "<hr>";

    echo "<td ><strong  style=color:#C60;>Gejala yang anda alami:</strong><br>";
	$query_gejala_input=mysql_query("SELECT gejala.nama_gejala AS namagejala,tmp_gejala.kode_gejala FROM gejala,tmp_gejala WHERE tmp_gejala.kode_gejala=gejala.kode_gejala");
	$nogejala=0;
	while($row_gejala_input=mysql_fetch_array($query_gejala_input)){
		$nogejala++;
		echo $nogejala. ".". $row_gejala_input['namagejala']. "<br>";
		}  
?>




        <!-- Persentasi Penyakit -->
        <hr><td><strong  style="color:#C60;">Persentase Setiap Penyakit :</strong><br>
        <?php

        //mencari persen
        $query_nilai=mysql_query("SELECT SUM(nilai) as nilaiSum FROM tmp_penyakit");
        $rowSUM=mysql_fetch_array($query_nilai);
        $nilaiTotal=$rowSUM['nilaiSum'];
        // echo $nilaiTotal."<br>";

        $query_sum_tmp=mysql_query("SELECT * FROM tmp_penyakit  ORDER BY nilai DESC LIMIT 0,2");
        while($row_sumtmp=mysql_fetch_array($query_sum_tmp)){
            $nilai=$row_sumtmp['nilai'];
            $nilai_persen=$nilai;
            $data_persen=$nilai_persen*100;
            $persen=substr($data_persen,0,5);
            // echo $persen."<br>";
            $kd_pen2=$row_sumtmp['kode_penyakit'];

            $query_penyasol=mysql_query("SELECT * FROM penyakit WHERE kode_penyakit='$kd_pen2'");
            while ($row_penyasol=mysql_fetch_array($query_penyasol)){
                        echo "Persentase Anda Menderita Penyakit ". $row_penyasol['nama_penyakit']. " Sebesar ". $persen."%". "<br>";

                        
                }
            }//end while
            echo "<hr>";

            $query_kesimpulan_akhir=mysql_query("SELECT * FROM tmp_penyakit  ORDER BY nilai DESC LIMIT 0,1");
            while($row_sumtmp=mysql_fetch_array($query_kesimpulan_akhir)){
                $nilai=$row_sumtmp['nilai'];
                $nilai_persen=$nilai;
                $data_persen=$nilai_persen*100;
                $persen=substr($data_persen,0,5);
                $kd_pen2=$row_sumtmp['kode_penyakit'];

                $query_penyasol=mysql_query("SELECT * FROM penyakit WHERE kode_penyakit='$kd_pen2'");
                while ($row_penyasol=mysql_fetch_array($query_penyasol)){
                //Kesimpulan
                
                ?>
                    <strong style="color:#C60;">Hasil Diagnosa :</strong><br />
                    <?php
                    echo "<p>"."<strong>Dilihat dari hasil persentase setiap penyakit yang tertera, anda terjangkit penyakit ".$row_penyasol['nama_penyakit']." sebesar ".$persen." % </p></strong>";
                    echo "<p><strong style=color:#C60>Catatan:</strong> Hasil diagnosa dengan persentase diatas 70% memiliki tingkat kepercayaan
                    yang tinggi atau akurat. Persentase hasil diagnosa antara 69% sampai dengan 50% memiliki tingkat kepercayaan yang tidak terlalu
                    besar. Hasil diagnosa dengan persentase di bawah 50% dianggap tidak terlalu akurat.</p><hr>";
                    echo "<p>"."<strong style=color:#C60> Penjelasan Penyakit :</strong><br> ".$row_penyasol['definisi']."</p><hr>";
                    echo "<p>"."<strong style=color:#C60>Solusi Pengobatan :</strong><br> ".$row_penyasol['solusi']."</p><hr>";
                    echo "<p>Untuk pengobatan lebih lanjut silahkan hubungi kami di nomor <a href ='https://wa.me/+628114407500' target='_blank'>08114407500 (dr. Fadli)</a> atau datang langsung ke 
                    <a href='https://www.google.co.id/maps/place/Apotek+Robusta+Farma/@-4.1781763,121.6100485,17z/data=!3m1!4b1!4m5!3m4!1s0x2d97f9bc2ab98d49:0x3f28425881017901!8m2!3d-4.1781604!4d121.6122168' target='_blank'>
                    Klinik Robusta Farma, Jalan Protokol, Kelurahan Dawi-Dawi, Kecematan Pomalaa, Kabupaten Kolaka, Provinsi Sulawesi Tenggara.</a></p>";
                
                    $spas =  mysql_query("select * from user where id_user='$id'") or die(mysql_error());
                    $dpas = mysql_fetch_array($spas);
    
                    $ket = mysql_query("insert into keterangan (id_konsultasi, nama, tgl_konsultasi, nilai, kode_penyakit) 
                    values ('$konsultasi', '$dpas[nama]', NOW(), '$persen', '$row_penyasol[kode_penyakit]')");
                
                }
            }
        }
    }
}

else{   ?> 
    
<div class='content'>
    <h2 class='text text-primary'>Data Pasien</h2>  <hr>
    <div class='alert alert-warning alert-dismissible'>
        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
            <h4><i class='icon fa fa-exclamation-triangle'></i>Perhatian !</h4>
            Silahkan isi data anda dengan benar.
    </div>
<form onSubmit="return validasi(this)" method="post" name="form1" target="_self" action="">
<table class='table table-bordered'>		  
	<tr><td width=120>Nama</td><td><input name="TxtNama" id="TxtNama" type=text autocomplete='off' placeholder='Masukkan nama lengkap anda...' class='form-control' size=30></td></tr>
    <tr> 
      <td>Kelamin</td>
      <td> 
      <select name="cbojk" id="cbojk" class= 'form-control'>
            <option value="0" selected="selected">- Jenis Kelamin -</option>
            <option value="Laki-laki">Laki-laki</option>
            <option value="Wanita">Wanita</option>
      </select>
      </td>
    </tr>
    <tr><td width=120>Umur</td><td><input name="TxtUmur" id="TxtUmur" type=text autocomplete='off' placeholder='Masukkan umur anda...' class='form-control' size=30></td></tr>
    <tr><td></td><td><input class='btn btn-success' type='submit' name='Daftar' value='Next' >
	<input class='btn btn-danger' type=reset name=batal value='Reset'></td></tr>    
</table>
</form>
<?php
        }
        break;
    }
?>








