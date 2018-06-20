<?php
$host = 'localhost';
$db   = 'eshopmarket';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$pdo = new PDO($dsn, $user, $pass);
$city= trim($_GET['city']);
//$sql="SELECT * FROM `ajax`";
$sql="SELECT `text` FROM `ajax` WHERE `text` LIKE '%$city%'";
$stmt = $pdo->query($sql);
$array=[];
while ($row = $stmt->fetch())
{
    $array[]= $row['text'];
}
//echo json_encode($_GET['city']);
if(empty($array)){
    $array[]='false';
}
echo json_encode($array);