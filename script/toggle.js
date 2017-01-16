var moreBtn=document.getElementById('js-more');
var nav=document.getElementById('js-nav');
moreBtn.onclick=function(){
	console.log(nav);
	if (hasClass(nav,'active')) {
		removeClass(nav,'active');
	}else{
		addClass(nav,'active');
	}
}
