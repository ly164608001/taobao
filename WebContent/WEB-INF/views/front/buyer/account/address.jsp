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
						省/市/区县：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<span>
								<select onchange="_onchange(this);" class="xytSelect"
										link="${basePath}admin/helpcenter/menu/getlistbypid.htm" pid="-1"
										valuename="id" labelname="name">
								</select>
								<input type="hidden" value="" name="menu.id" required="required" id="menuid"/>
							</span>
						</span>
					</div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>收货人：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" placeholder="必须与淘宝上收货人姓名相同"></div>

				</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">
					<span class="c-red">*</span>
					收货人手机号码：
				</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" autocomplete="off" placeholder="必须和淘宝上登记的收货人信息一致"></div>

			</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>交易密码：</label>
			<div class="formControls col-xs-4 col-sm-3">
				<input type="text" class="input-text" autocomplete="off" placeholder="请输入交易密码"></div>

		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">
				<span class="c-red">*</span>详细地址：
			</label>
			<div class="formControls col-xs-4 col-sm-3">
				<textarea>必须要与淘宝上的地址一致</textarea>

			</div>

		</form>
	</div>
</section>

</body>
</html>
