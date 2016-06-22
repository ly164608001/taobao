<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
</head>
<body>
	<div class="contaniner">
	  <div class="div-content">
		<table class="table table-hover" cellpadding="5">
		            <tr>
						<td>浏览用户:</td>
						<td>${model.user.username}</td>
					</tr>
					<tr>
						<td>浏览楼盘名字:</td>
						<td>${model.house.name}</td>
					</tr>
			        <tr>
				        <td>访问时间:</td>
				        <td>${model.browertime}</td>
			        </tr>
			       <%--  <tr>
				        <td>删除标识:</td>
				        <td>${model.deleted}</td>
			       </tr> --%>
			       <tr>
				      <td></td>
				      <td><input type="hidden" value="${model.id}" name="id" />
			     	</tr>
			     	
			 <tr>
				<td></td>
				<td>
					<a href="javascript:closeDialog();" class="easyui-linkbutton">关 闭</a>
				</td>
			</tr>
			
		</table>
	</div></div>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>