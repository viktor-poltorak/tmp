<?php
// HTTP
define('HTTP_SERVER', 'http://' . @getenv('HTTP_HOST') . '/admin/');
define('HTTP_CATALOG', 'http://' . @getenv('HTTP_HOST') . '/');
define('HTTP_IMAGE', 'http://' . @getenv('HTTP_HOST') . '/images/');

// HTTPS
define('HTTPS_SERVER', 'http://' . @getenv('HTTP_HOST') . '/admin/');
define('HTTPS_IMAGE', 'http://' . @getenv('HTTP_HOST') . '/images/');

// DIR
define('DIR_APPLICATION', $_SERVER['DOCUMENT_ROOT'] . '/admin/');
define('DIR_SYSTEM', $_SERVER['DOCUMENT_ROOT'] . '/system/');
define('DIR_DATABASE', $_SERVER['DOCUMENT_ROOT'] . '/system/database/');
define('DIR_LANGUAGE', $_SERVER['DOCUMENT_ROOT'] . '/admin/language/');
define('DIR_TEMPLATE', $_SERVER['DOCUMENT_ROOT'] . '/admin/view/template/');
define('DIR_CONFIG', $_SERVER['DOCUMENT_ROOT'] . '/system/config/');
define('DIR_IMAGE', $_SERVER['DOCUMENT_ROOT'] . '/images/');
define('DIR_CACHE', $_SERVER['DOCUMENT_ROOT'] . '/system/cache/');
define('DIR_DOWNLOAD', $_SERVER['DOCUMENT_ROOT'] . '/download/');
define('DIR_LOGS', $_SERVER['DOCUMENT_ROOT'] . '/system/logs/');
define('DIR_CATALOG', $_SERVER['DOCUMENT_ROOT'] . '/catalog/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'smsu');
define('DB_PASSWORD', 'q1fKWwxiF4aP');
define('DB_DATABASE', 'smsu');
define('DB_PREFIX', '_');
?>
