<?
error_reporting (E_ALL); 

include ('/config.php'); 
 
$dbObject = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
 
include (SITE_PATH . DS . 'core' . DS . 'core.php'); 
 
$router = new Router($registry);

$registry->set ('router', $router);

$router->setPath (SITE_PATH . 'controllers');

$router->start();
?>