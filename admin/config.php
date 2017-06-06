<?php
/*
// HTTP
define('HTTP_SERVER', 'http://rc.seomax.loc/admin/');
define('HTTP_CATALOG', 'http://rc.seomax.loc/');
define('HTTP_IMAGE', 'http://rc.seomax.loc/image/');

// HTTPS
define('HTTPS_SERVER', 'http://rc.seomax.loc/admin/');
define('HTTPS_CATALOG', 'http://rc.seomax.loc/');
define('HTTPS_IMAGE', 'http://rc.seomax.loc/image/');

// DIR
define('DIR_APPLICATION', 'C:\Server\domains\rc.seomax.loc\public_html/admin/');
define('DIR_SYSTEM', 'C:\Server\domains\rc.seomax.loc\public_html/system/');
define('DIR_DATABASE', 'C:\Server\domains\rc.seomax.loc\public_html/system/database/');
define('DIR_LANGUAGE', 'C:\Server\domains\rc.seomax.loc\public_html/admin/language/');
define('DIR_TEMPLATE', 'C:\Server\domains\rc.seomax.loc\public_html/admin/view/template/');
define('DIR_CONFIG', 'C:\Server\domains\rc.seomax.loc\public_html/system/config/');
define('DIR_IMAGE', 'C:\Server\domains\rc.seomax.loc\public_html/image/');
define('DIR_CACHE', 'C:\Server\domains\rc.seomax.loc\public_html/system/cache/');
define('DIR_DOWNLOAD', 'C:\Server\domains\rc.seomax.loc\public_html/download/');
define('DIR_LOGS', 'C:\Server\domains\rc.seomax.loc\public_html/system/logs/');
define('DIR_CATALOG', 'C:\Server\domains\rc.seomax.loc\public_html/catalog/');
*/

/*Усовершенствованный конфиг*/
// HTTP
define('HTTP_SERVER', 'http://'.$_SERVER['HTTP_HOST'].'/admin/');
define('HTTP_CATALOG', 'http://'.$_SERVER['HTTP_HOST'].'/');
define('HTTP_IMAGE', 'http://'.$_SERVER['HTTP_HOST'].'/image/');

// HTTPS
define('HTTPS_SERVER', 'http://'.$_SERVER['HTTP_HOST'].'/admin/');
define('HTTPS_CATALOG', 'http://'.$_SERVER['HTTP_HOST'].'/');
define('HTTPS_IMAGE', 'http://'.$_SERVER['HTTP_HOST'].'/image/');

// DIR
define('DIR_APPLICATION', $_SERVER['DOCUMENT_ROOT']. '/admin/');
define('DIR_SYSTEM', $_SERVER['DOCUMENT_ROOT']. '/system/');
define('DIR_DATABASE', $_SERVER['DOCUMENT_ROOT']. '/system/database/');
define('DIR_LANGUAGE', $_SERVER['DOCUMENT_ROOT']. '/admin/language/');
define('DIR_TEMPLATE', $_SERVER['DOCUMENT_ROOT']. '/admin/view/template/');
define('DIR_CONFIG', $_SERVER['DOCUMENT_ROOT']. '/system/config/');
define('DIR_IMAGE', $_SERVER['DOCUMENT_ROOT']. '/image/');
define('DIR_CACHE', $_SERVER['DOCUMENT_ROOT']. '/system/cache/');
define('DIR_DOWNLOAD', $_SERVER['DOCUMENT_ROOT']. '/download/');
define('DIR_LOGS', $_SERVER['DOCUMENT_ROOT']. '/system/logs/');
define('DIR_CATALOG', $_SERVER['DOCUMENT_ROOT']. '/catalog/');
/*Усовершенствованный конфиг*/

// DB
define('DB_DRIVER', 'mysqliz');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'partner');
define('DB_PASSWORD', 'f52Cam9?');
define('DB_DATABASE', 'partner');
define('DB_PREFIX', '');
?>