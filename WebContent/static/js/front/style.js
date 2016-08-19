
function setIframeHeightChild(IframeId){
	$(window.parent.document).find('#'+IframeId).map(function(){
    var main = $(window.parent.document).find('#'+IframeId);
    var thisheight = $('body').height()+100;
    main.height(thisheight);
    });
}


$(function(){
	
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
	
	//子页面调用iframe自适应方法
	var iframeId = $(window.parent.document).find("#external-frame").attr('id');
	$('body').addClass('clearfix');
	if($('body div:first').hasClass("PersonalCenter-main-r")){
		setIframeHeightChild(iframeId);
	}
	
	// 导航选中效果
	$('.menuSidebar dl dd').on('click',function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
	
	// 添加选中项
	$('.tab-tip').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
	// 多选
	$('.more-click .tab-tip-add').click(function(){
		$(this).addClass('active');
	})
	// 返回顶部 
	$(function(){$(window).on("scroll",$backToTopFun);$backToTopFun();});
	// tab切换
	$.Huitab("#tab_detail .tabBar span","#tab_detail .tabCon","current","click","0");
})
