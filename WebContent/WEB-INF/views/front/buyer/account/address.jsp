<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>添加收货地址</title>
	<script type="text/javascript" src="${basePath}static/js/select.js"></script>
</head>
<body>
	<section>
		<div class="addCar">
			<form action="${basePath}front/buyer/account/addressSave.htm" method="post" class="form form-horizontal" id="submitForm">

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						省/市/区县：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<span>
								<select onchange="_onchange(this);" class="xytSelect"
										link="${basePath}common/area/getAreasByPid.htm" pid="100000"
										uplink="${basePath}common/area/getSiblingsById.htm" initvalue="${model.area.id}"
										valuename="id" labelname="areaname">
								</select>
								<input type="hidden" value="${model.area.id}" name="area.id" />
							</span>
						</span>
					</div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>收货人：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="receiptname"
								placeholder="必须与淘宝上收货人姓名相同" value="${model.receiptname}"></div>

				</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">
					<span class="c-red">*</span>
					收货人手机号码：
				</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" name="receiptphone"
							placeholder="必须和淘宝上登记的收货人信息一致" value="${model.receiptphone}"></div>

			</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>交易密码：</label>
			<div class="formControls col-xs-4 col-sm-3">
				<input type="text" name="paypassword" class="input-text" placeholder="请输入交易密码">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">
				<span class="c-red">*</span>详细地址：
			</label>
			<div class="formControls col-xs-4 col-sm-3">
				<textarea name="address">${model.address}</textarea>

			</div>

		</form>
	</div>
</section>

</body>
</html>
