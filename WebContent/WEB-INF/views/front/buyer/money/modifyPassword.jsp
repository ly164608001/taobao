<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>修改密码</title>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">修改密码</span>
	</h4>
	<div id="tab_detail" class="HuiTab userPsw">
		<div class="tabBar cl">
			<span class="current">登入密码</span>
			<span class="">交易密码</span>
		</div>
		<div class="tabCon" style="display: block;">
			<form action="" method="post" class="form form-horizontal" id="demoform-1">
				<div class="row cl money-list">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">当前登入密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-2 col-sm-3">
							<span class="onShow">请输入原登录密码</span>
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">新密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-2 col-sm-3">
							<span class="onFocus">请输入新密码</span>
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">确认密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-2 col-sm-3">
							<span class="onFocus onError">确认密码</span>
						</div>
					</div>
					<div class="row cl">
						<div class="col-xs-2 col-sm-4 btnWrap">
							<input class="btn radius btn-secondary btn-ti" type="submit" value="确定修改"></div>
					</div>
				</form>
			</div>
		</div>
		<div class="tabCon" style="display: none;">
			<form action="" method="post" class="form form-horizontal" id="demoform-1">
				<div class="row cl money-list">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">当前交易密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-4 col-sm-6">
							<span class="onShow">请输入旧交易密码(首次修改，默认密码为登录密码)</span>
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">新密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-4 col-sm-6">
							<span class="onShow">请输入新密码</span>
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">确认密码：</label>
						<div class="formControls col-xs-2 col-sm-3">
							<input type="password" class="input-text" autocomplete="off" placeholder="请输入当前登入密码"></div>
						<div class="formControls col-xs-4 col-sm-6">
							<span class="onShow">确认密码</span>
						</div>
					</div>
					<div class="row cl">
						<div class="col-xs-2 col-sm-4 btnWrap">
							<input class="btn radius btn-secondary btn-ti" type="submit" value="确定修改"></div>
					</div>
				</form>
			</div>

		</div>
</body>
</html>