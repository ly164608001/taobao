function formatterStatus(value,row){
		if(value == 1){
			return '启用';
		}else{
			return '禁用';
		}
	}
	
	function able(_url) {
		$.messager.confirm('确认','确认启用该用户?',function(a){  
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
	
	function disable(_url) {
		$.messager.confirm('确认','确认禁用该用户?',function(a){  
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
	
	function resetPassword(_url) {
		$.messager.confirm('确认','确认重置该用户密码?',function(a){  
			if(a) {
				$.ajax({  
					url:_url,    
					dataType:'json',
					success:function(data){
						$.messager.alert('操作结果',data.msg);
					}  
				});
			}          
		});  
	}