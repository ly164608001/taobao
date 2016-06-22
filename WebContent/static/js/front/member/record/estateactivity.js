// JavaScript Document

$(document).ready(function(e) {
	//--------------进行中 参与  未参与---------
	$(".stage-nav ul li").click(function(){
		var id=$(this).attr("id");
		if(id=="now"){
			window.location.href="estateActivity.htm?status=0";
		}else if(id=="joi"){
			window.location.href="estateActivity.htm?status=1";
		}else{
			window.location.href="estateActivity.htm?status=-1";
		}
	});
	//--------------今天 本周 本月 近三月---------
	$(".search-nav-l ul li").click(function(){
		var id=$(this).attr("id");
		var status = $("input[name='status']").val();
		if(id=="tod"){
			window.location.href="estateActivity.htm?timeType=1&status="+status;
		}else if(id=="wee"){
			window.location.href="estateActivity.htm?timeType=2&status="+status;
		}else if(id=="mon"){
			window.location.href="estateActivity.htm?timeType=3&status="+status;
		}else if(id=="nea"){
			window.location.href="estateActivity.htm?timeType=4&status="+status;
		}else{
			window.location.href="estateActivity.htm?status="+status;
		}
	});
	
	
//--------Search start ---------
	$(".btn-search").click(function(){
		$("#searchForm").submit();
	});
//-------Search end-----
	
	
});