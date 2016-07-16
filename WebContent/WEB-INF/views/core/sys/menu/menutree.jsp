<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" href="${basePath}static/ztree/skin/zTree.css" type="text/css" />
<link rel="stylesheet" href="${basePath}static/ztree/skin/zTreeStyle/zTreeStyle.css" type="text/css" />
<script type="text/javascript" src="${basePath}static/ztree/jquery.ztree.core-3.5.js"></script>
</head>
<script type="text/javascript">
var setting = {
	view : {
		dblClickExpand : dblClickExpand
	},
	data : {
		simpleData : {
			enable : true,
			pIdKey : "upId"
		}
	}
};

function dblClickExpand(treeId, treeNode) {
	return treeNode.level > 0;
}

$(document).ready(function() {
	var url = "${basePath}admin/sys/menu/datamenutree.htm";
	$.ajax({
		type : "GET",
		url : url,
		datatype : "json",
		async:false,
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				var zNodes = JSON.parse(res.menuJson);
				$.fn.zTree.init($("#treeDemo"), setting, zNodes);
				lrDialog.unmask();
			} else {
				lrDialog.alert(res.reason);
				lrDialog.unmask();
			}
		},
		error : function() {
		}
	});
});
</script>
<body style="min-width: 0px;background-color: #fff;">
	<div>
		<ul id="treeDemo" class="ztree"
			style="width:210px;border:1px solid #ccc;background-color: rgb(250, 250, 250);"></ul>
	</div>
</body>
</html>