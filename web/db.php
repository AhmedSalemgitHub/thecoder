<?php
$dns = 'mysql:host=localhost;dbname=u787805488_db';
$user = 'u787805488_coder';
//$pass = '26Aug2015';
$pass = $_GET["pass"];
//try {
  //  $db = new PDO($dns, $user, $pass);
    //echo 'connected';
//} catch (PDOException $e) {
 //   $error = $e->getMessage();
//    echo $error;
//}

//$query = 'SELECT * FROM users';
//$stm = $db->prepare($query);
//$stm->execute();

//$row = $stm->fetch(PDO::FETCH_ASSOC);
//echo json_encode($row);

try {
    $db = new PDO($dns, $user, $pass);
    //echo 'connected';
} catch (PDOException $e) {
    $error = $e->getMessage();
    echo $error;
}

$query = 'SELECT * FROM users';
$stm = $db->prepare($query);
$stm->execute();
$all_data = [];
while ($row = $stm->fetch(PDO::FETCH_ASSOC)) {
	$all_data[] = $row;
}

echo json_encode($all_data);