<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微太网-后台管理中心</title>
<link href="${basePath}static/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${basePath}static/css/login.css"/>
<script src="${basePath}static/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
<style type="text/css">
.formerror {
	position: absolute;
	width: 200px;
	height: 33px;
	border: 1px solid #ccc;
	padding-left: 5px;
	color: #666;
	line-height: 33px;
	background-color: #FFF;
	margin-left: 10px;
	font-size: 12px;
	font-style: none;
}
</style>
<script type="text/javascript">
if (window != top) 
	top.location.href = location.href;
function checkSubmit(){
	var username = $("#username").val();
	var password = $("#password").val();
	if(isNull(username)){
		$("#msg").html("用户名不能为空！");
		return ;
	}
	if(isNull(password)){
		$("#msg").html("密码不能为空！");
		return;
	}
	submitForm();
}
function submitForm()
{
	var url = "${basePath}admin/tologin.json";
	$.ajax({
		type : "POST",
		url : url,
		datatype : "json",
		data : $("#loginForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (res.success) {
				window.location = "${basePath}admin/index.htm";
			} else {
				$("#msg").html(res.msg);
			}
		},
		error : function() {

		}
	});
}
</script>
</head>
<body>
	<div class="background" style="background-image: url('${basePath}static/images/bg.jpg')"></div>
	<div class="loginbox">
		<div class="title">
			<div class="logo">
				<i class="icon-cloud"></i>WeiTaiNet.Com
			</div>
			<div class='info'>————万万楼.后台管理</div>
		</div>
		<div class="form">
			<form id="loginForm" method="post">
				<div class="inputs">
					<div>
						<span>用户名：</span><input id="username" name='username' type="text" />
					</div>
					<div>
						<span>密码：</span><input id="password" name='password'
							type="password" />
					</div>

				</div>
				<div class="actions">
					<input type="button" id="submit" value="登录 " onclick="checkSubmit();"/> <input
						type="checkbox" class="checkbox" name="rember_password" id='rm'
						checked='checked' /> <label for='rm'>记住密码</label>
				</div>
				<div class="msg" id="msg"></div>
				<div style="clear: both;"></div>
			</form>
		</div>
	</div>
	<div class="common_footer">版权所有：宏林互联电子商务有限公司</div>
</body>
</html>