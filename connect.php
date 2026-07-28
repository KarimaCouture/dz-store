<?php

$host = "localhost";
$user = "root";
$password = "";
$db = "karima_couture";


$conn = new mysqli($host,$user,$password,$db);


if($conn->connect_error){

    die("فشل الاتصال بقاعدة البيانات");

}


$conn->set_charset("utf8mb4");

?>
