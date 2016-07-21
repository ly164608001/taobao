/*
 *  弹出框(基于layer插件)
 *  @author 薛云腾
 *  @version v1.0
 *  @date 2016-07-19 10:30
*/

/**
 * 确认框
 * @Param timMsg 提示信息
 * @Param url 访问url
 * @Param succssFn 操作成功回调的方法名(无参方法名)
 * 				   在调用的页面上自定义succssFn的方法
 */
function layerConfirm(url,timMsg,succssFn){
	var layerConfirm = top.layer.open({
        type : 1,
        content : timMsg,
        shadeClose : true,
        title : ['确认'],
        btn : ['确认','取消'],
        yes : function(){
        	$.ajax({
				type : 'get',
				 url : url,
				dataType : 'json',
				success : function(result){
					if(result.success){
						top.layer.close(layerConfirm);
						var func = eval(succssFn);
						new func();
					}else{
						top.layer.alert(result.msg);
					}
				}
			}); 
        }
    });
} 


/**
 * 信息输入框Prompt，使用iframe复杂表单(一个单独页面)数据填写
 *   *要求：1 子页面中表单id为submitForm，且要有action属性
 *        2 子页面中要有checkForm方法，对验证失败结果的样式处理提示，并返回验证结果
 * @param iframeUrl iframe访问地址
 * @param title 标题
 * @param width 宽度(单位px)
 * @param height 高度(单位px)
 * @Param succssFn 操作成功回调的方法名(无参方法名)
 * 				   在调用的页面上自定义succssFn的方法
 */
function layerPromptIframe(iframeUrl,title,succssFn,width,height){
	if(width == null || width == undefined){
		width = 600;
	}
	if(height == null || height == undefined){
		height = 400;
	}
	
	var indexIframe = layer.open({
        type : 2,
        area : [ width + 'px', height + 'px'],
        closeBtn : 1,
        shadeClose : true,
        content : [ iframeUrl,'no'],
        title : title,
        btn : ['确定','取消'],
        yes : function(index, layero){
        	//获取弹出框DOM的body元素
        	var body = top.layer.getChildFrame('body', index);
        	var url = body.find('#submitForm').attr('action');
        	//验证表单(需要子页面定义个checkForm方法，处理验证失败的消息提示并返回验证结果)
        	var iframeWin = window[layero.find('iframe')[0]['name']]; 
        	var isValid = iframeWin.checkForm();
        	if(!isValid){
        		return;
        	}
        	//提交
            $.ajax({
				type : 'post',
				 url : url,
				data : body.find('#submitForm').serialize(),
				dataType : 'json',
				success : function(result){
					if(result.success){
						top.layer.close(indexIframe);
						var func = eval(succssFn);
						new func();
					}else{
						top.layer.alert(result.msg);
					}
				}
			}); 
            
        }
    });
    
}