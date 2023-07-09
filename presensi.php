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
    <link rel="stylesheet" href="presensi.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>Konek Dashboard</title>
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
        <li id="transaksi-li">
          <span class="material-symbols-outlined"> manage_accounts </span>
          <a href="daftarPekerjaan.php" class="menu-text">Daftar Pekerjaan</a>
        </li>
        <li>
          <span class="material-symbols-outlined"> summarize </span>
          <a href="statistikPekerjaan.php" class="menu-text">Statistik Pekerjaan</a>
        </li>
        <li>
          <span class="fas fa-address-card"style='font-size:26px'></span>
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
            <a href="#" class="sub-menu-link">
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

      <h3 class="i-name">Presensi Karyawan</h3>

      
          </div>
        </div>
      </div> 
      <div class="board">
        
        <p id="p-order"> Chart Data Keseluruhan Presensi</p>
        <canvas id="barChart"></canvas>

  <script>
        // Data dari database
        var data = {
          labels: ['Divisi Marketing', 'Divisi Produksi', 'Divisi Admin', 'Divisi Desain', 'Divisi Penyimpanan','Divisi Perbaikan'],
            datasets: [
                <?php
                
// Kueri SQL untuk mengambil data jumlah status berdasarkan divisi
$sql = "SELECT
divisi.divisi_id,
COUNT(CASE WHEN presensi.status = 'Hadir' THEN 1 END) AS Jumlah_Hadir,
COUNT(CASE WHEN presensi.status = 'Terlambat' THEN 1 END) AS Jumlah_Terlambat,
COUNT(CASE WHEN presensi.status = 'Sakit' THEN 1 END) AS Jumlah_Sakit,
COUNT(CASE WHEN presensi.status = 'Izin' THEN 1 END) AS Jumlah_Izin,
COUNT(CASE WHEN presensi.status = 'Tidak Hadir' THEN 1 END) AS Jumlah_Tidak_Hadir
FROM
divisi
LEFT JOIN
karyawan ON divisi.divisi_id = karyawan.divisi_id
LEFT JOIN
presensi ON karyawan.karyawan_id = presensi.karyawan_id
GROUP BY
divisi.divisi_id";

// Menjalankan kueri
$result = $conn->query($sql);

// Menginisialisasi array untuk menyimpan data jumlah status
$statusData = array(
'Hadir' => array(),
'Terlambat' => array(),
'Sakit' => array(),
'Izin' => array(),
'Tidak Hadir' => array()
);

// Memproses hasil query
if ($result->num_rows > 0) {
while ($row = $result->fetch_assoc()) {
// Menyimpan jumlah status ke dalam array sesuai dengan divisi
$statusData['Hadir'][] = $row['Jumlah_Hadir'];
$statusData['Terlambat'][] = $row['Jumlah_Terlambat'];
$statusData['Sakit'][] = $row['Jumlah_Sakit'];
$statusData['Izin'][] = $row['Jumlah_Izin'];
$statusData['Tidak Hadir'][] = $row['Jumlah_Tidak_Hadir'];
}
}
                // Mengambil data jumlah status dan menggambarkannya dalam dataset Chart.js
                foreach ($statusData as $status => $data) {
                    echo '{';
                    echo '    label: "' . $status . '",';
                    echo '    data: [' . implode(',', $data) . '],';
                    echo '    backgroundColor: getBackgroundColor("' . $status . '"),';
                    echo '    borderColor: getBorderColor("' . $status . '"),';
                    echo '    borderWidth: 1';
                    echo '},';
                }
                ?>
            ]
        };

        // Opsi konfigurasi chart
        var options = {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        precision: 0
                    }
                }
            }
        };

        // Membuat chart dengan menggunakan data dan opsi konfigurasi yang telah ditentukan
        var barChart = new Chart(document.getElementById("barChart"), {
            type: 'bar',
            data: data,
            options: options
        });

        // Fungsi untuk mendapatkan warna latar belakang berdasarkan status
        function getBackgroundColor(status) {
            switch (status) {
                case 'Hadir':
                    return 'rgba(54, 162, 235, 0.5)';
                case 'Terlambat':
                    return 'rgba(255, 0, 0, 0.5)';
                case 'Sakit':
                    return 'rgba(0, 0, 255, 0.5)';
                case 'Izin':
                    return 'rgba(255, 255, 0, 0.5)';
                case 'Tidak Hadir':
                    return 'rgba(128, 128, 128, 0.5)';
                default:
                    return 'rgba(0, 0, 0, 0)';
            }
        }

        // Fungsi untuk mendapatkan warna garis tepi berdasarkan status
        function getBorderColor(status) {
            switch (status) {
                case 'Hadir':
                    return 'rgba(54, 162, 235, 1)';
                case 'Terlambat':
                    return 'rgba(255, 0, 0, 1)';
                case 'Sakit':
                    return 'rgba(0, 0, 255, 1)';
                case 'Izin':
                    return 'rgba(255, 255, 0, 1)';
                case 'Tidak Hadir':
                    return 'rgba(128, 128, 128, 1)';
                default:
                    return 'rgba(0, 0, 0, 0)';
            }
        }
    </script>
    <br><br>
        <div class="show-search">
          

        <!-- FILTER DIVISI -->
