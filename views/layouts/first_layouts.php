<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf8">
		<link type="text/css" rel="stylesheet" href="../css/main.css" />
		<title><?=$title;?></title>
	
	</head>
	<body>
		<div id="blog_header">
			<p>Зыков Иван и Князева Виктория</p>
		</div>
			<ul id="blog_nav">
				<li><a href="/category/?id=1">Главная</a></li>
				<li><a href="/category/?id=1">Обо мне</a></li>
				<li><a href="/category/?id=2">О семье</a></li>
				<li><a href="/category/?id=3">О друзьях</a></li>
				<li><a href="/addarticle">Добавить статью</a></li>
			</ul>
			<div id="blog_content">
<?php
    include ($contentPage);
?><br>
</div>
	</body>
</html>