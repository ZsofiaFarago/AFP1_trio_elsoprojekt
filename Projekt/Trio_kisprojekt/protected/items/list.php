<center><p>Tárgylista</p></center>
<div>
<?php if(!array_key_exists('kat', $_GET)) : ?>
	<center>
	<a href="index.php?P=list&kat=1"><button class="button">1</button></a>
	<a href="index.php?P=list&kat=2"><button class="button">2</button></a>
	<a href="index.php?P=list&kat=3"><button class="button">3</button></a>
	<a href="index.php?P=list&kat=4"><button class="button">4</button></a>
	</center>
<?php else : ?>
<?php 
	include_once PROTECTED_DIR.'items/list_items.php';
?>

<?php endif; ?>
</div>