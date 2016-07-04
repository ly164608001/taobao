$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input class="Wdate write-time input-text radius size-M"  type="text"  onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm:ss&quot;,isShowClear:false,readOnly:true})"/>');
	innerHtml=timeBet.join('');
	$('.timeAlone').append(innerHtml);
})
$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> '+
         '<span class="sprite">-</span>'+
         '<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>' 
         );
	innerHtml=timeBet.join('');
	$('.timeBet').append(innerHtml);
})

// iframe高度自适应
function setIframeHeight(iframe) {
if (iframe) {
var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
if (iframeWin.document.body) {
iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
}
}
};

window.onload = function () {
setIframeHeight(document.getElementById('external-frame'));
};

// JavaScript Document
$(document).ready(function(e) {
    $('.stage-nav li').click(function(){
		$(this).addClass('li-h2').siblings().removeClass('li-h2');
	});
	$('.search-nav-l li').click(function(){
		$(this).addClass('li-h').siblings().removeClass('li-h');
	});
	$('.type-nav-l li').click(function(){
		$(this).addClass('li-h3').siblings().removeClass('li-h3');
	});
	$('.MessageCenter-nav-l li a').click(function(){
		$(this).addClass('li-h5').parent().siblings().find('a').removeClass('li-h5');
	});
	$('.read-nav li').click(function(){
		$(this).addClass('li-h6').siblings().removeClass('li-h6');
	});
});

// 导航选中效果
$(function(){
	$('.menuSidebar dl dd').on('click',function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
})

$(function(){
	// 添加选中项
	$('.tab-tip').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
	// 返回顶部 
	$(function(){$(window).on("scroll",$backToTopFun);$backToTopFun();});
	// tab切换
	$.Huitab("#tab_detail .tabBar span","#tab_detail .tabCon","current","click","0");
	 
});