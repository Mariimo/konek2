<?php
// Ambil divisiId dari parameter GET
$divisiId = $_GET['divisiId'];

include 'db.php';
// Query SQL untuk mengambil data karyawan berdasarkan divisiId
$sql = "SELECT karyawan_nama, status FROM karyawan WHERE divisi_id = '$divisiId'";
$result = $conn->query($sql);

// Buat array kosong untuk menyimpan data karyawan
$karyawan = array();

// Jika query berhasil dan ada hasil data karyawan
if ($result && $result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    // Tambahkan data karyawan ke array
    $karyawan[] = array(
      'karyawan_nama' => $row['karyawan_nama'],
      'status' => $row['status']
    );
  }
}



// Mengirimkan data karyawan dalam format JSON
header('Content-Type: application/json');
echo json_encode($karyawan);
?>
