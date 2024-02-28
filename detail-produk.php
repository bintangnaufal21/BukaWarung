<?php
error_reporting(0);
include 'db.php';
$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin ");
$a = mysqli_fetch_object($kontak);
$produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id = '".$_GET['id']."' ");
$p = mysqli_fetch_object($produk);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://kit.fontawesome.com/ae0c916b14.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Bukawarung</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <h1><a href="index.php">Bukawarung</a></h1>
            <ul>
                <li><a href="Produk.php">Produk</a></li>
            </ul>
        </div>
    </header>

    <!-- search -->
    <div class="search">
        <div class="container">
            <form action="produk.php">
                <input type="text" name="search" placeholder="Cari Produk" value="<?php echo $_GET['search'] ?>">
                <input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
                <input type="submit" name="cari" value="Cari Produk">
            </form>
        </div>
    </div>

    <!-- PRODUCT DETAIL-->
    <div class="section">
        <div class="container">
           <h3>Detail Produk</h3>
            <div class="box">
                <div class="col-2">
                    <img src="produk/<?php echo $p->product_image ?>" alt="foto produk" width="100%">
                </div>
                <div class="col-2">
                    <h3><?php echo $p->product_name ?></h3>
                    <h4>Rp. <?php echo number_format($p->product_price ) ?></h4>
                    <p><?php echo $p->product_description ?></p>
                    <br>
                    <a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_telp ?>&text=Hai, Saya Tertarik dengan produk ini" target="_blank"><i class="fa-solid fa-cart-shopping fa-2xl"></i></a>   
                </div>
            </div>      
        </div>
    </div>



    <!-- footer -->
    <div class="footer">
        <div class="container">
            <h4>Alamat</h4>
            <p><?php echo $a->admin_address ?></p>

            <h4>Email</h4>
            <p><?php echo $a->admin_email ?></p>

            <h4>No. Hp</h4>
            <p><?php echo $a->admin_telp ?></p>
            <small>Copyright &copy; 2020 - Bukawarung.</small>
        </div>
    </div>
</body>

</html>