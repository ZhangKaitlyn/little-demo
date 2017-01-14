var moreBtn=document.getElementById('js-more');
var listBox=document.getElementById('js-listBox');
moreBtn.onclick=function(){
	if (hasClass(listBox,'active')) {
		removeClass(listBox,'active');
	}else{
		addClass(listBox,'active');
	}
}
