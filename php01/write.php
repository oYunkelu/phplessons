<?php
//文字作成
$str = date("Y-m-d H:i:s");
//$name = date("Y-m-d H:i:s");
//$mail = date("Y-m-d H:i:s");
//File書き込み
$file = fopen("data/data.txt","a");	// ファイル読み込み
fwrite($file, $str."\r\n");
//fwrite($file, $name.$mail."\r\n");
fclose($file);
//確認のURL（必ずここから)localhost/php01/post.php
?>

<html>
<head>
<meta charset="utf-8">
<title>File書き込み</title>
</head>
<body>

<h1>書き込みしました。</h1>
<h2>./data/data.txt を確認しましょう！</h2>

<ul>
<li><a href="input.php">戻る</a></li>
</ul>
</body>
</html>