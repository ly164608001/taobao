<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>添加收货地址</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form action="" method="post" class="form form-horizontal" id="demoform-1">

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						标签：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<select class="select" size="1" name="demo1">
								<option value="" selected="">省</option>
								<option value="1">菜单一</option>
								<option value="2">菜单二</option>
								<option value="3">菜单三</option>
							</select>
						</span>
					</div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						姓名：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" placeholder="银行开户姓名"></div>

				</div>
				<!-- <div class="cl">
						<span class="wrong-tips">此姓名必须与银行卡的开户姓名一致，否则后果自负！</span>
					</div>
					-->
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">
					<span class="c-red">*</span>
					电话：
				</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" autocomplete="off" placeholder="请输入你的银行账号"></div>

			</div>
			<!-- <div class="cl">
			<span class="wrong-tips">请输入您的银行卡号，银行账户口需与身份证上的一致</span>
		</div>
		-->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">邮编：</label>
			<div class="formControls col-xs-4 col-sm-3">
				<input type="text" class="input-text" autocomplete="off" placeholder="请输入支行名称"></div>

		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">
				<span class="c-red">*</span>
				收货地址：
			</label>
			<div class="formControls col-xs-4 col-sm-3">
				<textarea></textarea>

			</div>

		</form>
	</div>
</section>

</body>
</html>
