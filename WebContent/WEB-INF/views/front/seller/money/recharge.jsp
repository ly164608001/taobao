<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>账号充值</title>
	<script type="text/javascript">
		$(function(){
			//初始化选择支付款转账
			selAlipay();
			
			//tab切换
			$('.payChannel').click(function(){
				var opr = $(this).text();
				//选中样式
				$('.payChannel').removeClass('current');
				$(this).addClass('current');
				
				if('支付宝转账' == opr){
					selAlipay();
				}else if('财付通转账' == opr){
					selCFT();
				}else if('充值记录' == opr){
					
				}
				
			});
			
			$('#btn-submit').click(function(){
				$.ajax({
					type : 'get',
					 url : basePath + 'front/seller/money/doRecharge.htm',
					data : $('#submitForm').serialize(),
					dataType : 'json',
					success : function(result){
						if(result.success){
							top.layer.msg('充值申请已提交');
							$('#submitForm')[0].reset();
						}else{
							top.layer.msg(result.msg);
						}
					}
				}); 
			});
			
		});
		
		//支付宝转账
		function selAlipay(){
			$('#channel').val('1');
			$('#platAccountLabel').html('支付宝收款帐号：');
			$('#platAccountSpan').html('mayi@qq.com');
			$('#platNameLabel').html('支付宝收款姓名：');
			$('#platNameSpan').html('蚂蚁兼职');
			$('#payno').html('支付宝交易号：');
			$('#payAccountLabel').html('支付宝账号');
			$('#payAccountTip').html('E-mail地址或手机号');
			$('#getPayNoTip').html('<i></i>如何获取支付宝交易号?');
			$('#rechargeTip').html('2、转账完毕后，在此页面验证支付宝交易号和您的支付宝帐号，三十分钟内自动到账。');
			$('#showPic').attr('src',basePath + 'static/css/front/images/alipaylz.jpg');
		}
		//财付通转账
		function selCFT(){
			$('#channel').val('2');
			$('#platAccountLabel').html('财付通收款帐号：');
			$('#platAccountSpan').html('225145');
			$('#platNameLabel').html('财付通收款姓名：');
			$('#platNameSpan').html('蚂蚁兼职');
			$('#payno').html('财付通交易号：');
			$('#payAccountLabel').html('财付通账号');
			$('#payAccountTip').html('QQ号');
			$('#getPayNoTip').html('<i></i>如何获取财付通交易号?');
			$('#rechargeTip').html('2、转账完毕后，在此页面验证财付通交易号和您的财付通帐号，三十分钟内自动到账。');
			$('#showPic').attr('src',basePath + 'static/css/front/images/pay-tenpay.gif');
		}
		
	</script>
</head>

<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">账号充值</span>
	</h4>
	<p>
		<span class="orange">重要提示：</span>
		请商家充值成功后，再回到本页面提交充值的相关信息，如恶意提交充值信息，经查实，初犯扣200元，再犯封号处理，同时通知相关任务的刷手全部申请退款！
	</p>
	<div class="btnWrap clearfix">
		<p>
			现金账户余额：
			<span class="orange">${money.allbalance}</span>
			元
		</p>
		<div>
			<div class="tabBar cl">
				<span class="current payChannel">支付宝转账</span>
				<span class="payChannel">财付通转账</span> 
				<span class="payChannel">充值记录</span>
			</div>
			<div class="tabCon" style="display: block;">
				<h5 class="orange">温馨提示：</h5>
				<p>1、目前只接受直接转账，转账时请预留您的旺旺刷帐号名。</p>
				<p id="rechargeTip">2、转账完毕后，在此页面验证支付宝交易号和您的支付宝帐号，三十分钟内自动到账。</p>
				<div class="moneyOrder rechange">
					<form method="post" class="form form-horizontal" id="submitForm">
						<input type="hidden" name="channel" id="channel" value="1" />
						<legend></legend>
						<h4>第一步：转账到以下账户</h4>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3" id="platAccountLabel"></label>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">
									<span class="orange" id="platAccountSpan"></span>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3" id="platNameLabel"></label>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">
									<span class="orange" id="platNameSpan"></span>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">付款说明：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" name="memo" value="${username}"></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="onShow">说明：即本平台的用户名</span>
							</div>
						</div>
						<h4>第二步：提交以下本次转账交易信息</h4>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3" id="payno"></label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" name="payno" placeholder="请输入交易号"></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="crechange-tip">
									<a href="#" id="getPayNoTip"></a>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3" id="payAccountLabel"></label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" name="payaccount" placeholder="请输入账号"></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="onShow" id="payAccountTip"></span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">转账金额：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" name="money" placeholder="转账金额"></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">元</span>
							</div>
						</div>
						<div class="row cl">
							<div class="col-xs-2 col-sm-4 btnWrap">
								<input class="btn radius btn-secondary btn-ti" id="btn-submit" type="button" value="提交转账信息"></div>
						</div>
						<h5>充值示例如下图：</h5>
						<div class="rechange-img">
							<img id="showPic" src="${basePath}static/css/front/images/alipaylz.jpg" alt=""></div>
					</form>
				</div>
			</div>
			
		</div>
	</div>
</div>

</body>
</html>
