<?php 
    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <title>BukaWarung</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>  
        <!-- HEADER -->
        <header>
            <div class="container">
            <h1><a href="dashboard.php">BukaWarung</a></h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
                <li><a href="profil.php">Profil</a></li>
                <li><a href="data-kategori.php">Data Kategori</a></li>
                <li><a href="data-produk.php">Data Produk</a></li> 
                <li><a href="logout.php">Logout</a></li> 
            </ul>
            </div>
        </header>

        <!-- CONTENT -->
        <div class="section">
            <div class="container">
                <h3>Tambah Data Produk</h3> 
                <div class="box">
                     <form action="" method="POST" enctype="multipart/form-data">
                        <select class="input-control" name="kategori">
                            <option value="">Pilih Kategori</option>
                            <?php 
                                $kategori = mysqli_query($conn, "SELECT *FROM tb_category ORDER BY category_id DESC");
                                while($r = mysqli_fetch_array($kategori)){
                            ?>
                            <option value="<?php echo $r['category_id'] ?>"><?php echo $r['category_name'] ?></option>
                            <?php } ?>
                        </select>
                        <input type="text" name="nama" placeholder="Nama Produk" class="input-control" required>
                        <input type="text" name="harga" placeholder="Harga" class="input-control" required>
                        <input type="file" name="gambar" class="input-control" required>
                        <textarea class="input-control" name="deskripsi" placeholder="Deskripsi"></textarea><br>
                        <select class="input-control" name="status">
                        <option value="">--Pilih--</option>
                        <option value="1">Aktif</option>
                        <option value="0">Non-Aktif</option>
                        </select>
                        <input type="submit" name="submit" value="Submit" class="btn">
                     </form>
                     <?php 
                      if(isset($_POST['submit'])){

                        /* print_r($_FILES['gambar']); */
                        //menampung inputan dari form
                        $kategori    = $_POST['kategori'];
                        $nama        = $_POST['nama'];
                        $harga       = $_POST['harga'];
                        $deskripsi   = $_POST['deskripsi'];
                        $status      = $_POST['status'];

                        //menampung data file yang diuplod
                        $filename =$_FILES['gambar']['name'];
                        $tmp_name =$_FILES['gambar']['tmp_name'];

                        $type1 = explode('.', $filename);
                        $type2 =$type1[1];

                        $newname = 'produk' .time().'.'.$type2;

                        //menampung data format file yang diizinkan
                        $tipe_diizinkan = array('jpg', 'jpeg', 'png', 'gif');

                        //validasi format file
                        if(!in_array($type2, $tipe_diizinkan)){

                            echo "<script>alert('Wrong Format Buddy Just For jpg jpeg and png')</script>";

                        } else {
                             //proses upload file sekaligus insert ke database
                            move_uploaded_file($tmp_name, './produk/' .$newname);

                            $insert =  mysqli_query($conn,"INSERT INTO tb_product VALUES (
                                        null,
                                        '".$kategori."',
                                        '".$nama."',
                                        '".$harga."',
                                        '".$deskripsi."',
                                        '".$newname."',
                                        '".$status."',
                                        CURRENT_TIMESTAMP
                                              ) ");
                            
                            if($insert){
                                echo '<script>alert("Input Data Berhasil")</script>';
                                echo '<script>window.location="data-produk.php"</script>';
                            }else{
                                echo 'gagal'.mysqli_error($conn);
                            }
                        }

                       

                      }
                     ?>
                </div> 
            </div>
        </div>

        <!-- FOOTER -->
        <footer>
            <div class="container">
                <small>Copyright &copy; 2024 - BukaWarung</small>
            </div>
        </footer>
        <script>
            CKEDITOR.replace( 'deskripsi' );
        </script>
</body>
</html>