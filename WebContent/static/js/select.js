	/**
	 * @desc 级联下拉控件
	 * @author 薛云腾
	 * @version v1.0
	 * @date 2016-06-28 23:54:12
	 */
	
    $(function(){
       _initSelect();
    });
    
    /*
	 * 下拉框回显
	 * @param initValue 初始值
	 * @param selectObj 下拉框元素
	 */
	function _echo(initValue,selectObj){
		var $this = $(selectObj);
		var upLink = $this.attr('uplink');
		var valuename = $this.attr('valuename');
		var labelname = $this.attr('labelname');
		
		//获取同级数据列表和上一级id
		$.ajax({
			type : 'POST',
			data : {'id':initValue},
			url : upLink,
			dateType : 'json',
			success : function(result){
				var json = eval('('+result+')');
				var pid = json.pid;   //父级id
				var arr = json.list;  //同级列表
				
				//显示同级列表并选中
				var options = '<option value="">请选择</option>';
				if(arr != null && arr.length > 0){
					for (var index in arr) {
						var item = arr[index];
						var arrValue = item[valuename];
						var opt = '';
						if(item[valuename] == initValue){
							opt = '<option selected="selected" value="'+item[valuename]+'">'+item[labelname]+'</option>';
						}else{
							opt = '<option value="'+item[valuename]+'">'+item[labelname]+'</option>';
						}
						
						options += opt;
					}
				}
				$this.html(options);
				
				//父级操作同理：显示父级同级列表并选中
				while(pid != undefined && pid != ''){
					
					$.ajax({
						type : 'POST',
						data : {'id':pid},
						url : upLink,
						dateType : 'json',
						success : function(result){
							var json = eval('('+result+')');
							pid = json.pid;       //父级id
							var arr = json.list;  //同级列表 
							
							if(arr == null || arr.length == 0){
								$this.nextAll('select').remove();
							}else{
								var appendSel = '<select onchange="_onchange(this);" class="xytSelect" link="'+ link
													+'" labelname="'+labelname+'" valuename="'+valuename
													+'"><option value="">请选择</option>';
								for(var i = 0; i < arr.length ; i++){
									var item = arr[i];
									var opt = '<option value="'+item[valuename]+'">'+item[labelname]+'</option>';
									appendSel += opt;
								}
								
								appendSel += '</select>';
								$this.before(appendSel);
							}
						}
						
					});
					
				} //父级下拉显示结束
				
			} //最外层的ajax的success结束
			
		}); //最外层的ajax
		
	}
	
	/*
	 * 初始化下拉框
	 */
	function _initSelect(){
		//遍历初始化相应级联下拉框
		$('.xytSelect').each(function(){
			var $this = $(this);
			
			//获取输入框的值,有则表示回显数据
			var initValue = $this.attr('initvalue');
			if(initValue != undefined && initValue != ''){
				_echo(initValue,this);
				return;
			}
			
			var link = $this.attr('link');
			var pid = $this.attr('pid');
			var valuename = $this.attr('valuename');
			var labelname = $this.attr('labelname');
			
			//获取下级数据 若有则进行select填充
			$.ajax({
				type : 'POST',
				data : {'pid':pid},
				url : link,
				dateType : 'json',
				success : function(result){
					var json = eval('('+result+')');
					var arr = json.list;
					
					var options = '<option value="">请选择</option>';
					if(arr != null && arr.length > 0){
						for (var index in arr) {
							var item = arr[index];
							var opt = '<option value="'+item[valuename]+'">'+item[labelname]+'</option>';
							options += opt;
						}
					}
					
					$this.html(options);
				}
			});
		});
	}
	
	//select点击选项事件
	function _onchange(obj){
		var $this = $(obj);
		var link = $this.attr('link');
		var pid = $this.val();
		var valuename = $this.attr('valuename');
		var labelname = $this.attr('labelname');
		
		//设置所选的值到input中
		$this.parent().children('input').val(pid);
		
		$this.nextAll('select').remove();
		if(pid != null || pid != ''){
			//获取下级数据 若有则进行select填充
			$.ajax({
				type : 'POST',
				data : {'pid':pid},
				url : link,
				dateType : 'json',
				success : function(result){
					var json = eval('('+result+')');
					var arr = json.list; 
					
					if(arr == null || arr.length == 0){
						$this.nextAll('select').remove();
					}else{
						var appendSel = '<select onchange="_onchange(this);" class="xytSelect" link="'+ link
											+'" labelname="'+labelname+'" valuename="'+valuename
											+'"><option value="">请选择</option>';
						for(var i = 0; i < arr.length ; i++){
							var item = arr[i];
							var opt = '<option value="'+item[valuename]+'">'+item[labelname]+'</option>';
							appendSel += opt;
						}
						
						appendSel += '</select>';
						$this.after(appendSel);
					}
				}
				
			});
			
		}
	}
