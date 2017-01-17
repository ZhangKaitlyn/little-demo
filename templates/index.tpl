<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>小程序商店</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- <nav class="kind-nav">
		<ul class="clearfix" id="js-nav">
			<li class="active">全部</li>
		</ul>
		<a id="js-more" class="btn btn-more">
			<img src="images/more_unfold.png" alt="">
		</a>
	</nav> -->
	<div class="container">
		<ul class="list-box" id="js-list">
			{foreach from=$demos item=item key=key name=name}
			<li class="data-li">
				<a href="javascript:void(0);" class="icon-60">
					<img src="{$item.logo}" alt="{$item.name}">
				</a>
				<div class="app-content">
					<h3>{$item.name}</h3>
					<p class="click-info">
						<span>100</span>次点击
					</p>
					<p class="appinfo">{$item.detail}</p>
				</div>
				<a data-url="{$item.img_code}" class="btn btn-green clip-btn" data-clipboard-action="copy" data-clipboard-text="{$item.name}">打开</a>
			</li>
			{/foreach}
		</ul>
	</div>

	<div id="js-mask" class="mask"></div>
	<div id="js-large-code" class="large">
	</div>
	<script src="script/common.js"></script>
	<script src="script/clipboard.min.js"></script>
	<!-- <script src="script/toggle.js"></script> -->
	<script>
		var clipboard=new Clipboard(".clip-btn");
		clipboard.on('success', function(e) {
			// alert("已复制“"+e.text+"”,直接到微信粘贴搜索即可");
			console.info('Action:', e.action);
			console.info('Text:', e.text);
			console.info('Trigger:', e.trigger);

			e.clearSelection();
		});

		clipboard.on('error', function(e) {
			console.error('Action:', e.action);
			console.error('Trigger:', e.trigger);
		});
	</script>
	<script>
		var listBox=document.getElementById('js-list');
		listBox.onclick=function(e){
			var obj=e.target;
			if (hasClass(obj,'clip-btn')) {
				var parent=document.getElementById('js-large-code');
				var url=obj.dataset.url;
				console.log(obj.dataset);
				var name=obj.dataset.clipboardText;
				var img="<img src='"+url+"' alt='二维码'>";
				var h4="<h4>"+name+"</h4>"
				var p="<p>长按复制上行小程序或扫一扫上方二维码进入小程序</p>";
				parent.innerHTML=img+h4+p;
				var mask=document.getElementById('js-mask');
				addClass(mask,"active");
				addClass(parent,"active");
			}else{
				console.log("无二维码");
			}
		}

		document.body.onclick=function(e){
			var obj=e.target;
			if (!hasClass(obj,'clip-btn')){
				var large=document.getElementById('js-large-code');
				if (hasClass(large,'active')) {
					var mask=document.getElementById('js-mask');
					removeClass(mask,'active');
					removeClass(large,'active');
				}
			}
			
		}
	</script>
</body>
</html>