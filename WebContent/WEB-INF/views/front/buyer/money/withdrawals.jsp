<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>申请提现</title>
	<script>
		
		$(function(){
			//默认24小时到账
			change24Time();
			
			//到账时间点击显示
			$('.typeSpan').click(function(){
				var value = $(this).attr('name');
				//设置提现类型值
				$('#type').val(value);
				//显示提示
				if(value == 1){
					$('#moneyLimitSpan').html('请输入提现金额，金额要100元起');
					change24Time();
				}else{
					$('#moneyLimitSpan').html('请输入提现金额，金额至少5元起');
					$('#typeTips').html('“选择快速到账” 提现时请在工作时间（周一至周五 9：00-17：00）内申请，否则不能2小时到账，金额5元起。快速到账规则看本页面下方！');
				}
				
			});
			
			//提现金额输入框失焦事件
			$('#moneyInput').blur(function(){
				var type = $('#type').val();
				//验证输入金额
				var money = parseFloat($(this).val());
				var usablebalance = parseFloat($('#usablebalance').val());
				if(money == ''){
					top.layer.alert('请输入提现金额值');
					return;
				}
				if(type == 1 && money < 100){
					top.layer.alert('正常到账金额不可低于100元');
					$(this).val('');
					return;
				}
				if(type == 2 && money < 5){
					top.layer.alert('快速到账金额不可低于5元');
					$(this).val('');
					return;
				}
				if(money > usablebalance){
					top.layer.alert('提现金额不可大于账户可用金额');
					$(this).val('');
					return;
				}
				
				//计算手续费
				var commission = 0;
				if(money >= 5 && money <= 100){
					commission = 4;
				}else if(money >= 101 && money <= 1000){
					commission = 3;
				}else if(money >= 1001 && money <= 5000){
					commission = 2;
				}else if(money > 5000){
					commission = 1;
				}
				
				$('#commissionSpan').html(commission);
				$('#commissionInput').val(commission);
				
				//显示实际到账
				var arrivalmoney = money - commission;
				$('#arrivalmoneySpan').html(arrivalmoney);
				$('#arrivalmoneyInput').val(arrivalmoney);
			});
			
			
			$('#btn-submit').click(function(){
				$.ajax({
					type : 'get',
					 url : basePath + 'front/buyer/money/doWithdrawals.htm',
					data : $('#submitForm').serialize(),
					dataType : 'json',
					success : function(result){
						if(result.success){
							top.layer.msg('提现申请已提交');
							$('#submitForm')[0].reset();
						}else{
							top.layer.msg(result.msg);
						}
					}
				}); 
			});
		});
		
		function addAccountCard(){
			var url = '${basePath}front/buyer/money/addBankCard.htm';
			layerPromptIframe(url, '添加银行卡', oprSuccess,'no',800,640);
		}
		
		function oprSuccess(){
			top.layer.alert('操作成功');
			$('#searchForm').submit();
		}
		
		/**
		* 显示提现到账预计时间 type:1 24小时   2 2小时
		*/
		function change24Time(){
			var addtime = 24*3600*1000; //24小时毫秒数  
			var curtime = new Date().getTime();
			var showtime = parseInt(curtime + addtime);
			var showDate = new Date(showtime);
			$('#typeTips').html('“选择正常到账” 当天首次提现不收取手续费，金额100元起，当日第二次以后每次收取1元手续费，现在提现预计<span class="orange" id="showTimeSpan">2016年06月28日12点</span>到账。另：周日不处理提现。');
			$('#showTimeSpan').html(showDate.format('yyyy年MM月dd日HH点'));
		}
		
	</script>
