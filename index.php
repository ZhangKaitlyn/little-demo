<?php
/**
 * Example Application
 *
 * @package Example-application
 */

require 'libs/Smarty.class.php';
require 'libs/MMysql.class.php';

$smarty = new Smarty;

$mysql=new MMysql();

$demos = $mysql->select('demos');
// var_dump($demos);
$smarty->assign("demos",$demos);

$smarty->display('index.tpl');
