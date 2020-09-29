<?php session_start(); ?>
<?php require_once 'protected/config.php'; ?>
<?php require_once USER_MANAGER; ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Trio Múzeum</title>


	<!-- Saját CSS -->
	<link rel="stylesheet" type="text/css" href="<?=PUBLIC_DIR.'style.css?'.date('YmdHis', filemtime(PUBLIC_DIR.'style.css'))?>">
</head>
<body class="bg-light text-dark">
	<p style="font-size: 36px; text-align: center">Múzeumi weboldal</p>
	<nav><?php require_once PROTECTED_DIR.'nav.php'; ?></nav>
	<div class="container-fluid">
		<content><?php require_once PROTECTED_DIR.'routing.php'; ?></content>
		<footer><?php include_once PROTECTED_DIR.'footer.php'; ?></footer>
	</div>
</body>
</html>