<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>申请提现</title>
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
	<div class="btnWrap clearfix">
		<input class="btn radius btn-secondary f-r" type="button" value="添加提现银行卡" id="addCar"></div>
	<div class="moneyOrder mt10">
		<form action="" method="post" class="form form-horizontal" id="demoform-1">
			<legend></legend>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">当前账户余额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange">0.00</span>
						元
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">提现类型：</label>
				<div class="formControls col-xs-4 col-sm-6">
					<span class="tab-tip">正常到账（24小时）</span>
					<span class="tab-tip">快速到账（2小时）</span>
				</div>
			</div>
			<div class="row cl money-list">
				<p class="tips">
					“选择正常到账” 当天首次提现不收取手续费，金额100元起，当日第二次以后每次收取1元手续费，现在提现预计
					<span class="orange">2016年06月28日12点</span>
					到账。另：周日不处理提现。
				</p>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">提现金额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<input type="text" class="input-text" autocomplete="off" placeholder="提现金额"></div>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="onShow">请输入提现金额，金额要100元起</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">手续费：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange">0.00</span>
						元
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">实际到账金额：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="text">
						<span class="orange">0.00</span>
						元
					</span>
				</div>

			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3">交易密码：</label>
				<div class="formControls col-xs-2 col-sm-3">
					<input type="password" class="input-text" autocomplete="off" placeholder="请输入交易密码"></div>
				<div class="formControls col-xs-2 col-sm-3">
					<span class="onFocus onError">请输入交易密码,默认为登录密码。</span>
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-2 col-sm-4 btnWrap">
					<input class="btn radius btn-secondary btn-ti" type="submit" value="提现"></div>
			</div>
		</form>
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
</div>
<script>

$(function(){
	layer.config({
	    extend: ['skin/layerSkinExtend.css'], //加载新皮肤
	    skin: 'layer-ext-myskin' //一旦设定，所有弹层风格都采用此主题。
	});
	 $('#addCar').on('click',function(){
            indexAgency=top.layer.open({
                type:2,
                area:['600px','600px'],
                closeBtn:1,
                shadeClose:true,
                content:['./添加银行卡(弹窗).html','no'],
                title:'添加银行卡',
                btn:['确定','取消'],
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
        });
});
</script>
</body>
</html>