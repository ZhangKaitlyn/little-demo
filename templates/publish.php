<?php
require_once "../wx_sample/jssdk.php";
$jssdk = new JSSDK("wxa6af999ce1a56b3e", "c6f343ff821aeb86a4c82ba72ecd9b35");
$signPackage = $jssdk->GetSignPackage();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>发布程序</title>
	<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<form class="publish-form" action="#">
		<div class="form-group">
			<h4>名称</h4>
			<input type="text" id="name" class="form-control">
		</div>
		<div class="form-group">
			<h4>作者</h4>
			<input type="text" id="author" class="form-control">
		</div>
		<div class="form-group clearfix">
			<h4>Logo、二维码</h4>
			<p class="info">未绑定公众号，可不上传公众号二维码</p>
			<div class="upload">
				<span>+</span>
				<p>上传icon</p>
			</div>
			<div class="upload">
				<span>+</span>
				<p>上传二维码</p>
			</div>
			<div class="upload">
				<span>+</span>
				<p>上传公众号二维码</p>
			</div>
		</div>
		<div class="form-group">
			<h4>作者</h4>
			<textarea name="detail" id="detail" rows="3"></textarea>
		</div>
		<div class="form-group">
			<h4>分类</h4>
			<ul class="kinds" id="kinds">
				<li>交通</li>
				<li>生活</li>
				<li>旅游</li>
				<li>购物</li>
				<li>教育</li>
				<li>儿童</li>
				<li>社交</li>
				<li>阅读</li>
				<li>新闻</li>
				<li>娱乐</li>
				<li>健康医疗</li>
				<li>摄影与录像</li>
				<li>财务</li>
				<li>商业指南</li>
				<li>公益</li>
				<li>效率</li>
				<li>音乐</li>
				<li>工具</li>
				<li>报刊杂志</li>
				<li>体育</li>
				<li>天气</li>
				<li>其他</li>
			</ul>
		</div>
		<div class="form-group clearfix">
			<h4>截图</h4>
			<p class="info">不多于5张</p>
			<div class="upload">
				<span>+</span>
			</div>
		</div>
		<div class="btn btn-full btn-green">发布</div>
	</form>

	<script src="../script/jquery.min.js"></script>
	<script src="../script/kind-active.js"></script>
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	<!-- <script src="../script/wx-load-img.js"></script> -->
	<script>
		wx.config({
			debug: true,
			appId: '<?php echo $signPackage["appId"];?>',
			timestamp: <?php echo $signPackage["timestamp"];?>,
			nonceStr: '<?php echo $signPackage["nonceStr"];?>',
			signature: '<?php echo $signPackage["signature"];?>',
			jsApiList: [
      // 所有要调用的 API 都要加到这个列表中
      ]
  });
		wx.ready(function () {
    // 在这里调用 API
});
</script>
</body>
</html>