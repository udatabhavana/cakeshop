<?php
require_once('config.php');
if(isset($_POST['btn'])){
    $filename=$_FILES['file']['name'];
    $filesize=$_FILES['file']['size'];
    $filetmpname=$_FILES['file']['tmp_name'];
    $filetype=$_FILES['file']['type'];
    $filestore="uploads/".$filename;
    if(move_uploaded_file($filetmpname,$filestore))
    {
$users_username = $_POST['users_username'];
$users_email = $_POST['users_email'];
$users_password = $_POST['users_password'];
$users_mobile = $_POST['users_mobile'];
$users_address = $_POST['users_address'];
$users_id = $_POST['hidden_users_id'];
$update = "UPDATE cake_shop_users_registrations set users_username = '$users_username', users_email = '$users_email', users_password = '$users_password', users_mobile = '$users_mobile', users_address = '$users_address',image ='$filename' where users_id = $users_id";
if(mysqli_query($conn, $update)){

header("Location: account_users.php?edit_success=1");
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

