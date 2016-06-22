// JavaScript Document
 
	//-----------------删除系统消息---------------
	function deleteSystem(){
		var count=$("input[name='noticeIds']:checked").length
		$("#delform").attr("action",basePath +"front/member/notice/system/delete.htm");
		if(count>0){
			 indexOk = top.layer.open({
	                type:1,
	                content:'是否确定删除选中的记录',
	                shadeClose:true,
	                area:'300px',
	                title:['信息','color:#fff'],
	                btn:['确认'],
	                yes:function(){
	                	top.layer.close(indexOk);
	                	$("#delform").submit();
	                }
			 });
		}else{
			 indexCancel = top.layer.open({
	                type:1,
	                content:'您未选中任何数据请选择要删除的记录',
	                shadeClose:true,
	                area:'300px',
	                title:['信息','color:#fff'],
	                btn:['确认'],
	                yes:function(){
	                    top.layer.close(indexCancel);
	                }
			 });
		}
	};
	
	//--------------------把消息标记为已读---------------
	 function readStatus(){
			var count=$("input[name='noticeIds']:checked").length	
			$("#delform").attr("action",basePath +"front/member/notice/system/readstatus.htm");
			if(count>0){
				 indexOk = top.layer.open({
		                type:1,
		                content:'是否确定标记选中的记录',
		                shadeClose:true,
		                area:'300px',
		                title:['信息','color:#fff'],
		                btn:['确认'],
		                yes:function(){
		                	top.layer.close(indexOk);
		                	$("#delform").submit();
		                }
				 });
			}else{
				 indexCancel = top.layer.open({
		                type:1,
		                content:'您未选中任何数据请选择要标记的记录',
		                shadeClose:true,
		                area:'300px',
		                title:['信息','color:#fff'],
		                btn:['确认'],
		                yes:function(){
		                    top.layer.close(indexCancel);
		                }
				 });
			}
		}
	
	//--------------------把消息标记为未读---------------
	 
	function unreadStatus(){
		var count=$("input[name='noticeIds']:checked").length	
		$("#delform").attr("action",basePath +"front/member/notice/system/unreadstatus.htm");
		if(count>0){
			 indexOk = top.layer.open({
	                type:1,
	                content:'是否确定标记选中的记录',
	                shadeClose:true,
	                area:'300px',
	                title:['信息','color:#fff'],
	                btn:['确认'],
	                yes:function(){
	                	top.layer.close(indexOk);
	                	$("#delform").submit();
	                }
			 });
		}else{
			 indexCancel = top.layer.open({
	                type:1,
	                content:'您未选中任何数据请选择要标记的记录',
	                shadeClose:true,
	                area:'300px',
	                title:['信息','color:#fff'],
	                btn:['确认'],
	                yes:function(){
	                    top.layer.close(indexCancel);
	                }
			 });
		}
	};
	
	
	

	
	




	
	

	

	
	