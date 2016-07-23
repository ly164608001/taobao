<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>基础信息</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
</head>
	
<body>
	<section>
		<div class="black-remind"> <i></i>
			<p>
				1、请设置淘宝号个人资料中年龄和性别
				<br></p>
		</div>
		<div class="addCar">
			<form action="${basePath}front/buyer/account/updateBaseInfo.htm" method="post" class="form form-horizontal" id="submitForm">
				<input type="hidden" name="id" value="${model.id}"/>
				<div class="row cl">
					<label class="form-label col-xs-3 col-sm-3">
						<span class="c-red">*</span>
						性别：
					</label>
					<div class="formControls col-xs-3 col-sm-3">
						<span class="select-box">
							<select class="select" name="sex">
								<option <c:if test="${fns:getDictValue('男','SEX','') == model.sex}">selected</c:if>
									 value="${fns:getDictValue('男','SEX','')}">男</option>
								<option <c:if test="${fns:getDictValue('女','SEX','') == model.sex}">selected</c:if>
									value="${fns:getDictValue('女','SEX','')}">女</option>
							</select>
						</span>
					</div>

				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>生日：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span>
							<input class="Wdate write-time input-text radius size-M"  type="text" 
									name="birthday" value="<f:formatDate value="${model.birthday}" pattern="yyyy-MM-dd"/>"
								 onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd&quot;,isShowClear:false,readOnly:true});"/>
						</span>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						交易密码：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="password" class="input-text" name="paypassword"
								autocomplete="off" placeholder="交易密码" ></div>

				</div>

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
