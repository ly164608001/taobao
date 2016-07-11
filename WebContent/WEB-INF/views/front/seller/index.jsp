<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>首页</title>
</head>
<body>

<%@include file="/WEB-INF/views/front/seller/header.jsp" %>

<section class="container mt50">
<div class="panel panel-default panel-tips mt20">
	<div class="panel-header">重要说明</div>
	<div class="panel-body">
		<p>
			1、商家发任务请及时到本平台审核和处理，在默认时间内操作不会多支付旺点给买家，超出默认时间，
			<span class="orange">每超过12小时多支付2个旺点</span>
			，请在默认的时间内操作和审核；
		</p>
		<p>
			2、任务【
			<span class="blue">接手方已付款，等待商家审核</span>
			】默认审核时间：24小时。任务有超时会补偿旺点给买家（
			<span class="orange">
				<span class="orange">每超出12小时补偿2个旺点</span>
			</span>
			）；
		</p>
		<div class="showHide">
			<p>
				3、任务【
				<span class="blue">确认付款，等待商家发货</span>
				】默认审核时间：
				<span class="blue">4小时</span>
				，超过时间自动发货；
			</p>
			<p>
				4、任务【
				<span class="blue">确认收货好评，完成任务</span>
				】默认审核时间：
				<span class="blue">24小时</span>
				。如果再超过24小时还未审核，即在48小时未审核，系统将自动返款(本金和佣金)给买家，请商家及时审核，出现相关问题后果自负。任务有超时会补偿旺点给买家（
				<span class="orange">每超出12小时补偿2个旺点</span>
				）；
			</p>
			<p>
				5、
				<商家span class="blue">发布的任务价格为实际下单价格</商家span>
				，禁止和店铺优惠券、红包等优惠信息一起使用，否则后果自行承担；
			</p>
			<p>
				6、快递物流出现卡住或没有物流信息的情况，淘宝上发货超过8天，即第8天应允许买家在淘宝确认收货和好评，这种情况不算买家提前收货，请商家选择好的快递公司；
			</p>
			<p>
				7、在任务【
				<span class="blue">接手方已付款，等待商家审核</span>
				】的商家审核步骤，请商家严格审查买家付款信息(订单号、买家旺旺号)等信息 ，如出现不一致，请马上提起申诉，否则后续出现相关问题后果自负。比如：❶、出现接单旺旺号与店铺实际下单旺旺号不一致，但您也给审核通过了，导致后面您真实发货，后果自负；❷、出现买家在旺旺刷平台回填的订单号与店铺实际下单的订单号不一致，但您也给审核通过了，导致后面您真实发货，后果自负。任务有超时审核会补偿旺点给买家（
				<span class="orange">每超出12小时补偿2个旺点</span>
				）；
			</p>
			<p>
				8、在任务【
				<span class="blue">确认收货好评，完成任务</span>
				】的商家审核步骤，请商家严格审查买家是否确认收货和好评等 ，若买家未按要求完成，请马上提起申诉，否则后续出现相关问题后果自负；
			</p>
			<p>
				9、买家未按商家要求做任务（如未收货未好评、使用淘宝客、信用卡支付等），商家可以投诉，平台只受理未完成任务的投诉，任务完成不再受理；
			</p>
			<p>
				10、【重点提示】 若商家的账户余额不足（
				<span class="blue">
					余额
					< 0元</span>
						），还有进行中的任务，需要商家审核的步骤【
						<span class="blue">接手方已付款，等待商家审核</span>
						】、【
						<span class="blue">确认收货好评，完成任务</span>
						】，商家未在默认
						<span class="blue">24小时</span>
						内审核，超时的任务自动审核通过，若后续出现相关问题商家后果自行承担！
					</p>
				</div>
				<div class="checkShow">
					<label for="checkshow">
						<input type="checkbox" name="checkshow" id="checkshow">&nbsp;下次不再自动展开</label>
				</div>
			</div>
		</div>
		<div class="tiro-control">
			<span class="click-btn open-btn">
				收缩
			</span>
			<!--  <span class="click-btn open-btn">
			收缩
			<i></i>
		</span>
		-->
	</div>
