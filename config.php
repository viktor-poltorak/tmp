<?php
// HTTP
define('HTTP_SERVER', 'http://' . @getenv('HTTP_HOST') . '/');
define('HTTP_IMAGE', 'http://' . @getenv('HTTP_HOST') . '/images/');
define('HTTP_ADMIN', 'http://' . @getenv('HTTP_HOST') . '/admin/');

// HTTPS
define('HTTPS_SERVER', 'http://' . @getenv('HTTP_HOST') . '/');
define('HTTPS_IMAGE', 'http://' . @getenv('HTTP_HOST') . '/images/');

// DIR
define('DIR_APPLICATION', $_SERVER['DOCUMENT_ROOT'] . '/catalog/');
define('DIR_SYSTEM', $_SERVER['DOCUMENT_ROOT'] . '/system/');
define('DIR_DATABASE', $_SERVER['DOCUMENT_ROOT'] . '/system/database/');
define('DIR_LANGUAGE', $_SERVER['DOCUMENT_ROOT'] . '/catalog/language/');
define('DIR_TEMPLATE', $_SERVER['DOCUMENT_ROOT'] . '/catalog/view/theme/');
define('DIR_CONFIG', $_SERVER['DOCUMENT_ROOT'] . '/system/config/');
define('DIR_IMAGE', $_SERVER['DOCUMENT_ROOT'] . '/images/');
define('DIR_CACHE', $_SERVER['DOCUMENT_ROOT'] . '/system/cache/');
define('DIR_DOWNLOAD', $_SERVER['DOCUMENT_ROOT'] . '/download/');
define('DIR_LOGS', $_SERVER['DOCUMENT_ROOT'] . '/system/logs/');

// DB Live
/*
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'smsu');
define('DB_PASSWORD', 'q1fKWwxiF4aP');
define('DB_DATABASE', 'smsu');
define('DB_PREFIX', '_');
*/

//DB Viktor
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'pass');
define('DB_DATABASE', 'smsu');
define('DB_PREFIX', '_');
