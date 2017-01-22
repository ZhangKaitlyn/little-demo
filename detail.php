<?php

require 'libs/Smarty.class.php';
require 'libs/MMysql.class.php';

$smarty = new Smarty;

$mysql=new MMysql();

$name=$_GET['name'];
var_dump($name);

// $demos = $mysql->select('demos');
// // var_dump($demos);
// $smarty->assign("demos",$demos);
$smarty->assign('name',$name);

$smarty->display('detail.tpl');
