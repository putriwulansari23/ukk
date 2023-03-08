<?php
include("koneksi.php");
if(isset($_POST['tambah'])){
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

    $sql="INSERT INTO tb_master(nama_barang,harga_jual,harga_beli,satuan,kategori) VALUES ('$nama_barang','$harga_jual','$harga_beli','$satuan','$kategori')";
    $query=mysqli_query($koneksi,$sql);

    $sql="SELECT max(id_barang) AS barang_id FROM tb_master LIMIT 1";
    $query=mysqli_query($koneksi,$sql);

    $data=mysqli_fetch_array($query);
    $id_barang=$data['barang_id'];

    $sql="INSERT INTO tb_penjualan(no_faktur,nama_konsumen,jumlah,harga_satuan,harga_total,id_barang) VALUES ('$no_faktur','$nama_konsumen','$jumlah','$harga_satuan','$harga_total','$id_barang')";
    $query=mysqli_query($koneksi,$sql);

    if($query){
        header('location:tampil.php?status=sukses');
    }else{
        header('location:tampil.php?status=gagal');
    }
}
?>

