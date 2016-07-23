<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>vpn设置</title>
</head>
<body>
	<section>
		
		<div class="addCar pob-addBuySddress pobMinitaobao">
			<form action="${basePath}front/buyer/account/vpnSave.htm" method="post" class="form form-horizontal" id="submitForm">
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>淘宝号/旺旺号：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<span class="red">${model.account.accountno}</span>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号登入密码：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号绑定的支付宝账号：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号绑定的支付宝支付密码：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号绑定的手机卡：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						VPN名称：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						VPN接点/线路：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号登录IP<IPspan class="red">*</IPspan> ：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>
						<div id="ipTip" class="onShow">请输入旺旺号登录的IP.<span class="c_f0">一般为VPN切换IP后，小号登录时的IP</span></div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-3 col-sm-3">
						<span class="c-red">*</span>
						省/市/区县：
					</label>
					<div class="formControls col-xs-3 col-sm-3 formControlsArea">
						<span class="select-box">
							<select class="select" size="1" name="demo1">
								<option value="" selected="">省</option>
								<option value="1">菜单一</option>
								<option value="2">菜单二</option>
								<option value="3">菜单三</option>
							</select>
						</span>
					</div>
					<div class="formControls col-xs-3 col-sm-3 formControlsArea">
						<span class="select-box">
							<select class="select" size="1" name="demo1">
								<option value="" selected="">市</option>
								<option value="1">菜单一</option>
								<option value="2">菜单二</option>
								<option value="3">菜单三</option>
							</select>
						</span>
					</div>
					<div class="formControls col-xs-3 col-sm-3 formControlsArea">
						<span class="select-box">
							<select class="select" size="1" name="demo1">
								<option value="" selected="">区</option>
								<option value="1">菜单一</option>
								<option value="2">菜单二</option>
								<option value="3">菜单三</option>
							</select>
						</span>
					</div>
					<div id="ddlCityIdTip" class="onShow">请选择旺旺号经常登录的省/市/区县</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号/VPN所在电脑名称：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号/VPN所在电脑MAC：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>	
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						旺旺号登录详细地址：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" /></div>
						<div id="addressTip" class="onShow">无需重复填写省/市。<span class="c_f0">防止一个旺旺号出现在不同地区登录导致号异常</span></div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						收货人姓名：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="text" class="input-text" autocomplete="off" placeholder="收货人姓名" ></div>
						<div id="linknameTip" class="onShow">请输入收货人姓名，<span class="c_f0">必须与淘宝上收货人姓名相同</span></div>

				</div>
				
				
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						本平台交易密码：
					</label>
					<div class="formControls col-xs-4 col-sm-3">
						<input type="password" class="input-text" autocomplete="off" placeholder="交易密码" ></div>
						<div id="paypwdTip" class="onShow">请输入交易密码</div>

				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">
						<span class="c-red">*</span>
						备注：
					</label>
					<div class="formControls col-xs-8 col-sm-6" style="width: 500px">
						<textarea></textarea>

				</div>
				
			
			</form>
		</div>
	</section>

</body>
</html>
