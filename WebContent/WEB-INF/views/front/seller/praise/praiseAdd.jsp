<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>添加好评内容</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form id="submitForm" action="${basePath}front/seller/praise/addsave.htm" method="post" class="form form-horizontal">

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						标签：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<select class="select" name="label.id">
								<option value="">请选择</option>
								<c:forEach items="${labelList}" var="label">
									<option value="${label.id}">${label.name}</option>
								</c:forEach>
							</select>
						</span>
					</div>

				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						规定好评内容：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<textarea name="content"></textarea>
					</div>
				</div>
		</form>
	</div>
</section>

</body>
</html>
