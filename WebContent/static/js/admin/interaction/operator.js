
/*  消息管理、点评管理的阅读状态*/
function formatterStatus(value,row){
		if(value == -1){
			return '未读';
		}else{
			return '已读';
		}
	}
	
	function updatestatus(_url) {
		$.messager.confirm('确认','确认改变阅读状态?',function(a){  
			if(a) {
				$.ajax({  
					url:_url,    
					success:function(){
						$('#dg').datagrid('reload');  
					}  
				});
			}          
		});  
	}
	
	/* 消息管理的消息类型*/	
	function formatterType(value,row){
		if(value == 1){
			return '系统通知';
		}else if(value == 2){
			return '房团通知';
		}
		else if(value == 3){
			return '下订通知';
		}
		else if(value == 4){
			return '活动通知';
		}
		else if(value == 5){
			return '夺房通知';
		}
		else {
			return '红包通知';
		}
	}
	
	
	