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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
    <link rel="stylesheet" href="daftarPekerjaan.css" />

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
          <i id="slide-bar" class="fa-solid "></i>
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
            <a href="EditKaryawan.php" class="sub-menu-link">
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
      <div class="transaksi-tambah">
        
        <h3 class="i-name"> Tugas</h3>

      </div>
       
      <div class="board">
        <p id="p-order">Daftar Tugas</p>
        <!-- <div>
          <button
            type="button"
            class="btn btn-outline-primary active aksi-btn tambah-btn"
          >
            Tambah Admin
          </button>
        </div> -->
        <div class="show-search">
          <div class="data-options">
            <label id="show" for="">Tunjukkan</label>
            <select name="jumlah-data" id="jumlah-data">
            <?php
          // Mengatur jumlah data yang akan ditampilkan berdasarkan inputan pengguna
          $jumlahData = isset($_GET["jumlah-data"]) ? $_GET["jumlah-data"] : "all";
          $counter = 0;
    
      ?>
            <option value="11" <?php if($jumlahData === "11") echo "selected"; ?>>10</option>
      <option value="26" <?php if($jumlahData === "26") echo "selected"; ?>>25</option>
      <option value="51" <?php if($jumlahData === "51") echo "selected"; ?>>50</option>
      <option value="101" <?php if($jumlahData === "101") echo "selected"; ?>>100</option>
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
      $sql = "SELECT tugas_id, tugas_nama, divisi.divisi_id, divisi.divisi_nama, tanggal, status, deadline 
      FROM tugas
      INNER JOIN divisi ON tugas.divisi_id = divisi.divisi_id";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) {
        $counter = 1;
        while ($row = mysqli_fetch_array($result)) {
          echo "<tr class='table-row'>";
          echo "<td>" . $counter . "</td>";
          echo "<td>" . $row["tugas_nama"] . "</td>";
          echo "<td>" . $row["divisi_nama"] . "</td>";
          echo "<td>" . $row["tanggal"] . "</td>";
          echo "<td>" . $row["status"] . "</td>";
          echo "<td>" . $row["deadline"] . "</td>";
          echo '<td>
                  <a type="button" class="btn btn-outline active aksi-btn"
                  href="detail_tugas.php?tugasId=' . $row['tugas_id'] . '">
                    Detail
                  </a>
                </td>';
          echo "</tr>";
          $counter++;
          if ($jumlahData !== "all" && $counter >= intval($jumlahData)) {
            break;
          }
        }
      } else {
        echo "<tr><td colspan='7'>Tidak ada data tugas</td></tr>";
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
      </div>
    </section>
    <script>
      let sideBar = document.getElementById("menu");
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