</section>
<section class="container taobaoData">
	<div class="title cl">
		<h4 class="f-l">淘宝统计概况</h4>
		<div class="f-r title-sel">
			<a href="#" class="active">今日</a>
			<a href="#">昨日</a>
			<a href="#">周</a>
			<a href="#">月</a>
			<div class="f-r title-sel clearfix">
				<span class="f-l">按日期删选：</span>
				<div class="clearfix timeAlone f-l"></div>
			</div>
		</div>
	</div>
	<div class="cl" id="meminfo">
		<div class="count_tab">
			<ul class="taobao cl dis">
				<li>
					<div class="count_block">
						<dl class="cl blue">
							<h2>PC单</h2>
							<dt tg="pctasknum">
								<label>任务总数</label> <em>5</em>
							</dt>
							<dd tg="pctaskpoint">
								<label>支付佣金</label> <em>29.99</em>
							</dd>
						</dl>
						<p tg="pctaskpointpj">
							单任务平均佣金
							<span>6</span>
							元
						</p>
					</div>
				</li>
				<li>
					<div class="count_block">
						<dl class="clearfix blue">
							<h2>无线单</h2>
							<dt tg="mobiletasknum">
								<label>任务总数</label>
								<em>0</em>
							</dt>
							<dd tg="mobiletaskpoint">
								<label>支付佣金</label>
								<em>0</em>
							</dd>
						</dl>
						<p tg="mobiletaskpointpj">
							单任务平均佣金
							<span>0</span>
							元
						</p>
					</div>
				</li>
				<li>
					<div class="count_block">
						<dl class="clearfix blue">
							<h2>PC流量单</h2>
							<dt tg="flowtasknum">
								<label>任务总数</label>
								<em>0</em>
							</dt>
							<dd tg="flowtaskpoint">
								<label>支付佣金</label>
								<em>0</em>
							</dd>
						</dl>
						<p tg="pcflowtaskpointpj">
							单任务平均佣金
							<span>0</span>
							元
						</p>
					</div>
				</li>
				<li>
					<div class="count_block">
						<dl class="clearfix blue">
							<h2>无线流量单</h2>
							<dt tg="flowmobiletasknum">
								<label>任务总数</label>
								<em>0</em>
							</dt>
							<dd tg="flowmobiletaskpoint">
								<label>支付佣金</label>
								<em>0</em>
							</dd>
						</dl>
						<p tg="pcflowmobiletaskpointpj">
							单任务平均佣金
							<span>0</span>
							元
						</p>
					</div>
				</li>
				<li>
					<div class="count_block">
						<dl class="clearfix orange">
							<h2>消费总额</h2>
							<dt tg="tasknum">
								<label>任务总数</label>
								<em>5</em>
							</dt>
							<dd tg="taskpoint">
								<label>支付佣金</label>
								<em>29.99</em>
							</dd>
						</dl>

					</div>
				</li>
			</ul>
		</div>
	</div>
</section>
<section class="container taobaoData jdData">
	<div class="title cl">
		<h4 class="f-l">京东统计概况</h4>
		<div class="f-r title-sel clearfix">
			<span class="f-l">按日期删选：</span>
			<div class="clearfix timeAlone f-l"></div>
		</div>
	</div>
	<div class="cl">
		<div class="count_tab">
			<ul class="jd clearfix">
				<li>
					<div class="count_block blue">
						<h2>完成任务数（个）</h2>
						<p tg="tasknum">0</p>
					</div>
				</li>
				<li>
					<div class="count_block blue">
						<h2>商品担保金（元）</h2>
						<p tg="taskmoney">0</p>
					</div>
				</li>
				<li>
					<div class="count_block blue">
						<h2>支付佣金（元）</h2>
						<p tg="taskpointyj">0</p>
					</div>
				</li>
				<li>
					<div class="count_block orange">
						<h2>账户余额（元）</h2>
						<p tg="balance">1491.53</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
</section>
<section class="container">
	<div class="cl count_frame mt30 mb10">
		<div class="count_left">
			<div class="task_count_tit">
				<div class="panel panel-default">
					<div class="panel-header cl">
						<h5 class="f-l">近30天任务趋势</h5>
						<div class="f-r">
							<input type="text" id="d4311" placeholder="开始时间" class="input-text radius size-M Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})">
							至
							<input type="text" id="d4312" placeholder="结束时间" class="input-text radius size-M Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})">
							<input class="btn btn-primary radius btn-orange" type="button" value="确定"></div>
					</div>
					<div class="panel-body">面板图标</div>
				</div>
			</div>
		</div>
		<div class="count_right f-r">
			<div class="noticeWrap">
				<div class="notice">
					<div class="notice_tit">
						<h2 class="selected">网站公告</h2>
						<span class="f-r">
							<a href="#" target="_blank">更多</a>
						</span>
					</div>
				</div>
				<div class="notice_tab">
					<ul class="dis">
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l"> <b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l"> <b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l">
								<b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="noticeWrap mt50">
				<div class="notice">
					<div class="notice_tit">
						<h2 class="selected">网站公告</h2>
						<span class="f-r">
							<a href="#" target="_blank">更多</a>
						</span>
					</div>
				</div>
				<div class="notice_tab">
					<ul class="dis">
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l">
								<b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l">
								<b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
						<li class="cl">
							<em class="f-r">2016-06-17</em>
							<a href="#" title="关于平台上线“多链接”、“搜A拍B”及商家自动审核等功能通知" target="_blank" class="f-l">
								<b>关于平台上线“多链接”、“搜A拍B...</b>
								<s class="new"></s>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</section>

<%@include file="/WEB-INF/views/front/seller/footer.jsp" %>
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=270863798&site=qq&menu=yes" id="QQ-link">
	<img border="0" src="http://wpa.qq.com/pa?p=2:270863798:53" alt="点击这里给我发消息" title="点击这里给我发消息"/>
</a>

<script>


$(function(){
	// 收缩
	$('.open-btn').on('click',function(){
		$(this).parent('.tiro-control').siblings('.panel').find('.showHide').slideToggle();
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).text('展开');
			$(this).css('background-position','52px -24px');
		}else{
			$(this).text('收缩');
			$(this).css('background-position','52px 11px');
		}
	});

	// 弹出提示
    indexAgency= top.layer.open({
            type:2,
            area:['900px','550px'],
            shadeClose:true,
            content:['${basePath}front/buyer/tip.htm','no'],
            btn:'确定',
            title:'重点说明(30秒后自动关闭)',
            time:30000,
            yes:function(index){
                layer.close(indexAgency);
            }
        }); 
	
});
</script>
</body>
</html>