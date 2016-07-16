<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<script type="text/javascript">
	function checkSubmit() {
		//TODO验证数据有效性
		submitForm();
	}
	function submitForm(){
		var url = "${basePath}admin/sys/role/addsave.htm";
		$.ajax({
			type : "POST",
			url : url,
			dataType : "text",
			data : $("#submitForm").serialize(),
			success : function(result) {
				var res = JSON.parse(result);
				if (res.success) {
					//ldDialog.tips("新增成功");
					lrDialog.close(res.msg);
				} else {
					lrDialog.alert(res.msg);
					lrDialog.unmask();
				}
			},
			error : function() {

			}
		});
	}

</script>
</head>
<body>
	<form method="post" id="submitForm">
		<input type="hidden" name="companyid" value="-1"/>
		<div class="dialogTop">
			<table width="100%" border="0" align="center" cellspacing="10"
				cellpadding="0">
				<tr>
					<td width="100" class="right yhItem1">名称:</td>
					<td><input name="name" type="text" class="lrText input138"
						value="${model.name}"></td>
				</tr>
			</table>
		</div>
		<div class="dialogBottom">
			<div class="btns">
				<input type="button" value="确 定" class="lrBtnGreen"
					onclick="return checkSubmit();" />
				<input type="button" value="关 闭" class="lrBtnGray"
					onclick="lrDialog.close();" />
			</div>
		</div>
	</form>
</body>
</html>