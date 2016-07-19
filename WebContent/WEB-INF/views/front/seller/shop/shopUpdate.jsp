<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>修改店铺</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form id="submitForm" method="post" action="${basePath}front/seller/shop/updatesave.htm" class="form form-horizontal">
				<input name="id" value="${model.id}" type="hidden"/>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>店铺名称：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="name" value="${model.name}"/>
					</div>
				</div>
	</form>
</div>
</section>

</body>
</html>