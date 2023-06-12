<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
	$qry='select id from tb_ciri where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	$rule=array(
		array("C007","C008","C009","C010","C011","C012"),
		array("C001","C002","C003","C005"),
		array("C003","C005","C006"),
		array("C004","C011","C012","C013"),
		array("C002","C003","C005", "C014"),
	);
	$status=false;
	for ($i=0; $i <count($rule) ; $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
	
	if($status==true){
		while ($d=mysqli_fetch_array($data)) {
			$id=$d['id'];
		}
		$cari_penyakit="select * from tb_klasifikasi where id=$id";
		$db=mysqli_query($kon,$cari_penyakit);
		while ($d=mysqli_fetch_array($db)) {
			$desa=$d['klasifikasi'];
			$info=$d['info'];
			$saran=$d['saran_pelatihan'];
			include 'hasil.php';
		}

	}else{
				include 'error.php';
	}
}
?>
