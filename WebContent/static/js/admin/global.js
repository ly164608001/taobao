function addTab(_title,_url) {
	var boxId = '#tab-box';
	if($(boxId).tabs('exists',_title) ){
		var tab = $(boxId).tabs('getTab',_title);
		var index = $(boxId).tabs('getTabIndex',tab);
		$(boxId).tabs('select',index);
		if(tab && tab.find('iframe').length > 0){  
			 var _refresh_ifram = tab.find('iframe')[0];  
		     _refresh_ifram.contentWindow.location.href=_url;  
	    } 
	}else{		
		var _content ="<iframe scrolling='auto' frameborder='0' src='"+_url+"' style='width:100%; height:100%'></iframe>";
		$(boxId).tabs('add',{
			    title:_title,
			    content:_content,
			    closable:true});
		
	}
}
//初始化选择框
function InitSelect(_objid,_value)
{
	var myobj = document.getElementById(_objid);
	for(i=0;i<myobj.length;i++)
	{
		if(myobj[i].value == _value)
		{
			myobj[i].selected = true;
		}
	}		
}

/**工具类函数**/

//表单数据转成Json数据
function formtoJson(id) {
	var arr = $("#" + id).serializeArray();
	var jsonStr = "";
	jsonStr += '{';
	for (var i = 0; i < arr.length; i++) {
		jsonStr += '"' + arr[i].name + '":"' + arr[i].value + '",'
	}
	jsonStr = jsonStr.substring(0, (jsonStr.length - 1));
	jsonStr += '}'
	var json = eval('('+jsonStr+')');
	return json;
}




//全局变量
var defaultdeleteurl = "";			//默认删除路径
var toolbardata = [];				//菜单
var defaultpagesize = 10;			//默认分页数

/**全局数据函数**/

//删除行数据
function deleterowByTips(msg,_url)
{
	defaultdeleteurl = _url;
	$.messager.confirm('确认',msg,function(a){  
		if(a)
		{
			$.ajax({  
				url:defaultdeleteurl,
				dataType:'json',
				success:function(result){
					if(result.success){
						$('#dg').datagrid('reload');  
					}else{
						$.messager.alert('删除失败',result.msg);
					}
					
				}  
			});
		}          
	});  
}

//删除行数据
function deleterow(_url)
{
	deleterowByTips('确认删除?',_url);
}

//删除行数据
function deleterow2(_url)
{
	defaultdeleteurl = _url;
	$.messager.confirm('确认','确认删除?',function(a){  
		if(a)
		{
			$.ajax({  
				url:defaultdeleteurl,    
				success:function(){
					$('#dg2').datagrid('reload');  
				}  
			});
		}          
	});  
}

//删除行数据
function deleterow3(_url)
{
	defaultdeleteurl = _url;
	$.messager.confirm('确认','确认删除?',function(a){  
		if(a)
		{
			$.ajax({  
				url:defaultdeleteurl,    
				success:function(){
					window.location.reload();
				}  
			});
		}          
	});  
}

//搜索函数
function searchrow(){
	$('#dg').datagrid({ queryParams: formtoJson("dgquery") }); 
   	var p = $('#dg').datagrid('getPager');  
    $(p).pagination({  
        pageSize: 10,//每页显示的记录条数，默认为10  
        pageList: [2,5,10,15],//可以设置每页记录条数的列表  
        beforePageText: '第',//页数文本框前显示的汉字  
        afterPageText: '页    共 {pages} 页',  
        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录'
    });
}
//弹出框
function openDialog(_title,_url,_width,_height)
{
	$("#mydialog").dialog({
            title: _title,
            href: _url,
            modal: true,
            width:_width,
            height:_height
    });
}

function openDialog2(_title,_url,_width,_height)
{
	$("#mydialog2").dialog({
            title: _title,
            href: _url,
            modal: true,
            width:_width,
            height:_height
    });
}

//关闭弹窗
function closeDialog()
{
	$("#mydialog").dialog('close');
}

function closeDialog2()
{
	$("#mydialog2").dialog('close');
}

//关闭window
function closeWindow(){
	$('#goodscontent-window').window('close');
}

/**
 * 格式化时间
 * @param val 后台时间数据
 * @returns
 */
function formatterDate(val, row) {
	if(val == undefined || val == null || val == '' ){
		return '';
	}
	var date = new Date(val);
	var month = date.getMonth() + 1;
    var strDate = date.getDate();
    var result = date.getFullYear() + '-' +toTwoDigit(month) + '-' + toTwoDigit(strDate)
            + ' ' + toTwoDigit(date.getHours()) + ':' + toTwoDigit(date.getMinutes()) + ':' + toTwoDigit(date.getSeconds());
    return result;
	
}

/**
 * 将数字转为两位数字符串输出
 * @param num
 * @returns
 */
function toTwoDigit(num){
	return (num<10 ? '0'+num : num);
}