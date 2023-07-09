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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"> </script>

    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="profile.css" />

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
          <a href="Admin.php" class="menu-text">Daftar Pekerjaan</a>
        </li>
        <li id="transaksi-li">
          <span class="material-symbols-outlined"> summarize </span>
          <a href="#" class="menu-text">Statistik Pekerjaan</a>
        </li>
        <li>
          <span class="fas fa-address-card"style='font-size:26px'> </span>
          <a href="presensi.php" class="menu-text">Presensi</a>
        </li>
      </div>
    </section>

    <section id="interface">
      <div class="navigation">
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
              <h2>Jennie Kim</h2>
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

      <div class="i-name-p">
      <h3 class="i-name">Profil</h3>
    </div>
      <!-- <div class="values">
        <div class="val-box">
          <i class="fa fa-users"></i>
          <div>
            <h3>8,267</h3>
            <span>New Users</span>
          </div>
        </div>
        <div class="val-box">
          <i class="fa fa-users"></i>
          <div>
            <h3>8,267</h3>
            <span>New Users</span>
          </div>
        </div>
        <div class="val-box">
          <i class="fa fa-users"></i>
          <div>
            <h3>8,267</h3>
            <span>New Users</span>
          </div>
        </div>
        <div class="val-box">
          <i class="fa fa-users"></i>
          <div>
            <h3>8,267</h3>
            <span>New Users</span>
          </div>
        </div>
      </div> -->
      <div class="board">
        <table width="100%">
            <tr>
              <img src="Jeongwoo.jpg" alt="" height="150" width="150" class="jwoo">
            </tr>
            <tr>
                <td><label for="">ID USER</label></td>
                <td><label for="">
                <?php
                  echo $_SESSION['u_global']->user_id
                  ?>
                </label></td>
            </tr>
            <tr>
                <td><label for="">Nama</label></td>
                <td><label for="">
                <?php
                  echo $_SESSION['u_global']->nama
                  ?>
                </label></td>    
            </tr>
            <tr>
                <td><label for="">Jabatan</label></td>
                <td><label for="">
                <?php
                $calljabatan = $_SESSION['u_global']->jabatan_id;
                $query = "SELECT jabatan_nama FROM jabatan WHERE jabatan_id = '".$calljabatan."'";
                $sql = mysqli_query($conn,$query);
                
                while($row=mysqli_fetch_assoc($sql)){
                  echo $row['jabatan_nama'];
                };
                  ?>
                </label></td>
            </tr>

            <tr>
                <td><label for="">Email</label></td>
                <td><label for="">
                <?php
                  echo $_SESSION['u_global']->email
                  ?>
                </label></td>
            </tr>

            <tr>
                <td></td>
                <td>
                <button type="button" href="menuStatMarketing.php" class="btn btn-outline-primary active font-kecil">Back</button>
                </td>
            </tr>
            
        </table>
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
