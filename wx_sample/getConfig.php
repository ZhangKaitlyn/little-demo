<?php
require_once "jssdk.php";
$appId=$_GET['appId'];
$appSecret=$_GET['appSecret'];
$jssdk = new JSSDK($appId, $appSecret);
$signPackage = $jssdk->GetSignPackage();
echo json_encode($signPackage);