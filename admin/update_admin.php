<?php
require_once('../config.php');
if(isset($_POST['btn'])){
    $filename=$_FILES['file']['name'];
    $filesize=$_FILES['file']['size'];
    $filetmpname=$_FILES['file']['tmp_name'];
    $filetype=$_FILES['file']['type'];
    $filestore="../uploads/".$filename;
    if(move_uploaded_file($filetmpname,$filestore))
    {
$admin_username = $_POST['admin_username'];
$admin_email = $_POST['admin_email'];
$admin_password = $_POST['admin_password'];
$admin_id = $_POST['hidden_admin_id'];
$update = "UPDATE cake_shop_admin_registrations set admin_username = '$admin_username', admin_email = '$admin_email', admin_password = '$admin_password', image ='$filename' where admin_id = $admin_id";
if(mysqli_query($conn, $update)){
header("Location: account_admin.php?edit_success=1");
echo"img inserted";
}
else{
   echo"error inserted".$conn;

}
}
else{
   echo "error";
}

}
?>
