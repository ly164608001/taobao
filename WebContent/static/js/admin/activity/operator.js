function formatterStatus(value,row){
		if(value == 1){
			return '启用';
		}else{
			return '禁用';
		}
	}
	
	function updatestatus(_url) {
		$.messager.confirm('确认','确认启用/禁用该活动?',function(a){  
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
//抵扣金额和抵扣总价比例切换	
$(document).ready(function(){
	$("select[name='deductiontype']").change(function(){		
		if($("select[name='deductiontype']").val()==1){			
			$(".deduscale").html("%");
			$(".dedutype").html("总额比例");
		}else{
			
			$(".deduscale").html("");
			$(".dedutype").html("抵扣金额");
		}
	});
	
});		
	