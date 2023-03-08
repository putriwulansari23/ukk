<?php
include("koneksi.php");
if(!isset($_GET['id_penjualan'])){
    header("location:tampil.php?");
}
$id=$_GET['id_penjualan'];
$sql="SELECT * FROM tb_penjualan INNER JOIN tb_master ON tb_penjualan.id_barang=tb_master.id_barang where tb_penjualan.id_penjualan";
$query=mysqli_query($koneksi,$sql);
$row=mysqli_fetch_array($query);
?>
<html>
    <head>
</haed>
<body>
    <h1>EDIT BARANG</h1>
    <form action="proses_edit.php" method=POST>
        <form>
            <fieldset>
            <p>
                    <label for="nama_barang">Nama Barang </label>
                    <input type="text" name="nama_barang"  value="<?php echo $row ['nama_barang']?>"/>
               </p>

               <p>
                    <label for="harga_jual">Harga Jual </label>
                    <input type="number" name="harga_jual"  value="<?php echo $row ['harga_jual']?>"/>
               </p>

               <p>
                    <label for="harga_beli">Harga Beli </label>
                    <input type="number" name="harga_beli"  value="<?php echo $row ['harga_beli']?>"/>
               </p>

               <p>
                    <label for="satuan">Satuan </label>
                    <input type="text" name="satuan"  value="<?php echo $row ['satuan']?>"/>
               </p>

               <p>
                    <label for="kategori">Kategori</label>
                    <input type="text" name="kategori"  value="<?php echo $row ['kategori']?>"/>
               </p>
                <p>
                    <label for="no_faktur">No Faktur </label>
                    <input type="number" name="no_faktur"  value="<?php echo $row ['no_faktur']?>"/>
               </p>

               <p>
                    <label for="nama_konsumen">Nama Konsumen</label>
                    <input type="text" name="nama_konsumen"  value="<?php echo $row ['nama_konsumen']?>"/>
               </p>

               <p>
                    <label for="jumlah">Jumlah </label>
                    <input type="number" name="jumlah"  value="<?php echo $row ['jumlah']?>"/>
               </p>

               <p>
                    <label for="harga_satuan">Harga Satuan </label>
                    <input type="number" name="harga_satuan"  value="<?php echo $row ['harga_satuan']?>"/> 
               </p>

               <p>
                    <label for="harga_total">Harga Total </label>
                    <input type="number" name="harga_total" value="<?php echo $row ['harga_total']?>"/>
               </p>

              

               <p>
                    <input type="submit" name="edit" value="edit" />
               </p>

</fieldset>
</form>
</body>
</html>