<!DOCTYPE html>
<html>
<head>
<title>KBTI2021</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/w3.css">
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src="assets/w3.js"></script>
</head>
<body class="w3-light-gray">


<br>
<div class="w3-container w3-light-gray">
	<div class="w3-row">
    	<div class="w3-col l1">&nbsp;</div>
        <div class="w3-col l10 w3-white">
        	<div class="w3-container"><br>
            	<div class="w3-row">
                	<div class="w3-col l12 w3-center">
                    	<div class="w3-xlarge">APLIKASI SISTEM PAKAR</div>
                        <div class="w3-large"><strong>DIAGNOSIS PENYAKIT GIGI</strong></div>
                        <div class="w3-small" style="margin-top:3px;">MENGGUNAKAN METODE <strong>FUZZY MAMDANI</strong></div>
                    </div>
                    
                </div>
                <hr>
            </div>
            
            <div class="w3-container">
            	<div class="w3-row">
                	<div class="w3-col l3">
                    	<div>
                        	<ul class="w3-ul w3-hoverable w3-border">
  <a href="index.php" style="text-decoration:none"><li style="border-bottom:1px solid #DDD;"><i class="fa fa-home fa-fw"></i> Beranda</li></a>
  
  <a href="diagnosa_create.php" style="text-decoration:none"><li style="border-bottom:1px solid #DDD;"><i class="fa fa-book fa-fw"></i> Diagnosa</li></a>
  
  <a href="penyakit_read.php" style="text-decoration:none"><li style="border-bottom:1px solid #DDD;"><i class="fa fa-book fa-fw"></i> Daftar Penyakit</li></a>
  
  <a href="informasi_read.php" style="text-decoration:none"><li style="border-bottom:1px solid #DDD;"><i class="fa fa-book fa-fw"></i> Seputar Gigi</li></a>
  
  
</ul>
                        </div>
                    </div>
                    <div class="w3-col l9" style="padding-left:8px;">
                    	<div class="w3-border w3-padding">
                        <div class="w3-border-bottom" style="padding-bottom:10px; margin-top:8px;"><strong><i class="fa fa-book"></i> DAFTAR PENYAKIT</strong></div>
                        <ul class="w3-ul w3-border" style="margin-top:8px;">
                        <?php
  	include "koneksi.php"; 
	$sql = "SELECT * FROM penyakit ORDER BY kd_penyakit";
	$qry = mysqli_query($koneksi, $sql) or die ("SQL Error".mysqli_error());
	$no=0;
	while ($data=mysqli_fetch_array($qry)) {
	$no++;
  ?>
  <li><?php echo "<h3><em>$data[nama_penyakit]</em></h3>"; ?>
  <div class="w3-small w3-justify"><?php echo "$data[definisi]";?></div>
  <div class="w3-small w3-justify" style="margin-top:8px;"><strong>SOLUSI :</strong> <?php echo "$data[solusi]";?></div></li>

  <?php
  }
  ?>
  </ul>
                        
                        </div>
                    
                    </div>
                </div>
            </div><br>

        </div>
        <div class="w3-col l1">&nbsp;</div>
    </div>
</div><br>
<br>
<div class="w3-center w3-small">Copyright @ 2021 <strong>Sistem Pakar Penyakit Gigi</strong><br>
All Right Reserved</div>
<br>

	
</body>
</html>