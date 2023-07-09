<?php
include 'db.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="logo_apk.png" type="">
    <script src="bar.js" ></script>

    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"> </script>

    

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
    <link rel="stylesheet" href="style.css" />

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>KoneK</title>
  </head>
  <body>
    <section id="menu">
      <div class="logo">
        <img src="profil_logo.png" alt="" />
      </div>
      <div class="items">
        <li>
          <span class="material-icons"> pie_chart </span>
          <a href="dashboard.php" class="menu-text">Dashboard</a>
        </li>
        <li id="manajemen-li" onclick="dropManajemen()">
          <span class="material-symbols-outlined"> manage_accounts </span>
          <a href="daftarPekerjaan.php" class="menu-text">Daftar Pekerjaan</a>
        </li>
        <li id="transaksi-li">
          <span class="material-symbols-outlined"> summarize </span>
          <a href="statistikPekerjaan.php" class="menu-text">Statistik Pekerjaan</a>
        </li>
        <li>
          <span class="fas fa-address-card"style='font-size:26px'> </span>
          <a href="presensi.php" class="menu-text">Presensi</a>
        </li>
      </div>
    </section>

    <section id="interface">
      <div class="navigation">
        <div class="logo1">
          <img src="font_logo.png">
        </div>
        <div class="n1">
          <i id="slide-bar" class="fa-solid"></i>
        </div>
        <div class="profile">
          <i class="fa fa-bell"> </i>
          <img src="Jeongwoo.jpg" alt="" />
          <span class="material-symbols-outlined" onclick="toggleMenu()">
            expand_more
          </span>
        </div>
        <div class="sub-menu-wrap" id="subMenu">
          <div class="sub-menu">
            <div class="user-info">
              <img src="Jeongwoo.jpg" alt="" />
              <h2>
              <?php
                  echo $_SESSION['u_global']->nama
                  ?>
              </h2>
            </div>
            <hr />
            <a href="profile.php" class="sub-menu-link">
              <span class="material-symbols-outlined"> manage_accounts </span>
              <p>Profile</p>
            </a>
            <a href="#" class="sub-menu-link">
              <span class="material-symbols-outlined"> settings </span>
              <p>Settings</p>
            </a>
            <a href="#" class="sub-menu-link">
              <span class="material-symbols-outlined"> contact_support </span>
              <p>Help & Support</p>
            </a>
            <a href="index.php" class="sub-menu-link">
              <span class="material-symbols-outlined"> logout </span>
              <p>Logout</p>
            </a>
          </div>
        </div>
      </div>

      <h3 class="i-name">Dashboard</h3>

      
      <div class="board">
        <p id="p-order1">Halo <?php
                  echo $_SESSION['u_global']->nama
                  ?></p>
        <span id="p-order2">Selamat Datang Kembali</span>
        <div>
          <br><br>

        <div class="row">
          <div class="col-4">
            <p id="p-order1">Divisi Marketing</p>
            <p>
            <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 1 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris11 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris11;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 1 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris12 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris12 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris1 = $totalBaris11 + $totalBaris12;
              $percentage1 = $totalBaris11/$jumlahBaris1*100;
              echo number_format($percentage1) . " %";
              ?>
              </strong>
            </p>
          </div>
          <div class="col-4">
          <p id="p-order1">Divisi Produksi</p>
          <p>
          <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 2 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris21 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris21;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 2 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris22 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris22 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris2 = $totalBaris21 + $totalBaris22;
              $percentage2 = $totalBaris21/$jumlahBaris2*100;
              echo number_format($percentage2) . " %";
              ?>
              </strong>
            </p>
          </div>
          <div class="col-4">
          <p id="p-order1">Divisi Admin</p>
          <p>
          <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 3 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris31 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris31;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 3 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris32 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris32 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris3 = $totalBaris31 + $totalBaris32;
              $percentage3 = $totalBaris31/$jumlahBaris3*100;
              echo number_format($percentage3) . " %";
              ?>
              </strong>
            </p>
          </div>  
          <div class="col-4">
          <p id="p-order1">Divisi Desain</p>
          <p>
          <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 4 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris41 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris41;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 4 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris42 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris42 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris4 = $totalBaris41 + $totalBaris42;
              $percentage4 = $totalBaris41/$jumlahBaris4*100;
              echo number_format($percentage4) . " %";
              ?>
              </strong>
            </p>
          </div>
          <div class="col-4">
          <p id="p-order1">Divisi Penyimpanan</p>
          <p>
          <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 5 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris51 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris51;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 5 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris52 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris52 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris5 = $totalBaris51 + $totalBaris52;
              $percentage5 = $totalBaris51/$jumlahBaris5*100;
              echo number_format($percentage5) . " %";
              ?>
              </strong>
            </p>
          </div>
          <div class="col-4">
          <p id="p-order1">Divisi Perbaikan</p>
          <p>
              <strong>
              <?php
              $sql1s = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 6 AND status = 'Selesai'";
              $result = $conn->query($sql1s);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris61 = $row['total'];
                echo "Tugas Selesai : " . $totalBaris61;
              }
              ?>
              <br>
              <?php
              $sql1 = "SELECT COUNT(*) AS total FROM tugas WHERE divisi_id = 6 AND status = 'Proses'";
              $result = $conn->query($sql1);
              
              if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $totalBaris62 = $row['total'];
                echo "Tugas Belum Selesai : " . $totalBaris62 ;
              }
              ?>
              <br>
              <?php
              $jumlahBaris6 = $totalBaris61 + $totalBaris62;
              $percentage6 = $totalBaris61/$jumlahBaris6*100;
              echo number_format($percentage6) . " %";
              ?>
              </strong>
            </p>
          </div>          
        </div>












        <br><br>

      

