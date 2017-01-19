<?php
require 'libs/MMysql.class.php';
require 'php-sdk-7.1.3/autoload.php';

$name=$_POST['name'];
$author=$_POST['author'];
$logo=$_POST['logo'];
$code=$_POST['code'];
$g_code=$_POST['g_code'] | '';
$screenshots=$_POST['screenshots'] | '';
$detail=$_POST['detail'];
