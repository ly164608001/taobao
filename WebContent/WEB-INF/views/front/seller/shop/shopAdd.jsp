<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>添加店铺</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form id="submitForm" method="post" action="${basePath}front/seller/shop/addsave.htm" class="form form-horizontal">
				<input name="type" value="${type}" type="hidden"/>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>所属品类：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<select class="select" name="goodsType.id">
								<option value="">请选择</option>
								<c:forEach items="${goodsTypeList}" var="type">
									<option value="${type.id}">${type.typename}</option>
								</c:forEach>
							</select>
						</span>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>店铺名称：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="name" />
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>掌柜号：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="manager"/>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>店铺首页地址：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="indexurl"/>
					</div>
				</div>
		</form>
	</div>
</section>

</body>
</html>