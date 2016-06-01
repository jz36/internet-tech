<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf8">
		<title><?=$title;?></title>
	
	</head>
	<body>
<?php
    include ($contentPage);
?><br>
	<a href="<?=$_SERVER['HTTP_REFERER']; ?>">Вернуться на предыдущую страницу.</a><br>
	<a href="/">Главная</a>
	</body>
</html>