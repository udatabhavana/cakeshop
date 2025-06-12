<?php
require_once 'config.php';
if (isset($_POST['btn'])) {
    $filename = $_FILES['file']['name'];
    $filesize = $_FILES['file']['size'];
    $filetmpname = $_FILES['file']['tmp_name'];
    $filetype = $_FILES['file']['type'];
    $filestore = "uploads/" . $filename;
    if (move_uploaded_file($filetmpname, $filestore)) {

        $users_username = $_POST['users_username'];
        $users_email = $_POST['users_email'];
        $users_password = $_POST['users_password'];
        $users_mobile = $_POST['users_mobile'];
        $users_address = $_POST['users_address'];
        $insert = "INSERT INTO cake_shop_users_registrations (users_username, users_email, users_password, users_mobile, users_address,image) values ('$users_username', '$users_email', '$users_password', '$users_mobile', '$users_address','$filename')";
        $select = "SELECT * FROM cake_shop_users_registrations where users_username = '$users_username'";
        $query = mysqli_query($conn, $select);
        $res = mysqli_fetch_assoc($query);
        if (mysqli_num_rows($query) > 0) {
            header("Location: register.php?register_msg=1");
        } else {
            if (mysqli_query($conn, $insert)) {
                header("Location: login_users.php");
                echo "img inserted";
            } else {
                echo "error inserted" . $conn;

            }
        }
    }
}
