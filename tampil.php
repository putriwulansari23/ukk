<?php
include("koneksi.php");
?>

<html>
    <head>
</head>
<body>
    <h2>Data Barang</h2>
    <h4><a href="tambah.php">Tambah</a></h4>
    <table border ="1">
        <tr>
            <th>Nama Barang</th>
            <th>Harga Jual</th>
            <th>Harga Beli</th>
            <th>Satuan</th>
            <th>Kategori</th>
            <th>No Faktur</th>
            <th>Nama Konsumen</th>
            <th>No Faktur</th>
            <th>Jumlah</th>
            <th>Harga Satuan</th>
            <th>Harga Total</th>
            <th>Aksi</th>

       </tr>

<?php
include("koneksi.php");
$sql="SELECT * FROM tb_penjualan INNER JOIN tb_master ON tb_penjualan.id_barang=tb_master.id_barang";
$query=mysqli_query($koneksi,$sql);

while($row=mysqli_fetch_array($query)){
    echo"<tr>";
    echo"<td>".$row['id_penjualan']."</td>";
    echo"<td>".$row['nama_barang']."</td>";
    echo"<td>".$row['harga_jual']."</td>";
    echo"<td>".$row['harga_beli']."</td>";
    echo"<td>".$row['satuan']."</td>";
    echo"<td>".$row['kategori']."</td>";
    echo"<td>".$row['no_faktur']."</td>";
    echo"<td>".$row['nama_konsumen']."</td>";
    echo"<td>".$row['jumlah']."</td>";
    echo"<td>".$row['harga_satuan']."</td>";
    echo"<td>".$row['harga_total']."</td>";
    echo"<td>";
    echo"<a href='edit.php?id_penjualan=".$row['id_penjualan']."'>Edit</a>||";
    echo"<a href='hapus.php?id_penjualan=".$row['id_penjualan']."'>Hapus</a>||";

    echo"</td>";
    echo"</tr>";
}
?>