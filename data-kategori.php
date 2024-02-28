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
                <h1>Data Kategori</h1>
                <div class="box">
                    <p><a class="btn2" href="tambah-kategori.php">Tambah Data</a></p>
                <table border="1" cellspacing="0" class="table">
                    <thead>
                        <tr>
                            <th width="60px">No</th>
                            <th>Kategori</th>
                            <th width="150px">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $no = 1;
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                        if(mysqli_num_rows($kategori) > 1){
                        while($row = mysqli_fetch_array($kategori)){
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $row['category_name'] ?></td>
                            <td>
                                <a class="edit" href="edit-kategori.php?id=<?php echo $row['category_id']?>">Edit</a>
                                <a class="hapus" href="proses-hapus.php?idk=<?php echo $row['category_id'] ?>" onclick="return confirm('Are You Sure to delete it?')">Hapus</a>
                            </td>
                        </tr>
                    <?php }}else{ ?>
                        <tr>
                            <td colspan="3">tidak ada data</td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <footer>
            <div class="container">
                <small>Copyright &copy; 2024 - BukaWarung</small>
            </div>
        </footer>
</body>
</html>