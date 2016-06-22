/**
 * 我的足迹JavaScript document
 */
        
$(document).ready(function(e) {
	$(".search-nav-l ul li").click(function(){
		var id=$(this).attr("id");
		if(id=="tod"){
			window.location.href="myTracks.htm?timeType=1";
		}else if(id=="wee"){
			window.location.href="myTracks.htm?timeType=2";
		}else if(id=="mon"){
			window.location.href="myTracks.htm?timeType=3";
		}else if(id=="nea"){
			window.location.href="myTracks.htm?timeType=4";
		}else{
			window.location.href="myTracks.htm";
		}
		
	});
//--------Search start ---------
	$(".btn-search").click(function(){
		$("#searchForm").submit();
	});
	
//-------Search end-----
//-----HouseType start-------
$(".HouseType a").mouseout(function(){
	var id=$(this).attr("id");
	var lv=id.substring(10,id.length);
	$("#houseTypeDetail_"+lv).append();
	$("#houseTypeDetail_"+lv).hide();
});
$(".HouseType a").mouseover(function(){
	var id=$(this).attr("id");
	var lv=id.substring(10,id.length);
	$.ajax({
		type:"POST",
		url:'getAllType.htm', 
		dataType:"json",
		data:{"houseid":$(this).attr("houseid")},
		cache:false,
		success:function(data){ 
			if(data.success){
			var list=data.list;
			$(".HouseType a").siblings("span").empty()
//			$("#houseTypeDetail_"+lv).empty();
			$(list).each(function(){
				$("#houseTypeDetail_"+lv).append('<p><span>'+this.name+'</span><span>'+this.roomnum+'室'+this.hallnum+'厅'+this.toiletnum+'卫'+this.balconynum+'阳</span><span>'+this.buildarea+'平米</span></p>');
			});
			$("#houseTypeDetail_"+lv).show();
			}
		}
	});
});	
	
//-----HouseType end-------	
//-------load more start --------
	$(".load-more").click(function(){
		var rows=$("input[name='rows']").val();
		var totalCount=$("input[name='totalCount']").val();
		if(rows < totalCount){
			$("input[name='rows']").attr("value",parseInt(rows)+10);
			$("#searchForm").submit();
		}else{
			$("input[name='rows']").attr("value",totalCount);
			$("#searchForm").submit();
		}

		
	});
//--------load more end -----------	
	
	
});