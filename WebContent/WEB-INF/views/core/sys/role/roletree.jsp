<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/bootstrap/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}static/js/easyui/themes/icon.css"/>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
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
            	url:'${basePath}admin/sys/role/userrolesave.htm',
            	method:'post',
            	data:'userid=${userid}&rolesid='+result,
            	dataType:'json',
            	success:function(res) {
            		if(res.success) {	
            			lrDialog.close("权限分配成功");
    				}
    				else {
    					lrDialog.alert(res.reason);
    					lrDialog.unmask();
    				}  
            	}
            });
        }
        
        $(function(){
        	$('#tt').tree({
        	    url:'${basePath}admin/sys/role/userroletree.htm?userid=${userid}',
        	    checkbox : true,
        	    cache : false,
        	    method:'get',
        	    animate:true
        	});
        })
    </script>
    <div class="dialogTop">
		<div class="easyui-panel" data-option="tools:'#toolsdiv'" style="padding: 5px" >
			<ul id="tt"></ul>
		</div>
	</div>
	<div class="dialogBottom">
		<div class="btns">
			<input type="button" value="确 定" class="lrBtnGreen"
				onclick="getChecked();" />
			<input type="button" value="关 闭" class="lrBtnGray"
				onclick="lrDialog.close();" />
		</div>
	</div>
</body>
</html>