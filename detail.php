<?php

require 'libs/Smarty.class.php';
require 'libs/MMysql.class.php';

$smarty = new Smarty;

$mysql=new MMysql();

$name=$_GET['name'];
$detail=$mysql->where(array('name'=>"58同城"))->select('demos');

$smarty->assign('detail',$detail);

$smarty->display('detail.tpl');