</head>
<body>
	<div class="workContent f-r ml20">
	<h4>
		<span class="title">银行卡提现</span>
	</h4>
	<p>
		<span class="orange">重要提示：</span>
		请确认姓名与您申请提现的银行卡的开户姓名是否一致，若不一致提现会失败！
	</p>
	
	<form method="post" class="form form-horizontal" id="submitForm">
	
	<div class="btnWrap clearfix">
		<input class="btn radius btn-secondary f-r" type="button" value="添加提现银行卡" onclick="addAccountCard();" />
		<c:forEach items="${bankcardlist}" var="bankcard">
			<input type="radio" name="account.id" value="${bankcard.id}"/>${bankcard.bank.bankname}&nbsp;${bankcard.accountno}<br/>
		</c:forEach>
	</div>
	
	<div class="moneyOrder mt10">
			<legend></legend>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">当前账户余额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange">${moneyInfo.usablebalance}</span>元
						<input type="hidden" value="${moneyInfo.usablebalance}" id="usablebalance"/>
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">提现类型：</label>
				<div class="formControls col-xs-4 col-sm-6">
					<span class="tab-tip typeSpan active" name="${fns:getDictValue('正常到账(24小时)','WithdrawlsType','')}">正常到账（24小时）</span>
					<span class="tab-tip typeSpan" name="${fns:getDictValue('快速到账(2小时)','WithdrawlsType','')}">快速到账（2小时）</span>
					<input type="hidden" name="type" id="type" value="${fns:getDictValue('正常到账(24小时)','WithdrawlsType','')}" />
				</div>
			</div>
			<div class="row cl money-list">
				<p class="tips" id="typeTips">
					“选择正常到账” 当天首次提现不收取手续费，金额100元起，当日第二次以后每次收取1元手续费，现在提现预计
					<span class="orange" id="showTimeSpan">2016年06月28日12点</span>
					到账。另：周日不处理提现。
				</p>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">提现金额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<input type="text" class="input-text" name="money" id="moneyInput"
							placeholder="提现金额" onkeydown="onlyNum();"></div>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="onShow" id="moneyLimitSpan">请输入提现金额，金额要100元起</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">手续费：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange" id="commissionSpan">0.00</span>
						元
						<input name="commission" id="commissionInput" type="hidden" value=""/>
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">实际到账金额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange" id="arrivalmoneySpan">0.00</span>
						元
						<input name="arrivalmoney" id="arrivalmoneyInput" type="hidden" value=""/>
					</span>
				</div>

			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">交易密码：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<input type="password" class="input-text" placeholder="请输入交易密码" name="paypassword"/></div>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="onFocus onError">请输入交易密码,默认为登录密码。</span>
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-2 col-sm-4 btnWrap">
					<input class="btn radius btn-secondary btn-ti" id="btn-submit" type="button" value="提现"></div>
			</div>
		
		<div class="moneyTips black-remind">
			<i></i>
			<h5>温馨提示：</h5>
			<p class="orange">什么时候处理提现呢，多久到账？</p>
			<p>
				“正常到账”提现，我们在（周一 ~ 周六）上午11点由专人负责处理这时间点之前所有的提现申请，处理提现正常情况下1个小时内到账，法定节日、周日不处理提现；“快速到账”规则见第3点说明。
			</p>
			<p class="orange">为什么提现说：信息不符？</p>
			<p>
				此类情况分为两种，一是提现预留的真实姓名跟银行开户姓名不符，第二类是不支持信用卡提现，提现资金来源必须是接手任务。如有任何问题请及时联系我们
			</p>
			<p class="orange">快速提现规则说明</p>
			<p>
				为方便各为买家加快提现速度，特推出快速提现功能供各位买家选择。“快速提现”提现时请在工作时间（周一至周五9：00-17：00）内申请，否则不能2小时到账。
			</p>
			<p>提现手续费：</p>
			<p>5元-100元：每次4元；</p>
			<p>101元-1000元：每次3元；</p>
			<p>1001元-5000元：每次2元；</p>
			<p>5000元以上：每次1元；</p>
		</div>
	</div>
	
	</form>
</div>
</body>
</html>