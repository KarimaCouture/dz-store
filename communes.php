<?php

include "connect.php";


$id=$_GET['wilaya_id'];


$result=$conn->query(

"SELECT * FROM communes 
WHERE wilaya_id=$id"

);


$communes=[];


while($row=$result->fetch_assoc()){

    $communes[]=$row;

}


echo json_encode(
$communes,
JSON_UNESCAPED_UNICODE
);


?>
