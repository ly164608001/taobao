<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>绑定淘宝买号</title>
</head>
<body>
	<section>
		<div class="addCar">
			<form action="${basePath}front/buyer/account/addsave.htm" method="post" class="form form-horizontal" id="submitForm">

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>淘宝账号：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" name="accountno" value="${accountno}" 
								placeholder="必须与淘宝账号完全相同" validator="{required:true}"/>
					</div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>是否实名：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="radio" name="identification" value="1" />是
						<input type="radio" name="identification" value="0" checked="checked" />否
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>信誉：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" validator="{required:true}" name="credit"
								placeholder="请真实填写，请勿随意" onkeydown="onlyNum();"/></div>

				</div>

				<!-- <div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>信誉截图：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<textarea>这边是截图示例</textarea>
					</div>
				</div> -->

		</form>
	</div>
</section>

<script type="text/javascript">
		function checkForm(){
			var validResult = validateForm('submitForm');
			if(!validResult.success){
				layer.tips(validResult.msg, validResult.validElem);
				return false;
			}else{
				return true;
			} 
		}
	</script>

</body>
</html>
