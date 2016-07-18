	/**
	 * @desc 级联下拉控件
	 * @author 薛云腾
	 * @version v1.0
	 * @date 2016-06-28 23:54:12
	 */
	//初始化select
    $(function(){
         _initSelect();
      });
      
	function _initSelect(){
		$('.xytSelect').each(function(){
			var $this = $(this);
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
