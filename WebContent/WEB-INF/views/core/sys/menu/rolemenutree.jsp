<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<link rel="stylesheet" href="${basePath}static/ztree/skin/zTree.css" type="text/css" />
<link rel="stylesheet" href="${basePath}static/ztree/skin/zTreeStyle/zTreeStyle.css" type="text/css" />
<script type="text/javascript" src="${basePath}static/ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="${basePath}static/ztree/jquery.ztree.excheck-3.5.js"></script>
</head>
<script type="text/javascript">
var setting = {
	check : {
		enable : true
	},
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
	var url = "${basePath}admin/sys/menu/datarolemenutree.htm?roleid=${roleid}";
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
function checkSubmit() {
	lrDialog.confirm("是否确定对角色权限进行修改？", function() {
		var menuids = "";
		var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
		var nodes = treeObj.getCheckedNodes(true);
		for (var j = 0; j < nodes.length; j++) {
			menuids += "," + nodes[j].id;
		}
		if (!isNull(menuids)) {
			menuids = menuids.substring(1);
		}
		$("#menuids").val(menuids);
		submitForm();
	});
}
function submitForm(){
	var url = "${basePath}admin/sys/menu/rolemenusave.htm";
	$.ajax({
		type : "POST",
		url : url,
		dataType : "text",
		data : $("#submitForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				lrDialog.close("权限分配成功!");
			} else {
				lrDialog.alert(res.reason);
				lrDialog.unmask();
			}
		},
		error : function() {

		}
	});
}
</script>
<body style="min-width: 0px;background-color: #fff;">
	<form id="submitForm" name="submitForm" method="post">
		<input type="hidden" name="roleid" value="${roleid}" />
		<input type="hidden" name="menuids" value="" id="menuids" />
		<div class="dialogTop">
			<ul id="treeDemo" class="ztree"
				style="border:1px solid #ccc;background-color: rgb(250, 250, 250);"></ul>
		</div>
		<div class="dialogBottom">
			<div class="btns">
				<input type="button" value="确 定" class="lrBtnGreen"
					onclick="checkSubmit();" />
				<input type="button" value="关 闭" class="lrBtnGray"
					onclick="lrDialog.close();" />
			</div>
		</div>
	</form>
</body>
</html>