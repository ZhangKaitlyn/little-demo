<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>{$detail[0].name}|5G在线</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/swiper.min.css">
</head>
<body class="bottom-fixed">
	<div class="data-li top-info">
		<a href="javascript:void(0);" class="icon-70">
			<img src="{$detail[0].logo}" alt="{$detail[0].name}">
		</a>
		<div class="app-content">
			<h4>{$detail[0].name}</h4>
			<p class="click-info">
				<span>100次点击</span> | <span>{$detail[0].kind}</span>
			</p>
			<p class="appinfo">{$detail[0].detail}</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h4>{$detail[0].name} 介绍</h4>
			<p>{$detail[0].detail}</p>
		</div>
		<div class="row">
			<h4>{$detail[0].name} 截图</h4>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					{foreach from=$detail[0].screenshots item=item}
					<div class="swiper-slide"><img src="{$item}" alt="{$detail[0].name}截图"></div>
					{/foreach}
				</div>
			</div>
		</div>
		<div class="row">
			<h4>{$detail[0].name} 使用指南</h4>
			<p class="info">*长按复制名称(<span> {$detail[0].name} </span>)，微信（6.5.3版本+）搜索</p>
			{if $detail[0].gong_code}
			<p>*长按进入公众号，直接使用小程序</p>
			<img class="code" src="{$detail[0].gong_code}" alt="{$detail[0].name}">
			{/if}
		</div>
		<div class="row clearfix">
			<h4>热门推荐</h4>
			<div class="col-3">
				<a href="#">
					<img src="images/code/miquan.jpg" alt="">
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<img src="images/code/miquan.jpg" alt="">
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<img src="images/code/miquan.jpg" alt="">
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<img src="images/code/miquan.jpg" alt="">
				</a>
			</div>
		</div>
	</div>

	<div class="footer">
		<a id="js-bottom-modal" data-url="{$detail[0].img_code}" class="btn btn-green-outline clip-btn btn-full" data-clipboard-action="copy" data-clipboard-text="{$detail[0].name}">打开</a>
	</div>
	
	<div id="js-mask" class="mask"></div>
	<div id="js-large-code" class="large">
	</div>
	<script src="script/swiper.min.js"></script>
	<script src="script/common.js"></script>
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView: 'auto',
			spaceBetween: 10
		});  
	</script>
	<script>
		var bottomModal=document.getElementById('js-bottom-modal');
		bottomModal.onclick=function(e){
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