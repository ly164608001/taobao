$(function(){
	// tab
	$('.typeSel ul li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
})