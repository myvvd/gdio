<?php


if (version_compare(PHP_VERSION, '5.3.0', '<')) {
	die('require PHP > 5.3.0 !');
}

define('BIND_MODULE', 'Manage');
define('APP_DEBUG', false);
define('APP_PATH', "./App/");
define('THINK_PATH', "./Include/");
require THINK_PATH . 'ThinkPHP.php';
