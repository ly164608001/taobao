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
		var url = "${basePath}admin/sys/menu/updatesave.htm";
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
		<input type="hidden" value="${model.id}" name="id" />
		<input type="hidden" value="${model.parent.id}" name="parent.id" />
		<input type="hidden" value="${model.parentids}" name="parentids"/>
		<div class="dialogTop">
			<table width="100%" border="0" align="center" cellspacing="10"
				cellpadding="0">
				<tr>
					<td width="100" class="right yhItem1">上级菜单:</td>
					<td>${model.parent.name}</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">名称:</td>
					<td><input name="name" type="text" class="lrText input138"
						value="${model.name}"></td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">链接:</td>
					<td><input name="href" type="text" class="lrText input138"
						value="${model.href}"></td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">排序:</td>
					<td><input name="sort" type="text" class="lrText input138"
						value="${model.sort}"></td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">类型:</td>
					<td>
						<select name="type" class="select144">
							<option value="0">菜单</option>
							<option value="1" <c:if test="${model.type==1}">selected</c:if>>按钮</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">所属:</td>
					<td>
						<select name="belong" class="select144">
							<option value="0">后台</option>
							<option value="1" <c:if test="${model.belong==1}">selected</c:if>>前台</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">角色类型:</td>
					<td>
						<select name="target" class="select144">
							<option value="admin" <c:if test="${model.target == 'admin'}">selected</c:if>>运营</option>
							<option value="member" <c:if test="${model.target == 'member'}">selected</c:if>>会员</option>
							<option value="agency" <c:if test="${model.target == 'agency'}">selected</c:if>>代理</option>
							<option value="estate" <c:if test="${model.target == 'estate'}">selected</c:if>>房地产商</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">是否显示:</td>
					<td>
						<c:if test="${model.isshow == 1}">
							<label>
								<input type="radio" value="1" name="isshow" checked />是
							</label>
							<label>
								<input type="radio" value="0" name="isshow" />否
							</label>
						</c:if>
						<c:if test="${model.isshow != 1}">
							<label>
								<input type="radio" value="1" name="isshow" />是
							</label>
							<label>
								<input type="radio" value="0" name="isshow" checked />否
							</label>
						</c:if>
					</td>
				</tr>
				<tr>
					<td width="100" class="right yhItem1">权限标识:</td>
					<td><input name="permission" type="text" class="lrText input138"
						value="${model.permission}"></td>
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