<?php
include 'koneksi.php';
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <title>Hello, world!</title>
    <style>
        .modal-header {
            color: white;
            background-color: #fed330;
        }
        .btn{
            background-color: #fed330;
        }
        .modal-dialog{
            margin-top: 100px;
        }
        .log{
            color: #fed330;
            font-size: 25px;
        }
    </style>
</head>

<body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <h3 class="modal-title" id="exampleModalLabel">
                    <p class="p-2"><i class="fad fa-coffee-togo me-3"></i>HOP HOP</p>
                </h3>
            </div>
            <div class="modal-body">
                <form action ="simpan.php" method ="POST">
                    <p class="text-center fw-bold log">LOGIN</p>
                    <div class="mb-3">
                        <!-- <label for="exampleInputEmail1" class="form-label">Name</label> -->
                        <input type="text" class="form-control" name="username" id="username" aria-describedby="emailHelp" placeholder="Username">
                    </div>
                    <div class="mb-3">
                        <!-- <label for="exampleInputEmail1" class="form-label">Email address</label> -->
                        <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Email address">
                    </div>
                    <div class="mb-3">
                        <!-- <label for="exampleInputPassword1" class="form-label">Password</label> -->
                        <input type="password" class="form-control" name="pw" id="pw" placeholder="Password">
                    </div>
                    <a href="index.php" class="btn text-white fw-bold" name = "simpan" value = "simpan">Login</a>
                </form>
            </div>
            <!-- <div class="modal-footer">

            </div> -->
        </div>
    </div>


    <?php
    if (isset($_POST['simpan'])) {
        $id_pelanggan = $_POST['id_pelanggan'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $pw = $_POST['pw'];
        $sql = "INSERT INTO pelanggan (id_pelanggan,username,email,pw) 
        VALUES ('$id_pelanggan','$username','$email','$pw')";
        $query = mysqli_query($conn, $sql);

        if ($query) {
            // echo "<script>alert('Data ditambahkan')</script>";
        } else {
            header('location: pelanggan.php?status=gagal');
        }
    }
    ?>
  












    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>

</html>