<div>
  <label for="filter-divisi">Divisi</label>
  <select name="filter-divisi" id="filter-divisi">
    <option value="all">Pilih Divisi</option>
    <option value="1">Divisi Marketing</option>
    <option value="2">Divisi Produksi</option>
    <option value="3">Divisi Admin</option>
    <option value="4">Divisi Desain</option>
    <option value="5">Divisi Penyimpanan</option>
    <option value="6">Divisi Perbaikan</option>
  </select>
</div>

<!-- FILTER STATUS -->
<div>
  <label for="filter-status">Status</label>
  <select name="filter-status" id="filter-status">
    <option value="all">Pilih Status</option>
    <option value="Hadir">Hadir</option>
    <option value="Terlambat">Terlambat</option>
    <option value="Sakit">Sakit</option>
    <option value="Izin">Izin</option>
    <option value="Tidak Hadir">Tidak Hadir</option>
  </select>
</div>



          <!-- SEARCH INPUT -->
          <div class="search">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Search" name="search" id="searchInput" />
          </div>
        </div>


        <table width="100%">
  <thead>
    <tr>
      <td>NO</td>
      <td>ID KARYAWAN</td>
      <td>NAMA KARYAWAN</td>
      <td>Divisi</td>
      <td>Jabatan</td>
      <td>Status</td>
      <td>JAM</td>
    </tr>
  </thead>
  <tbody>
    <?php
// Mendapatkan nilai filter status dan filter divisi (jika tersedia)
$filterStatus = isset($_GET['filter-status']) ? $_GET['filter-status'] : 'all';
$filterDivisi = isset($_GET['filter-divisi']) ? $_GET['filter-divisi'] : 'all';

// Query SQL untuk mengambil data dengan filter status dan divisi
$sql = "SELECT presensi.karyawan_id, karyawan.karyawan_nama, divisi.divisi_nama, jabatan.jabatan_nama, presensi.status, presensi.jam
        FROM presensi
        JOIN karyawan ON presensi.karyawan_id = karyawan.karyawan_id
        JOIN divisi ON karyawan.divisi_id = divisi.divisi_id
        JOIN jabatan ON karyawan.jabatan_id = jabatan.jabatan_id
        ";

$filterQuery = "";

if ($filterStatus !== "all") {
  $filterQuery .= " WHERE presensi.status = '$filterStatus'";
}

if ($filterDivisi !== "all") {
  if ($filterQuery === "") {
    $filterQuery .= " WHERE karyawan.divisi_id = '$filterDivisi'";
  } else {
    $filterQuery .= " AND karyawan.divisi_id = '$filterDivisi'";
  }
}

$sql .= $filterQuery;

$result = $conn->query($sql);
// ...

$counter = 1;
    if ($result->num_rows > 0) {
      // Menampilkan data ke dalam tabel
      while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>". $counter++ ."</td>";
        echo "<td>" . $row["karyawan_id"] . "</td>";
        echo "<td>" . $row["karyawan_nama"] . "</td>";
        echo "<td>" . $row["divisi_nama"] . "</td>";
        echo "<td>" . $row["jabatan_nama"] . "</td>";
        echo "<td>" . $row["status"] . "</td>";
        echo "<td>" . $row["jam"] . "</td>";
        echo "</tr>";
      }
    } else {
      echo "<tr><td colspan='6'>Tidak ada data karyawan</td></tr>";
    }

    // Tutup koneksi
    
    ?>
  </tbody>
</table>

<script>
document.addEventListener("DOMContentLoaded", function() {
  var filterDivisi = document.getElementById("filter-divisi");
  var filterStatus = document.getElementById("filter-status");

  filterDivisi.addEventListener("change", applyFilters);
  filterStatus.addEventListener("change", applyFilters);

  function applyFilters() {
    var selectedDivisi = filterDivisi.value;
    var selectedStatus = filterStatus.value;
    var url = window.location.href.split("?")[0];

    if (selectedDivisi !== "all") {
      url += "?filter-divisi=" + selectedDivisi;
    }

    if (selectedStatus !== "all") {
      if (url.includes("?")) {
        url += "&filter-status=" + selectedStatus;
      } else {
        url += "?filter-status=" + selectedStatus;
      }
    }

    // Redirect ke URL yang telah diatur
    window.location.href = url;
  }

  // Menampilkan opsi yang dipilih saat halaman dimuat
  var urlParams = new URLSearchParams(window.location.search);
  var selectedDivisi = urlParams.get("filter-divisi");
  var selectedStatus = urlParams.get("filter-status");
  if (selectedDivisi) {
    filterDivisi.value = selectedDivisi;
  }
  if (selectedStatus) {
    filterStatus.value = selectedStatus;
  }
});

</script>
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

      $("#manajemen-li").click(function () {
        $("#manajemen").toggleClass("active2");
      });

      $("#slide-bar").click(function () {
        $("#menu").toggleClass("active");
      });

      $("#slide-bar").click(function () {
        $("#menu").toggleClass("activeWeb");
      });

    </script>
  </body>
  
</html>
