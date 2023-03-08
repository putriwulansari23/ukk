<?php
include("koneksi.php");
if(isset($_POST['edit'])){
    $nama_barang=$_POST['nama_barang'];
    $harga_jual=$_POST['harga_jual'];
    $harga_beli=$_POST['harga_beli'];
    $satuan=$_POST['satuan'];
    $kategori=$_POST['kategori'];
    $no_faktur=$_POST['no_faktur'];
    $nama_konsumen=$_POST['nama_konsumen'];
    $jumlah=$_POST['jumlah'];
    $harga_satuan=$_POST['harga_satuan'];
    $harga_total=$_POST['harga_total'];

    $sql="UPDATE tb_master SET nama_barang='$nama_barang', harga_jual='$harga_jual', harga_beli='$harga_beli', satuan='$satuan', kategori='$kategori' WHERE id_barang='$id'";
    $query=mysqli_query($koneksi,$sql);

    $sql="UPDATE tb_penjualan SET no_faktur='$no_faktur', nama_konsumen='$nama_konsumen', jumlah='$jumlah', harga_satuan='$harga_satuan', harga_total='$harga_total' WHERE id_barang='$id'";
    $query=mysqli_query($koneksi,$sql);

    if($query){
        header('location:tampil.php');
    }else{
        die('gagal mengedit');
    }
}
?>