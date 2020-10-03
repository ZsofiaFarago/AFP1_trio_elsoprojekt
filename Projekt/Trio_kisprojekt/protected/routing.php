<?php 
if(!array_key_exists('P', $_GET) || empty($_GET['P']))
	$_GET['P'] = 'home';

switch ($_GET['P']) {
	case 'home': require_once PROTECTED_DIR.'normal/home.php'; break;

	case 'list': require_once PROTECTED_DIR.'items/list.php'; break;
	
	case 'info': require_once PROTECTED_DIR.'informacio.php'; break;

	case 'login': !IsUserLoggedIn() ? require_once PROTECTED_DIR.'user/login.php' : header('Location: index.php'); break;

	case 'logout': IsUserLoggedIn() ? UserLogout() : header('Location: index.php'); break;

	case 'userpanel': IsUserLoggedIn() ? require_once PROTECTED_DIR.'user/userpanel.php' : header('Location: index.php'); break;

	case 'add': IsUserLoggedIn() && $_SESSION['permission'] >= 1 ? require_once PROTECTED_DIR.'programs/add.php' : header('Location: index.php'); break;

	case 'delete': IsUserLoggedIn() && $_SESSION['permission'] >= 1 ? require_once PROTECTED_DIR.'programs/delete.php' : header('Location: index.php'); break;

	case 'edit': IsUserLoggedIn() && $_SESSION['permission'] >= 1 ? require_once PROTECTED_DIR.'programs/edit.php' : header('Location: index.php'); break;

	default: require_once PROTECTED_DIR.'normal/404.php'; break;
}

?>