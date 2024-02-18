<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Login | Bukawarung</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body id="bg-login">
    <div class="box-login">
        <h2>Login</h2>
        <form action="" method="POST"> 
            <input type="text" name="user" placeholder="Username" class="input-control"> 
            <input type="password" name="pass" placeholder="Password" class="input-control">
            <input type="submit" name="submit" value="login" class="btn">
        </form>
        <?php
        if(isset($_POST['submit'])){
            session_start();
            include 'db.php';

            $user = $_POST['user'];
            $pass = $_POST['pass'];

            $cek = mysqli_query($conn,"SELECT * FROM tb_admin WHERE username='".$user."' AND password = '".MD5($pass)."'");
            if(mysqli_num_rows($cek) > 0){
                $d = mysqli_fetch_object($cek);
                $_SESSION['status_login'] = true;
                $_SESSION['a_global'] = $d;
                $_SESSION['id'] = $d->admin_id;
                echo '<script>window.location="dashboard.php"</script>';
            } else{
                echo '<script>alert("username atau password salah!")</script>';
            }
        }
        ?>
    </div>
</body>
</html>