<script>
  function showLineChart(divisiId) {
    // Semua elemen <canvas> yang ada
    var charts = document.querySelectorAll("canvas");

    // Semua elemen <canvas> dengan ID yang dimulai dengan "lineChart"
    var specificCharts = document.querySelectorAll("canvas[id^='lineChart']");

    // Menyembunyikan semua elemen <canvas>
    charts.forEach(function(chart) {
      chart.style.display = "none";
    });

    // Menampilkan elemen <canvas> yang sesuai dengan opsi yang dipilih
    if (divisiId === "all") {
      charts.forEach(function(chart) {
        chart.style.display = "block";
      });
    } else {
      specificCharts.forEach(function(chart) {
        if (chart.id === "lineChart" + divisiId) {
          chart.style.display = "block";
        }
      });
    }
  }
</script>



          
<!-- BARCHART1 -->
<canvas id="lineChart"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas

GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id

GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [{
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        backgroundColor: 'blue'
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        backgroundColor: 'green'
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var barChart = new Chart(document.getElementById("lineChart"), {
    type: 'bar',
    data: data,
    options: options
  });
</script>



      </div>

<br><br>      
<div class="row">
  <div class="col-4">
    <h1>Divisi Marketing</h1>
    
    <canvas id="lineChart1"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 1
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 1
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart1"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
  <div class="col-4">
  <h1>Divisi Produksi</h1>
 
  <canvas id="lineChart2"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 2
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 2
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart2"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
  <div class="col-4">
  <h1>Divisi Admin</h1>

  
  <canvas id="lineChart3"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 3
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 3
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart3"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
</div>

<br><br>      
<br><br>      
<div class="row">
  <div class="col-4">
    <h1>Divisi Desain</h1>
    
    <canvas id="lineChart4"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 4
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 4
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart4"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
  <div class="col-4">
  <h1>Divisi Penyimpanan</h1>
 
  <canvas id="lineChart5"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 5
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 5
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart5"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
  <div class="col-4">
  <h1>Divisi Perbaikan</h1>

  
  <canvas id="lineChart6"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
FROM tugas
WHERE divisi_id = 6
GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 1
$sql = "SELECT MONTH(jam) AS bulan, COUNT(presensi_id) AS jumlah_presensi
FROM presensi
JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
WHERE karyawan.divisi_id = 6
GROUP BY bulan";

$result_presensi = $conn->query($sql);

// Inisialisasi array untuk menyimpan data bulan, jumlah tugas, dan jumlah presensi
$bulanData = array();
$jumlahTugasData = array();
$jumlahPresensiData = array();

// Mengisi array data dengan hasil query tugas
if ($result_tugas->num_rows > 0) {
  while ($row = $result_tugas->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $bulanData[] = $bulan;
    $jumlahTugasData[] = $row["jumlah_tugas"];
  }
}

// Mengisi array data dengan hasil query presensi
if ($result_presensi->num_rows > 0) {
  while ($row = $result_presensi->fetch_assoc()) {
    $bulan = date("F", mktime(0, 0, 0, $row["bulan"], 1));
    $jumlahPresensiData[] = $row["jumlah_presensi"];
  }
}
?>

<script>
  // Data dari database
  var data = {
    labels: <?php echo json_encode($bulanData); ?>,
    datasets: [
      {
        label: 'Tugas',
        data: <?php echo json_encode($jumlahTugasData); ?>,
        borderColor: 'blue',
        fill: false
      },
      {
        label: 'Presensi',
        data: <?php echo json_encode($jumlahPresensiData); ?>,
        borderColor: 'green',
        fill: false
      }
    ]
  };

  // Opsi konfigurasi chart
  var options = {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
        precision: 0
      }
    }
  };

  // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
  var lineChart = new Chart(document.getElementById("lineChart6"), {
    type: 'line',
    data: data,
    options: options
  });
</script>

  </div>
</div>




    </section>
    <script>
      let sideBar = document.getElementById("menu");
      let el_html = document.querySelector("html");
      let subMenu = document.getElementById("subMenu");
      let slideBar = document.getElementById("slide-bar");
      let manajemen = document.getElementById("manajemen-li");
      let manajemenDrop = document.getElementById("manajemen");

      // let x = window.matchMedia("(max-width: 769px)");

      function toggleMenu() {
        // subMenu.subMenu.classList.toggle("open-menu");
        if (subMenu.style.maxHeight == "400px") {
          subMenu.style.maxHeight = "0px";
        } else {
          subMenu.style.maxHeight = "400px";
        }
      }

      // el_html.addEventListener("click", function () {
      //   if (is_profil_terbuka) {
      //     alert();
      //     subMenu.style.maxHeight = "0px";
      //     is_profil_terbuka = false;
      //   }
      // });

      $("#manajemen-li").click(function () {
        $("#manajemen").toggleClass("active2");
      });

      // function toggleSideBar() {
      //   sideBar.style.width = "40px";
      // }

      // function toggleSideBar() {
      //   if (x.matches) {
      //     if (sideBar.style.left === "-220px") {
      //       alert("True");
      //       sideBar.style.left == "0px";
      //     } else if (sideBar.style.left == "0px") {
      //       sideBar.style.left == "-220px";
      //     }
      //   }
      // console.log(sideBar.style.left);
      // }

      $("#slide-bar").click(function () {
        $("#menu").toggleClass("active");
      });

      $("#slide-bar").click(function () {
        $("#menu").toggleClass("activeWeb");
      });

      // alert("Apakah bisa ");
    </script>
  </body>


  </html>
