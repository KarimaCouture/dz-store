<?php

include "connect.php";


$result = $conn->query(
"SELECT * FROM wilayas"
);


$wilayas=[];


while($row=$result->fetch_assoc()){

    $wilayas[]=$row;

}


echo json_encode(
$wilayas,
JSON_UNESCAPED_UNICODE
);

?>
