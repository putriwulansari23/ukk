<?php
include("koneksi.php");
$id=$_GET['id_penjualan'];

$sql="DELETE FROM tb_penjualan where id_penjualan='$id'";
$query=mysqli_query($koneksi,$sql);

$sql="DELETE FROM tb_master where id_barang='$id'";
$query=mysqli_query($koneksi,$sql);

if($query){
    header('location:tampil.php?status=sukses');
}else{
    die('akses dilarang');
}
?>