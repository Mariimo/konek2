<?php
include 'db.php';
if (isset($_SESSION['username'])) {
  session_destroy();
};
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="logo_apk.png" type="">
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
      integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="index.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>Konek</title>
  </head>
  <body>
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>

              <form method="post" class="register-form" id="login-form">
              <div class="form-outline form-white mb-4">
                <input type="email" id="typeEmailX" class="form-control form-control-lg" name="email" />
                <label class="form-label" for="typeEmailX">Email</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="password" id="typePasswordX" class="form-control form-control-lg" name="pass" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" >Forgot password?</a></p>

              <input type="submit" name="submit" id="signin" class="btn btn-outline-light btn-lg px-5">
              </form>

              <?php
if(isset($_POST['submit'])){
  echo '<script>window.location="dashboard.php"</script>';
    session_start();

    $email = $_POST['email'];
    $pass = $_POST['pass'];
    

    // Cek pada tabel 'user'
    $cek_user = mysqli_query($conn, "SELECT * FROM user WHERE email = '".$email."' AND password = '".$pass."' ");
    
    if(mysqli_num_rows($cek_user) > 0){
        $d = mysqli_fetch_object($cek_user);
        $_SESSION['status_login'] = true;
        $_SESSION['u_global'] = $d;
        $_SESSION['name'] = $d->name;
        $_SESSION['email'] = $d->email;
        echo 'Login berhasil';
        echo '<script>window.location="dashboard.php"</script>';
    }else{
        echo ' <br> Username / Password Salah'; 
    }
}
?>
              
            </div>


          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  </body>