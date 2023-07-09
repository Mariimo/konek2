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
    <style>
    .data-options {
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 8px;
    }
  </style>

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
    <link rel="stylesheet" href="menuStatMarketing.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>Konek</title>
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
            <a href="#" class="sub-menu-link">
              <span class="material-symbols-outlined"> logout </span>
              <p>Logout</p>
            </a>
          </div>
        </div>
      </div>
      <h3 class="i-name">Divisi Perbaikan</h3>
      <div class="board">
        <div>
        <canvas id="lineChart1"></canvas>

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
  var lineChart = new Chart(document.getElementById("lineChart1"), {
    type: 'line',
    data: data,
    options: options
  });
</script>
<canvas id="barChart2"></canvas>

<?php
// Query SQL untuk mengambil data tugas dan presensi berdasarkan bulan dan divisi_id = 2
$sql = "SELECT MONTH(tanggal) AS bulan, COUNT(tugas_id) AS jumlah_tugas
        FROM tugas
        WHERE divisi_id = 6
        GROUP BY bulan";

$result_tugas = $conn->query($sql);

// Query SQL untuk mengambil data presensi berdasarkan bulan dan divisi_id = 2
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
  var barChart = new Chart(document.getElementById("barChart2"), {
    type: 'bar',
    data: data,
    options: options
  });
</script>
    
        </div>
        <p id="p-order">List order</p>
        <div class="show-search">
        
        
        <div class="data-options">
    <label id="show" for="">Show</label>
    <select name="jumlah-data" id="jumlah-data">
      <?php
          // Mengatur jumlah data yang akan ditampilkan berdasarkan inputan pengguna
          $jumlahData = isset($_GET["jumlah-data"]) ? $_GET["jumlah-data"] : "all";
          $counter = 0;
    
      ?>
      <option value="10" <?php if($jumlahData === "10") echo "selected"; ?>>10</option>
      <option value="25" <?php if($jumlahData === "25") echo "selected"; ?>>25</option>
      <option value="50" <?php if($jumlahData === "50") echo "selected"; ?>>50</option>
      <option value="100" <?php if($jumlahData === "100") echo "selected"; ?>>100</option>
      <option value="all" <?php if($jumlahData === "all") echo "selected"; ?>>All</option>
    </select>
    <label id="show" for="">entries</label>
  </div>

          <div class="search">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Search" name="search" id="searchInput" />
          </div>
        </div>
      
        <table width="100%">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama Tugas</th>
        <th>Divisi</th>
        <th>Tanggal</th>
        <th>Status</th>
        <th>Deadline</th>
      </tr>
    </thead>
    <tbody>
      <?php
      // Query SQL
      $sql = "SELECT tugas_id, tugas_nama, divisi_nama, tanggal, status, deadline FROM tugas INNER JOIN divisi ON tugas.divisi_id = divisi.divisi_id WHERE tugas.divisi_id = 6";
      $result = $conn->query($sql);

  
      if ($result->num_rows > 0) {
        // Output data setiap baris
        while($row = $result->fetch_assoc()) {
          $counter++;
          echo "<tr class='table-row'>";
          echo "<td>" . $counter . "</td>";
          echo "<td>" . $row["tugas_nama"] . "</td>";
          echo "<td>" . $row["divisi_nama"] . "</td>";
          echo "<td>" . $row["tanggal"] . "</td>";
          echo "<td>" . $row["status"] . "</td>";
          echo "<td>" . $row["deadline"] . "</td>";
          echo "</tr>";

          // Berhenti menampilkan jika jumlah data mencapai batas yang dipilih
          if ($jumlahData !== "all" && $counter >= intval($jumlahData)) {
            break;
          }
        }
      } else {
        echo "<tr><td colspan='6'>Tidak ada data tugas</td></tr>";
      }
      ?>
    </tbody>
  </table>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      var searchInput = document.getElementById("searchInput");

      searchInput.addEventListener("keyup", function() {
        var searchValue = this.value.toLowerCase();
        var tableRows = document.getElementsByTagName("tbody")[0].getElementsByTagName("tr");

        // Loop melalui setiap baris tabel
        for (var i = 0; i < tableRows.length; i++) {
          var rowData = tableRows[i].getElementsByTagName("td");
          var found = false;

          // Loop melalui setiap sel pada baris
          for (var j = 0; j < rowData.length; j++) {
            var cellData = rowData[j].innerHTML.toLowerCase();

            // Periksa apakah nilai pencarian ada dalam data sel
            if (cellData.indexOf(searchValue) > -1) {
              found = true;
              break;
            }
          }

          // Tampilkan atau sembunyikan baris berdasarkan hasil pencarian
          if (found) {
            tableRows[i].style.display = "";
          } else {
            tableRows[i].style.display = "none";
          }
        }
      });
    });
  </script>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      var dropdown = document.getElementById("jumlah-data");

      dropdown.addEventListener("change", function() {
        var selectedValue = this.value;
        var url = window.location.href.split("?")[0];

        if (selectedValue !== "all") {
          url += "?jumlah-data=" + selectedValue;
        }

        // Redirect ke URL yang telah diatur
        window.location.href = url;
      });
    });
  </script>
    
  </body>
</html>
