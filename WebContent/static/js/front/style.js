
function setIframeHeightChild(IframeId){
	$(window.parent.document).find('#'+IframeId).map(function(){
    var main = $(window.parent.document).find('#'+IframeId);
    var thisheight = $(document).height()+100;
    main.height(thisheight);
    });
}
	
// 增加缩减iframe高度方法
function listenIframeHeight(){
	var iframeId = $(window.parent.document).find("#external-frame").attr('id');
	if($('body div:first').hasClass("workContent")){
		setIframeHeightChild(iframeId);
	}
}


$(function(){

	listenIframeHeight();
	
	// JavaScript Document
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

	// 导航选中效果
	$('.menuSidebar dl dd').on('click',function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})

/*	//时间初始化
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input class="Wdate write-time input-text radius size-M"  type="text"  onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm:ss&quot;,isShowClear:false,readOnly:true})"/>');
	innerHtml=timeBet.join('');
	$('.timeAlone').append(innerHtml);

	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> '+
         '<span class="sprite">-</span>'+
         '<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>'
         );
	innerHtml=timeBet.join('');
	$('.timeBet').append(innerHtml);
*/
	// 添加选中项
	$('.tab-tip').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	});
	// 多选
	$('.more-click .tab-tip-add').click(function(){
		$(this).toggleClass('active');
	})
	// 返回顶部
	$(function(){$(window).on("scroll",$backToTopFun);$backToTopFun();});
	// tab切换
	$.Huitab("#tab_detail .tabBar span","#tab_detail .tabCon","current","click","0");
})
