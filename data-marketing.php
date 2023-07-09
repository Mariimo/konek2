<?php
// Koneksi ke database
include 'db.php';

// Query untuk mengambil data bulan dan jumlah tugas dari tabel tugas dengan filter divisi_id = 1
$query = "SELECT MONTH(tanggal) AS bulan, COUNT(*) AS jumlah_tugas FROM tugas WHERE divisi_id = 1 GROUP BY MONTH(tanggal)";

$result = mysqli_query($conn, $query);

if (!$result) {
    die("Error: " . mysqli_error($conn));
}

// Buat array untuk menyimpan data bulan dan jumlah tugas
$data = array();

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

// Mengembalikan data dalam format JSON
header('Content-Type: application/json');
echo json_encode($data);

// Tutup koneksi ke database
mysqli_close($conn);
?>
