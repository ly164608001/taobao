$(function(){
	
	if(document.getElementById("dg")!=null) {
		var queryParam = formtoJson('dgquery');
		$('#dg').datagrid({    
	        //iconCls:'icon-edit',//图标  
			queryParams : queryParam,
	        width: 'auto',  
	        height: 'auto',  
	        nowrap: false,  
	        striped: true,  
	        border: true,  
	        collapsible:false, //是否可折叠的  
	        singleSelect:true, //是否单选  
	        pagination:true,   //分页控件  
	        rownumbers:true,   //行号    
	        toolbar: toolbardata
		}); 
		
		//设置分页控件  
		var p = $('#dg').datagrid('getPager');  
		$(p).pagination({  
	        pageSize: 10,//每页显示的记录条数，默认为10  
	        pageList: [2,5,10,15],//可以设置每页记录条数的列表  
	        beforePageText: '第',//页数文本框前显示的汉字  
	        afterPageText: '页    共 {pages} 页',  
	        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录'
		}); 
		
		$("#dgquery").submit(function() {
			searchrow();
			return false;
		});
	}
	
	if(document.getElementById("addsubmit"))
	{
		$("#addsubmit").click(function(){
			$("#addform").submit();
		})
	   $("#addform").form({  
			url:$("#addform").attr("action"),  
			onSubmit:function(){  
	    		return $(this).form('validate');  
			},
			success:function(data){  
				var json = eval('('+data+')');
	    		if(json.success)
	    		{
	    			closeDialog();
	    			$('#dg').datagrid("reload");
	    		}
	    		else
	    		{
	    			$.messager.alert("提示",json.msg);
	    		}  
			}  
		});
	}
	
	if(document.getElementById("updatesubmit"))
	{
		$("#updatesubmit").click(function(){
			$("#updateform").submit();
		})
	   $("#updateform").form({  
			url:$("#updateform").attr("action"),  
			onSubmit:function(){  
	    		return $(this).form('validate');  
			},
			success:function(data){  
				var json = eval('('+data+')');
	    		if(json.success)
	    		{
	    			closeDialog();
	    			$('#dg').datagrid("reload");
	    		}
	    		else
	    		{
	    			$.messager.alert("提示",json.msg);
	    		}  
			}  
		});
	}

})

