<?php
session_start();
include('functions.php');
check_session_id();


?>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型ツールリスト（入力画面）</title>
</head>

<body>
  <form action="lost_create.php" method="POST">
    <fieldset>
      <legend>DB連携型todoリスト（入力画面）</legend>
      <a href="lost_read.php">一覧画面</a>
      <a href="logout_read.php">ログアウト</a>
      <div>
        tool: <input type="text" name="tool">
      </div>
      <div>
        takeout: <input type="date" name="takeout">
      </div>
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

</body>

</html>