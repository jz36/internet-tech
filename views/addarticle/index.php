<h1>Добавление статьи</h1>

<form id="addArt" method="POST" action="addarticle?done=true">

<label>Выберите категорию статьи</label>

<select name="articleCat" id="articleCat" required>
	<? foreach ($categories as $key => $value):  ?>
		<option value="<?=$key; ?>"><?=$value; ?></option>
	<? endforeach; ?>
</select><br>

<label>Название:</label><br>
<input type="text" name="title" required><br>
<label>Краткое описание:</label><br>
<textarea name="small_text" id='small_text' required></textarea><br>
<label>Текст статьи:</label><br>
<textarea name="text" id='text' required></textarea><br>
<input name="active" type="checkbox" required>Активировать<br>
<input type="submit" value="Отправить" form="addArt">
<form>