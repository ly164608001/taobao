<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>修改标签</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form action="${basePath}front/seller/label/updatesave.htm" method="post" class="form form-horizontal">
				
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						标签：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="name" value="${model.name}" /></div>

				</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">
					<span class="c-red">*</span>
					排序值：
				</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" name="sort" value="${model.sort}"/></div>

			</div>
	</form>
</div>
</section>

</body>
</html>