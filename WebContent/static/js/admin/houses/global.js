/**
 * 楼盘审核通过
 */
var HOUSES_AUDIT_PASS = 1;
/**
 * 楼盘审核未通过
 */
var HOUSES_AUDIT_NOPASS = -1;
/**
 * 楼盘未审核
 */
var HOUSES_AUDIT_NORMAL = 0;
/**
 * 房源销售状态：待售
 */
var HOUSES_SOURCE_DS = 1;
/**
 *  房源销售状态：在售
 */
var HOUSES_SOURCE_ZS = 2;
/**
 *  房源销售状态：已售
 */
var HOUSES_SOURCE_YS = 3;

//审核楼盘
function audit(_url,mes)
{
	$.messager.confirm('确认',mes+'?',function(a){  
		if(a)
		{
			$.ajax({  
				url:_url,    
				success:function(){
					$('#dg').datagrid('reload');  
				}  
			});
		}          
	});  
}

/**
 * 列表显示审核状态
 * @param value
 * @param row
 * @returns {String}
 */
function show_audit_mes(value,row)
{
	 var str = "";
	 if(row.status == HOUSES_AUDIT_PASS){
		 str = "通过";
	 }else  if(row.status == HOUSES_AUDIT_NOPASS){
		 str = "不通过";
	 }
	 return str;
}
/**
 * 列表显示房源销售状态
 */
function show_source_sale_mes(value,row){
	 var str = "";
	 if(row.status == HOUSES_SOURCE_DS){
		 str = "待售";
	 }else  if(row.status == HOUSES_SOURCE_ZS){
		 str = "在售";
	 }
	 else  if(row.status == HOUSES_SOURCE_YS){
		 str = "已售";
	 }
	 return str;
}


//删除楼盘
function deleteHouses(_url,mes)
{
	$.messager.confirm('确认',mes+'?',function(a){  
		if(a)
		{
			$.ajax({  
				url:_url,    
				success:function(rusert){
					var data = JSON.parse(rusert);
					$('#dg').datagrid('reload');  
					if(!data.success){
						alert(data.mes);
					}
					
				}
			});
		}          
	});  
}

