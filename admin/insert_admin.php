<?php
require_once('../config.php');
if(isset($_POST['btn'])) {
    $filename=$_FILES['file']['name'];
    $filesize=$_FILES['file']['size'];
    $filetmpname=$_FILES['file']['tmp_name'];
    $filetype=$_FILES['file']['type'];
    $filestore="../uploads/".$filename;
    if(move_uploaded_file($filetmpname, $filestore)) {
        $admin_username = $_POST['admin_username'];
        $admin_email = $_POST['admin_email'];
        $admin_password = $_POST['admin_password'];
        $insert = "INSERT INTO cake_shop_admin_registrations (admin_username, admin_email, admin_password,image) values ('$admin_username', '$admin_email', '$admin_password','$filename')";
        $select = "SELECT * FROM cake_shop_admin_registrations where admin_username = '$admin_username'";
        $query = mysqli_query($conn, $select);
        $res = mysqli_fetch_assoc($query);
        if (mysqli_num_rows($query) > 0) {
            header("Location: admin_signup.php?register_msg=1");
        } else {
            if(mysqli_query($conn, $insert)) {
                header("Location: index.php");
                echo"img inserted";
            } else {
                echo"error inserted".$conn;

            }
        }
    }
}
?>

