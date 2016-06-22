<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="/js/admin/global.js"></script>
</head>
<body>
	<script type="text/javascript">
        function getChecked(){
        	var result = "";
            var inodes = $('#tt').tree('getChecked','indeterminate');
            var nodes =  $('#tt').tree('getChecked');
            for(var i=0; i<nodes.length; i++){
                if (result != '') result += ',';
               		result += nodes[i].id;
            }
            for(var i=0; i<inodes.length; i++){
                if (result != '') result += ',';
               		result += inodes[i].id;
            }
            $.ajax({
            	url:'${basePath}admin/sys/menu/menutreesave.htm',
            	method:'post',
            	data:'roleid=${roleid}&menuids='+result,
            	dataType:'json',
            	success:function(json)
            	{
            		if(json.success)
    				{	
    					$.messager.alert("提示","提交成功");
    					closeDialog();
    				}
    				else
    				{
    					$.messager.alert("提示",json.msg);
    				}  
            	}
            });
        }
        
        $(function(){
        	$('#tt').tree({
        	    url:'${basePath}admin/sys/menu/datamenutree.htm?roleid=${roleid}&${radom}',
        	    checkbox : true,
        	    cache : false,
        	    method:'get',
        	    animate:true
        	    
        	});
        })
    </script>
	<div class="easyui-panel" style="padding: 5px">
		<ul id="tt"></ul>
	</div>
	<div style="margin: 20px 0;">
		<a href="#" class="easyui-linkbutton" onclick="getChecked()">确 定</a>&nbsp;
		<a href="#" class="easyui-linkbutton" onclick="closeDialog()">取 消</a>
	</div>
</body>
</html>