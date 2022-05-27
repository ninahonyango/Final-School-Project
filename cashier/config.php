<?php
session_start();
$servername = "127.0.0.1";
$uname = "root";
$password = "";
$db_name = "glm_db";

$db = mysqli_connect($servername, $uname, $password, $db_name);
if (!$db)
{
    echo "Connection Failed!";
    exit();
}
?>