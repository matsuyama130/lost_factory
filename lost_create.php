<?php
session_start();
include('functions.php');
check_session_id();

if (
  !isset($_POST['tool']) || $_POST['tool'] == '' ||
  !isset($_POST['takeout']) || $_POST['takeout'] == ''
) {
  exit('paramError');
}

$tool = $_POST['tool'];
$takeout = $_POST['takeout'];

// DB接続
$dbn='mysql:dbname=lost_factory;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

$sql = 'INSERT INTO lost_table(id, tool, takeout, created_at, updated_at) VALUES(NULL, :tool, :takeout, now(), now())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':tool', $tool, PDO::PARAM_STR);
$stmt->bindValue(':takeout', $takeout, PDO::PARAM_STR);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header("Location:lost_input.php");
exit();
