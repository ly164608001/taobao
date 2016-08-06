<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>添加银行卡</title>
	<script type="text/javascript" src="${basePath}static/js/select.js"></script>
</head>
<body>
	<section>
		<div class="addCar">
			<form action="${basePath}front/buyer/money/addSaveBankCard.htm" method="post" class="form form-horizontal" id="submitForm">

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						您的提现银行：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="select-box">
							<select class="select" size="1" name="bank.id">
								<option value="">请选择</option>
								<c:forEach items="${bankList}" var="bank">
									<option value="${bank.id}">${bank.bankname}</option>
								</c:forEach>
							</select>
						</span>
					</div>

				</div>
				<div class="cl">
					<span class="wrong-tips">请输入您的开户银行</span>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						银行开户姓名：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" name="accountname" class="input-text" placeholder="银行开户姓名"></div>

				</div>
				<div class="cl">
					<span class="wrong-tips">此姓名必须与银行卡的开户姓名一致，否则后果自负！</span>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						你的银行账号：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" name="accountno" class="input-text" placeholder="请输入你的银行账号"></div>

				</div>
				<div class="cl">
					<span class="wrong-tips">请输入您的银行卡号，银行账户口需与身份证上的一致</span>
				</div>
				<div class="row cl special">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						开户银行支行：
					</label>
					<div class="formControls col-xs-2 col-sm-3">
						<span>
							<select onchange="_onchange(this);" class="xytSelect"
									link="${basePath}common/area/getAreasByPid.htm" pid="100000"
									valuename="id" labelname="areaname">
							</select>
							<input type="hidden" value="" name="area.id" />
						</span>
					</div>
				</div>
				<div class="cl">
					<span class="wrong-tips">请选择开户银行地区</span>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						支行名称：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" name="bankname" class="input-text" placeholder="请输入支行名称"></div>

				</div>
				<div class="cl">
					<span class="wrong-tips">请输入开户银行地址，例如：北京朝阳支行</span>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						交易密码：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="password" class="input-text" name="paypassword" placeholder="请输入交易密码"></div>

				</div>
				<div class="cl">
					<span class="wrong-tips">请输入交易密码,默认为登录密码</span>
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
