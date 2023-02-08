<?php
require '../functions.php';
$sql = mysqli_query($conn, "SELECT * FROM web WHERE id_web = '1'");
$row = mysqli_fetch_assoc($sql);
?>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<title>Admin</title>
<style>
      .jumbotron {
        background-image: url(../img/web/<?=$row['img1'];?>);
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
        text-align: left;
        height: 540px;
        position: relative;
        }
</style>
</head>
  <body>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v3.3"></script>
    <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand" href="web_img1.php">Padmanaba</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
              <a class="nav-item nav-link active">Activities</a>
              <a class="nav-item nav-link">Videos</a>
              <a class="nav-item nav-link">Pictures</a>
              <a class="nav-item nav-link">Alumni</a>
              <a class="nav-item nav-link">About</a>
            </div>
          </div>
        </div>
      </nav>
    <!-- akhir navbar -->
    <!-- Jumbotron -->
    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <h1 class="display-4">Tan Lalana</h1>
        <a class="btn btn-primary tombol">Our Story</a>
          
      </div>
    </div>
    <!-- akhir Jumbotron -->
    <!-- Container -->
    <div class="container">
      <!-- info panel -->
    <div class="row justify-content-center">
      <div class="col-10 info-panel">
        <div class="row" align="center">
          <!-- <div class="col-lg ">
            <img src="../img/web/<?=$row['img3'];?>">
            <h4>Kelas XII</h4>
          </div> -->
          <div class="col-lg">
             <?php 
              if(empty($row['vid4'])){;?>
              <img src="../img/nv.jpg" width="150px">
              <?php }else{
                 if(preg_match("/youtube/", $row['vid4'])) {;?>
                    <div class="embed-responsive embed-responsive-16by9">
                      <?=$row['vid4'];?>
                    </div>
                  <?php } else {echo $row['vid4'];}
              } ?>
            <h4>Kelas XI</h4>
          </div>
          <!-- <div class="col-lg">
            <img src="../img/web/<?=$row['img5'];?>">
            <h4>Kelas X</h4>
          </div> -->
        </div>
      </div>
    </div>
      <!-- akhir info panel -->
      <!-- Working Space -->
      <div class="container">
      <div class="row">
        <div class="col-md-6">
          ​<picture>
            <img src="../img/web/<?=$row['img6'];?>" class="img-thumbnail">
          </picture>
        </div>
        <div class="col-md-6">
          <h1><b>Extraordinary</b> school</h1>
          <p>Belajar dengan suasana hati yang lebih asik dan mempelajari hal baru setiap harinya</p>
          <picture>
            <img src="../img/web/<?=$row['img7'];?>" class="img-thumbnail">
          </picture>
          Iklan
        </div>
      </div>
    </div>
      <!-- Akhir Workng Space -->
      <!-- testimonial -->
      <section class="testimonial">
        <div class="row justify-content-center">
          <div class="col-lg-6">
             <h5><?=$row['quote'];?></h5>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-8 d-flex justify-content-center">
            <figure class="figure">
              <img src="../img/web/<?=$row['img8'];?>" class="figure-img img-fluid rounded-circle">
              <figcaption class="figure-caption"><h5><?=$row['nama'];?></h5></figcaption>
              <p><?=$row['kap'];?></p>
            </figure>
          </div>
        </div>
      </section>
      <!-- akhir testimonial -->
      <div class="text-center">
       <a class="nav-item btn btn-primary tombol">Login</a>
      </div>
      <!-- footer -->
      <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
      <!-- akhir footer -->
    </div> 
    <!-- Akhir container -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>