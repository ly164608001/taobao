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