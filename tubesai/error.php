<?php include 'header.php';  ?>
<br>
<script>
function myFunction() {
    window.print();
}
</script>
<div style="text-align: center;">
<h1>HASIL DIAGNOSA</h1><br>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
</div>
<div class="container col-6">
  <div class="input-group mb-3">
    <div class="input-group-prepend">
        <span class="input-group-text"><h5>KLASIFIKASI DESA&nbsp;&nbsp;&nbsp;&nbsp;</h5></span>
    </div>
    <textarea class="form-control" style="color:red;" rows="1"  readonly>Belum Diketahui</textarea>
  </div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text"><h5>INFO DESA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5></span>
  </div>
  <textarea class="form-control" style="color:red;" rows="6" readonly>
  Maaf, Tidak ditemukan info klasifikasi desa terkait ciri-ciri desa yang anda masukkan, Karena keterbatasan data kami.
  </textarea>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text"><h5>SARAN PELATIHAN&nbsp;&nbsp;</h5></span>
  </div>
  <textarea class="form-control" style="color:red;" rows="6"  readonly>
  Silahkan lakukan konsultasi kepada konsultan yang sudah disediakan.
  </textarea>
</div>
</div><br>

